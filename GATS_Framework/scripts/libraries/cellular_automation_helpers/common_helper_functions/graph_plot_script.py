import os
import re
import xlsxwriter
import automation_helpers.globalconstants as gc


def search1(message):
    """ Searching message type and
    returning the timestamp or throughput """
    result = []
    try:
        f = open("{2}/client_{0}_{1}.txt".format(gc.TCP_UDP, gc.IPERF_TYPE, gc.IMAGE_FOLDER), "r")
    except IOError:
        print("File does not exist!!!!!")
    else:
        for l in f:
            if "sender" not in l and "receiver" not in l:
                if (message == "Interval"):
                    res = re.findall("\d{1,2}\.\d{2}-\d{1,2}\.\d{2}", l)
                    result.extend(res)
                else:
                    res = re.findall("\d*\.\d+ KBytes | \d+ KBytes | \d*\.\d+ MBytes | \d+ MBytes | \d+ Bytes", l,
                                     flags=0)
                    if (res != []):
                        if ("MBytes" in res[0]):
                            res = res[0].split()
                            res = float(res[0])
                        elif ("KBytes" in res[0]):
                            res = res[0].split()
                            res = float(res[0]) / 1000
                        elif ("Bytes" in res[0]):
                            res = res[0].split()
                            res = float(res[0]) / 1000000
                        # Converting MBtes to MBits
                        res = res * 8
                        result.append(res)
        f.close()
        return result


def workbook_creation():
    """ Creating and returning excel workbook """
    return xlsxwriter.Workbook(
        '{2}/throughput_{0}_{1}.xlsx'.format(gc.TCP_UDP, gc.IPERF_TYPE, gc.IMAGE_FOLDER))


def sheet_creation(workbook, sheet_name):
    """ Creating and returning sheet for each message """
    worksheet = workbook.add_worksheet(sheet_name)
    worksheet.set_column('A:C', 90)
    worksheet.set_row(0, 30)

    worksheet.set_column('A:A', 13)
    worksheet.set_column('B:B', 30)
    worksheet.set_column('C:C', 30)

    bold = workbook.add_format({'bold': 1, 'align': 'center'})

    headings = ['Iteration', 'Interval', 'Transfer_in_MBites']
    worksheet.write_row('A1', headings, bold)
    return worksheet


def sheet_update(workbook, msg_type1, msg_type2, sheet_name):
    """ Filling the sheet with start and
    end time of each message and calculating
    the average of time interval"""

    worksheet = sheet_creation(workbook, sheet_name)
    bold = workbook.add_format({'bold': 1, 'align': 'right'})
    center = workbook.add_format({'align': 'center'})
    Interval = search1(msg_type1)
    Transfer = search1(msg_type2)
    row = 1
    col = 0
    # for i in range(len(Transfer)):0
    for i in range(30):
        worksheet.write(row + i, col, i + 1, center)
        worksheet.write(row + i, col + 1, Interval[i], center)
        worksheet.write(row + i, col + 2, Transfer[i], center)
