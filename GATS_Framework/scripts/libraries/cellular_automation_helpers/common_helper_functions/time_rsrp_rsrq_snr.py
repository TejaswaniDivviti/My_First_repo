import re
import xlsxwriter
import xlrd
import itertools
import sys
import automation_helpers.globalconstants as gc


def search_cqi_snr(msg_type1, msg_type2):
    """ Searching message type and
    returning the timestamp or throughput """
    snr = []
    snr_value = 0
    cqi_cw0 = []

    try:
        f = open(f"{gc.IMAGE_FOLDER}/{gc.DEVICE_NAME}/qxdm_logs.txt", "r")
    except:
        print("File does not exist!!!!!")
    else:

        for l in f:
            if msg_type2 in l:
                res = l.split("=")[1].strip()
                res = res.split(" ")[0].strip()
                snr_value = res
            elif msg_type1 in l:
                res = l.split("=")[1].strip()
                cqi_cw0.append(res)
                snr.append(snr_value)
            else:
                pass
        f.close()
        return (cqi_cw0, snr)

def search_cqi_RSRP(msg_type1, msg_type2):

    b = search_rsrp_snr_rsrq("Filtered RSRP", "Filtered RSRQ", "FTL SNR Rx[0]")
    rsrp = b[1]
    a= search_cqi_snr("CQI CW0", "FTL SNR Rx[0]")
    cqi_cw0 = a[0]
    return (cqi_cw0, rsrp)

def search_cqi_mcs(msg_type1, msg_type2):
    """ Searching message type and
    returning the timestamp or throughput """
    mcs = []
    mcs_count = 0
    cqi_count = 0
    subframe = 0
    sfn = 0
    cqi_flag = 0
    l1 = 0
    l2 = 0
    l3 = 0
    l4 = 0
    l5 = 0
    cqi_cw0 = []

    try:
        # file1 = "combined_result_TCP_UL(2)_1.txt"
        f = open(f"{gc.IMAGE_FOLDER}/{gc.DEVICE_NAME}/qxdm_logs.txt")
    except:
        print("File does not exist!!!!!")
    else:
        for l in f:

            if "0xB14D" in l and cqi_flag == 0:
                for i in range(2):
                    l2 = next(f)

                subframe = l2.split("=")[1].strip()
                l3 = next(f)

                sfn = l3.split("=")[1].strip()
                if int(sfn) == 1023:
                    sfn = int(sfn) - 1
                
                for i in range(5):
                    l4 = next(f)
                   
                    res = l4.split("=")[1].strip()
                    if msg_type1 in l4:
                        cqi_cw0.append(res)
                        cqi_flag = 1
                        cqi_count += 1
            elif "0xB173" in l and cqi_flag != 0:
                # print("codeword", l)
                for i in range(10):
                    l1 = next(f)
                    # print("range of l1", l1)

                for l1 in f:
                    
                    if l1 == "\n":
                        break

                    # print("Matching ,..........................",subframe, l1.split("|")[2].strip() )
                    if subframe == l1.split("|")[2].strip():
                        import pdb;pdb.set_trace()
                        # print("matched subframe :", int(sfn)+1, int(l1.split("|")[3].strip()))
                        if (int(sfn) + 1) < int(l1.split("|")[3].strip()):
                            cqi_flag = 0
                        elif (int(sfn) + 1) == int(l1.split("|")[3].strip()):
                            # print("inside matched sfn ", l1, l1.split("|")[12].strip())
                            if (l1.split("|")[12].strip() == "C"):
                                
                                l1 = l1.split("|")[17].strip()
                                mcs.append(l1)
                                cqi_flag = 0
                                mcs_count += 1
                                break
            else:
                pass
        f.close()
        return (mcs, cqi_cw0)

def search_rsrp_snr_rsrq(msg_type1, msg_type2, msg_type3):
    """ Searching message type and
    returning the Value """
    time = []
    rsrp = []
    rsrq = []
    snr = []
    try:
        f = open(f"{gc.IMAGE_FOLDER}/{gc.DEVICE_NAME}/qxdm_logs.txt", "r")
    except:
        print("File does not exist!!!!!")
    else:
        for l in f:
            if "0xB193" in l:
                res = re.findall(r'\d{1,2}\:\d{1,2}\:\d{1,2}\.\d{3,6}', l)
                time.append(str(res[0]))
                for i in range(26):
                    l = next(f)

                if msg_type1 in l:
                    res = l.split("=")[1].strip()
                    res = res.split(" ")[0].strip()
                    rsrp.append(res)

                for i in range(6):
                    l = next(f)

                if msg_type2 in l:
                    res = l.split("=")[1].strip()
                    res = res.split(" ")[0].strip()
                    rsrq.append(res)

                for i in range(7):
                    l = next(f)

                if msg_type3 in l:
                    res = l.split("=")[1].strip()
                    res = res.split(" ")[0].strip()
                    snr.append(res)
            else:
                pass
        print(time,rsrp,rsrq,snr)
        return (time, rsrp, rsrq, snr)


def workbook_creation(name):
    """ Creating and returning excel workbook """
    return xlsxwriter.Workbook('{0}/{1}.xlsx'.format(gc.IMAGE_FOLDER,name))


def sheet_creation(workbook, sheet_name, headings):
    """ Creating and returning sheet for each message """
    worksheet = workbook.add_worksheet(sheet_name)
    worksheet.set_column('A:C', 70)
    worksheet.set_row(0, 30)

    worksheet.set_column('A:A', 13)
    worksheet.set_column('B:B', 20)
    worksheet.set_column('C:C', 20)
    worksheet.set_column('D:D', 20)
    worksheet.set_column('E:E', 20)

    bold = workbook.add_format({'bold': 1, 'align': 'center'})

    worksheet.write_row('A1', headings, bold)

    return worksheet

def sheet_update_CQI_RSRP(workbook, sheet_name, msg_type1, msg_type2):
    """ Filling the sheet with start and
    end time of each message"""
    headings = ['Iteration', 'CQI', 'RSRP']
    worksheet = sheet_creation(workbook, sheet_name, headings)
    bold = workbook.add_format({'bold': 1, 'align': 'right'})
    center = workbook.add_format({'align': 'center'})

    cqi, rsrp = search_cqi_RSRP(msg_type1, msg_type2)

    row = 1
    col = 0

    for (a, b) in itertools.zip_longest(cqi, rsrp):
        worksheet.write(row, col, row, center)

        worksheet.write(row, col + 1, a, center)

        worksheet.write(row, col + 2, b, center)

        row += 1


def sheet_update_cqi_snr(workbook, sheet_name, msg_type1, msg_type2):
    """ Filling the sheet with start and
    end time of each message"""
    headings = ['Iteration', 'cqi', 'SNR']
    worksheet = sheet_creation(workbook, sheet_name, headings)
    bold = workbook.add_format({'bold': 1, 'align': 'right'})
    center = workbook.add_format({'align': 'center'})

    cqi, snr = search_cqi_snr(msg_type1, msg_type2)

    row = 1
    col = 0

    for (a, b) in itertools.zip_longest(cqi, snr):
        worksheet.write(row, col, row, center)

        worksheet.write(row, col + 1, a, center)

        worksheet.write(row, col + 2, b, center)

        row += 1


def sheet_update_rsrp_rsrq_snr(workbook, sheet_name, msg_type1, msg_type2, msg_type3):
    """ Filling the sheet with start and
    end time of each message"""
    headings = ['Iteration', 'time', 'RSRP', 'RSRQ', 'SNR']
    worksheet = sheet_creation(workbook, sheet_name, headings)
    bold = workbook.add_format({'bold': 1, 'align': 'right'})
    center = workbook.add_format({'align': 'center'})
    time, RSRP, RSRQ, SNR = search_rsrp_snr_rsrq(msg_type1, msg_type2, msg_type3)
    row = 1
    col = 0
    
    for (a, b, c, d) in itertools.zip_longest(time, RSRP, RSRQ, SNR):
        worksheet.write(row, col, row, center)

        worksheet.write(row, col + 1, a, center)

        worksheet.write(row, col + 2, b, center)

        worksheet.write(row, col + 3, c, center)

        worksheet.write(row, col + 4, d, center)

        row += 1


def search_rsrp_snr_rsrq(msg_type1, msg_type2, msg_type3):
    """ Searching message type and
    returning the Value """
    time = []
    rsrp = []
    rsrq = []
    snr = []
    try:
        f = open(f"{gc.IMAGE_FOLDER}/{gc.DEVICE_NAME}/qxdm_logs.txt", "r")
    except:
        print("File does not exist!!!!!")
    else:
        for l in f:
            if "0xB193" in l:
                res = re.findall(r'\d{1,2}\:\d{1,2}\:\d{1,2}\.\d{3,6}', l)
                time.append(str(res[0]))
                for i in range(27):
                    l = next(f)

                if msg_type1 in l:
                    res = l.split("=")[1].strip()
                    res = res.split(" ")[0].strip()
                    rsrp.append(res)

                for i in range(6):
                    l = next(f)
                if msg_type2 in l:
                    res = l.split("=")[1].strip()
                    res = res.split(" ")[0].strip()
                    rsrq.append(res)

                for i in range(7):
                    l = next(f)

                if msg_type3 in l:
                    res = l.split("=")[1].strip()
                    res = res.split(" ")[0].strip()
                    snr.append(res)
            else:
                pass
 
        return (time, rsrp, rsrq, snr)

def sheet_update_mcs_cqi(workbook, sheet_name, msg_type1, msg_type2):
    """ Filling the sheet with start and
    end time of each message"""
    headings = ['Iteration', 'MCS', 'CQI']
    worksheet = sheet_creation(workbook, sheet_name, headings)
    bold = workbook.add_format({'bold': 1, 'align': 'right'})
    center = workbook.add_format({'align': 'center'})
    MCS, CQI = search_cqi_mcs(msg_type1, msg_type2)
    row = 1
    col = 0

    for (a, b) in itertools.zip_longest(MCS, CQI):
        worksheet.write(row, col, row, center)

        worksheet.write(row, col + 1, a, center)

        worksheet.write(row, col + 2, b, center)

        row += 1
