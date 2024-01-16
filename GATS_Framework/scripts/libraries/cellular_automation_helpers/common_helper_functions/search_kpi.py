import re 
import statistics 
import math
import os
import cellular_automation_helpers.common_helper_functions.adb_command_functions as ad
#file1 = "TCP_DL.txt"
#file2 = "TCP_UL.txt"   
file1 = "oppo_reno_ue_logs.txt"
file2 = "oppo_reno_ue_logs.txt"

def cqi_rsrp(msg_type1, msg_type2):
    """ Searching message type and
    returning the timestamp or throughput """
    time=[]
    rsrp=[]
    cqi_cw0=[]
    rsrp_value = 0 
    try:
        f = open("./../../Inputs/{}".format(file1),"r")
    except :
        ad.error_json("errorCode_54")
        #print("File does not exist!!!!!"
    else:

        for l in f:
            if "0xB193" in l :

                res_time = re.findall(r'\d{1,2}\:\d{1,2}\:\d{1,2}\.\d{3,6}', l)
                for i in range(27):
                    l = next(f)

                if msg_type2 in l:

                    res = l.split("=")[1].strip()

                    rsrp_value = res.split(" ")[0].strip()

            elif msg_type1 in l:    

                res = l.split("=")[1].strip()

                if rsrp_value != 0 :
                    time.append(str(res_time[0]))

                    cqi_cw0.append(res)

                    rsrp.append(rsrp_value)

            else :

                pass

        f.close()

        return (time, cqi_cw0, rsrp)

def snr_rsrp(msg_type1, msg_type2):
    """ Searching message type and
    returning the Value """
    snr= []
    rsrp=[] 
    time = []    
    try:


        # f = open("./../../Inputs/{}".format(file1),"r")
        f = open("result_4.txt", "r")
        print(file1)
    except:
        ad.error_json("errorCode_54")

    else:
        for l in f:
            if "0xB193" in l :

                res_time = re.findall(r'\d{1,2}\:\d{1,2}\:\d{1,2}\.\d{3,6}', l)
                list_of_strings = []
                for i in range(27):
                    l = next(f)
                    list_of_strings.append(l)
                    print(list_of_strings)
                if msg_type2 in l:

                    res = l.split("=")[1].strip()
                    res1 = res.split(" ")[0].strip()
                    for i in range(13) :
                        l = next(f)

                    if msg_type1 in l:
                        res = l.split("=")[1].strip()
                        res = res.split(" ")[0].strip()
                        #if res not in snr and res1 not in rsrp:
                        time.append(str(res_time[0]))
                        rsrp.append(res1)
                        snr.append(res)
                    else:
                        break
                else:
                    pass
        f.close()
        return (time, snr, rsrp)

def cqi_snr(msg_type1, msg_type2):
    """ Searching message type and
    returning the timestamp or throughput """
    snr=[]
    snr_value = 0
    cqi_cw0=[]
    time=[]
    #res_time = ""
    try:
        f = open("./../../Inputs/{}".format(file1),"r")
    except:
        ad.error_json("errorCode_54")

    else:
    
        for l in f:
            if "0xB193" in l :
    
                res_time = re.findall(r'\d{1,2}\:\d{1,2}\:\d{1,2}\.\d{3,6}', l)
                for i in range(40):
                    l = next(f)

                if msg_type2 in l:
                    res = l.split("=")[1].strip()
                    res = res.split(" ")[0].strip()
                    snr_value = res
                    time.append(str(res_time[0]))
            elif msg_type1 in l:
                res = l.split("=")[1].strip()

                if res not in cqi_cw0 or snr_value not in snr:
                    cqi_cw0.append(res)
                    snr.append(snr_value)
            else:
                pass
        f.close()
        return (time, cqi_cw0, snr)
        
def snr_rsrq(msg_type1, msg_type2):
    """ Searching message type and
    returning the Value """
    rsrq= []
    snr=[]
    time = []
    try:
        f = open("./../../Inputs/{}".format(file1),"r")
    except:
        ad.error_json("errorCode_54")

    else:
        for l in f:
            if "0xB193" in l :
                res_time = re.findall(r'\d{1,2}\:\d{1,2}\:\d{1,2}\.\d{3,6}', l)
                for i in range(33):
                    l = next(f)
                if msg_type2 in l:
                    res = l.split("=")[1].strip()
                    res1 = res.split(" ")[0].strip()
                    for i in range(7) :
                        l = next(f)  
                    #print(l) 
                    if msg_type1 in l:
                        res = l.split("=")[1].strip()
                        res = res.split(" ")[0].strip()
                        #print(res, res1)
                        #if res not in snr or res1 not in rsrq:
                        time.append(str(res_time[0]))
                        snr.append(res)
                        rsrq.append(res1)
                    else:
                        pass
                else:
                    pass
        f.close()
        #print(rsrq, snr)
        return (time, snr, rsrq)
        
def rsrp_mcs(msg_type1):
    """ Searching message type and
    returning the timestamp or throughput """
    mcs=[]
    mcs_count = 0
    rsrp_count = 0
    subframe=0
    sfn=0
    rsrp_flag=0
    l1=0
    l2=0
    l3=0
    l4=0
    l5=0
    rsrp=[]
    rsrp_list = []
    try:
        f = open("./../../Inputs/{}".format(file1),"r")
    except:
        ad.error_json("errorCode_54")

        for l in f:
            if "0xB193" in l :
                for i in range(15) :
                    l2 = next(f)
                sfn = l2.split("=")[1].strip()
                l3 = next(f)
                subframe = l3.split("=")[1].strip()
                if int(sfn) == 1023:
                    sfn = int(sfn) - 1
                for i in range(11) :
                    l4 = next(f)
                if msg_type1 in l4:
                    res = l4.split("=")[1].strip()
                    rsrp_value = res.split(" ")[0].strip()
                    rsrp_list.append(rsrp_value)
                    rsrp_flag =1
                    rsrp_count += 1
            elif "0xB173" in l and rsrp_flag != 0 :
                for i in range(10) :
                    l1 = next(f)
                for l1 in f:
                    if l1 == "\n" :
                        break
                    if subframe == l1.split("|")[2].strip():
                        
                        if (int(sfn)+1) == int(l1.split("|")[3].strip()):
                            if(l1.split("|")[13].strip() == "C") :
                                l1 = l1.split("|")[19].strip()
                                if rsrp_value in rsrp:
                                    rsrp_flag = 0
                                    pass
                                else:
                                    mcs.append(l1)
                                    rsrp.append(rsrp_value)
                                rsrp_flag = 0
                                mcs_count += 1                  
                                break
                        else:
                            rsrp_flag = 0
                            pass
            else:
                pass
        f.close()
        return (rsrp, mcs)
        
def cqi_mcs(msg_type1, msg_type2):
    """ Searching message type and
    returning the timestamp or throughput """
    mcs=[]
    mcs_count = 0
    cqi_count = 0
    subframe=0
    sfn=0
    cqi_flag=0
    l1=0
    l2=0
    l3=0
    l4=0
    l5=0
    cqi_cw0=[]

    try:
        f = open("./../../Inputs/{}".format(file1),"r")
        #print("Entering-------------------------------")
    except:
        ad.error_json("errorCode_54")

    else:
        #print("enrering")
        for l in f:

            if "0xB14D" in l and cqi_flag == 0:
                for i in range(3) :
                    l2 = next(f)
                #print (l2)
                subframe = l2.split("=")[1].strip()
                l3 = next(f)

                sfn = l3.split("=")[1].strip()
                if int(sfn) == 1023:
                    sfn = int(sfn) - 1
                for i in range(4) :
                    l4 = next(f)
                    res = l4.split("=")[1].strip()
                    if msg_type1 in l4:
                        cqi_flag =1
                        cqi_count += 1
            elif "0xB173" in l and cqi_flag != 0 :

                for i in range(12) :
                    l1 = next(f)

                for l1 in f:

                    if l1 == "\n" :

                        break


                    if subframe == l1.split("|")[2].strip():

                        if (int(sfn)+1) < int(l1.split("|")[3].strip()):
                            cqi_flag = 0
                        elif (int(sfn)+1) == int(l1.split("|")[3].strip()):
                            if(l1.split("|")[13].strip() == "C") :
                                l1 = l1.split("|")[19].strip()
                                cqi_cw0.append(res)
                                mcs.append(l1)
                                cqi_flag = 0
                                mcs_count += 1
                                break
            else:
                pass
        f.close()
        return (cqi_cw0, mcs)

def snr_ul_thrpt(msg_type1, iperf_rsrp):
    """ Searching message type and
    returning the timestamp or throughput """
    rsrp_value=0
    l1=0
    l2=0
    l3=0
    l4=0
    l5=0
    snr=[]
    ref_rsrp = []
    count = 1 
    rsrp = int(iperf_rsrp[0])
    snr_values = []
    end_rsrp = 0
    rsrp_matched = 0

    try:
        f = open("./../../Inputs/{}".format(file2),"r")
    except:
        ad.error_json("errorCode_54")

        #print("File does not exist!!!!!")
    else:
        for l in f:
            if "0xB193" in l:
                for i in range(27) :
                    l2 = next(f)
                if "Filtered RSRP" in l2:
                    res = l2.split("=")[1].strip()
                    rsrp_value = res.split(" ")[0].strip()
                    rsrp_value = res.split(" ")[0].strip()
                    if rsrp_value > '-106.00':
                        ref_rsrp.append(rsrp_value)
                    rsrp_value = math.floor(float(rsrp_value))
                    if rsrp_value == rsrp or end_rsrp == rsrp_value+1 or (end_rsrp !=0 and end_rsrp > rsrp_value):
                        if(count < len(iperf_rsrp)-1):
                            rsrp_matched = 1
                            rsrp = int(iperf_rsrp[count])
                            count += 1
                        else :
                            rsrp = 0
                            end_rsrp = iperf_rsrp[count-1]
                        if snr != []:
                            snr_values.append(statistics.median(snr))
                            snr = []
                            rsrp_matched = 0
                            if end_rsrp !=0 and end_rsrp > rsrp_value:
                                snr_values.append(0)
                                break
                    elif rsrp_matched == 1 or (rsrp_value == iperf_rsrp[count-2] or end_rsrp == rsrp_value):
                        for i in range(13) :
                            l3 = next(f)
                        if msg_type1 in l3:
                            res = l3.split("=")[1].strip()
                            snr.append(float(res.split(" ")[0].strip()))
                            
                    
                    elif (count == len(iperf_rsrp)+1):
                        break      
            else:
                pass
        f.close()
        return (snr_values)

def cqi_dl_thrpt(msg_type1, iperf_rsrp):
    """ Searching message type and
    returning the timestamp or throughput """
    rsrp_value=0
    l1=0
    l2=0
    l3=0
    l4=0
    l5=0
    cqi_cw0=[]
    cqi_values = []
    rsrp_matched = 0
    rsrp = iperf_rsrp[0]
    #rsrp += 1
    count  = 1
    end_rsrp = 0
    try:
        f = open("./../../Inputs/{}".format(file1),"r")
    except:
        ad.error_json("errorCode_54")

        #print("File does not exist!!!!!")
    else:
        for l in f:
            
            if "0xB193" in l:
                for i in range(27) :
                    l2 = next(f)
                if "Filtered RSRP" in l2:
                    res = l2.split("=")[1].strip()
                    rsrp_value = res.split(" ")[0].strip()
                    rsrp_value = math.floor(float(rsrp_value))  #round(rsrpValue[1])
                    if int(rsrp_value) == int(rsrp) or end_rsrp == rsrp_value+1:
                        rsrp_matched = 1
                        if(count < len(iperf_rsrp)):
                            rsrp = iperf_rsrp[count]
                            
                            count += 1
                        else :
                            rsrp = 0
                            end_rsrp = iperf_rsrp[count-1]
                        if cqi_cw0 != []:
                            cqi_values.append(statistics.median(cqi_cw0))
                            cqi_cw0 = []
            elif "0xB14D" in l and rsrp_matched == 1 and (rsrp_value == iperf_rsrp[count-2] or end_rsrp == rsrp_value):
                for i in range(8) :
                    l2 = next(f)
                    res = l2.split("=")[1].strip()
                    if msg_type1 in l2:
                        cqi_cw0.append(int(res))
            elif (count == len(iperf_rsrp)+1):
                break
            else:
                pass
        f.close()
        return (cqi_values)

def mcs_cqi_new(msg_type1, iperf_rsrp):
    """ Searching message type and
    returning the timestamp or throughput """
    rsrp_value=0
    l1=0
    l2=0
    l3=0
    l4=0
    l5=0
    mcs=[]
    cqi = []
    ref_rsrp = []
    count = 1 
    rsrp = int(iperf_rsrp[0])
    mcs_values = []
    cqi_values = []
    end_rsrp = 0
    rsrp_matched = 0
    snr_values = []

    try:
        f = open("./../../Inputs/{}".format(file1),"r")
    except:
        ad.error_json("errorCode_54")
    else:
        for l in f:
            if "0xB193" in l:
                for i in range(27) :
                    l2 = next(f)
                if "Filtered RSRP" in l2:
                    res = l2.split("=")[1].strip()
                    rsrp_value = res.split(" ")[0].strip()
                    rsrp_value = res.split(" ")[0].strip()
                    rsrp_value = math.floor(float(rsrp_value))
                    ref_rsrp.append(rsrp_value)
                    if rsrp_value == rsrp or end_rsrp == rsrp_value+1 or (end_rsrp !=0 and end_rsrp > rsrp_value):
                        if(count <= len(iperf_rsrp)-1):
                            rsrp_matched = 1
                            rsrp = int(iperf_rsrp[count])
                            count += 1
                        else :
                            rsrp = 0
                            end_rsrp = iperf_rsrp[count-1]
                        if mcs != [] and cqi != []:
                            mcs_values.append(statistics.median(mcs))
                            cqi_values.append(statistics.median(cqi))
                            mcs = []
                            cqi = []
            elif "0xB173" in l and rsrp_matched == 1 and rsrp_value == iperf_rsrp[count-2] :
                for i in range(10) :
                    l1 = next(f)
                for l1 in f:
                    if l1 == "\n" :
                        break
                    if(l1.split("|")[13].strip() == "C") :
                        l1 = l1.split("|")[19].strip()
                        mcs.append(int(l1))
                    if end_rsrp !=0 and end_rsrp > rsrp_value:
                        snr_values.append(0)
                        break
            elif  "0xB14D" in l and rsrp_matched == 1 and (rsrp_value == iperf_rsrp[count-2] or end_rsrp == rsrp_value):
                for i in range(8) :
                    l1 = next(f)
                res = l1.split("=")[1].strip()
                cqi.append(int(res)) 
            elif (count == len(iperf_rsrp)+1):
                 break      
            else:
                pass
        f.close()
        return (cqi_values, mcs_values)

def code_rate_mcs(msg_type1, iperf_rsrp):

    """ Searching message type and

    returning the timestamp or throughput """

    rsrp_value=0

    l1=0

    l2=0

    l3=0

    l4=0

    l5=0

    mcs=[]

    code_rate = []

    ref_rsrp = []

    count = 1 

    rsrp = int(iperf_rsrp[0])

    mcs_values = []

    code_rate_values = []

    end_rsrp = 0

    rsrp_matched = 0

    snr_values = []

    try:
        f = open("./../../Inputs/{}".format(file1),"r")
    except:
        ad.error_json("errorCode_54")
    else:
        for l in f:
            if "0xB193" in l:
                for i in range(27) :
                    l2 = next(f)
                if "Filtered RSRP" in l2:
                    res = l2.split("=")[1].strip()
                    rsrp_value = res.split(" ")[0].strip()
                    rsrp_value = res.split(" ")[0].strip()
                    rsrp_value = math.floor(float(rsrp_value))
                    ref_rsrp.append(rsrp_value)
                    if rsrp_value == rsrp or end_rsrp == rsrp_value+1 or (end_rsrp !=0 and end_rsrp > rsrp_value):
                        if(count <= len(iperf_rsrp)-1):
                            rsrp_matched = 1
                            rsrp = int(iperf_rsrp[count])
                            count += 1
                        else :
                            rsrp = 0
                            end_rsrp = iperf_rsrp[count-1]
                        if mcs != [] and code_rate != []:
                            mcs_values.append(statistics.median(mcs))
                            code_rate_values.append(statistics.median(code_rate))
                            mcs = []
                            code_rate = []
            elif "0xB173" in l and rsrp_matched == 1 and rsrp_value == iperf_rsrp[count-2] :
                for i in range(10) :
                    l1 = next(f)
                for l1 in f:
                    if l1 == "\n" :
                        break
                    
                    if(l1.split("|")[13].strip() == "C") :
                        l1 = l1.split("|")[19].strip()
                        mcs.append(int(l1))
                    if end_rsrp !=0 and end_rsrp > rsrp_value:
                        snr_values.append(0)
                        break
            elif "0xB132" in l and rsrp_matched == 1 and (rsrp_value == iperf_rsrp[count-2] or end_rsrp == rsrp_value):
                for i in range(19) :
                    l1 = next(f)
                    if l1 == "\n" :
                        break
                if(l1.split("|")[6].strip() == "C") :
                    l1 = l1.split("|")[20].strip()
                    code_rate.append(float(l1))  
         
            elif (count == len(iperf_rsrp)+1):
                 break      
            else:
                pass
        f.close()
        return (mcs_values,code_rate_values)

def code_rate_snr(msg_type1, iperf_rsrp):
    """ Searching message type and
    returning the timestamp or throughput """
    rsrp_value=0
    l1=0
    l2=0
    l3=0
    l4=0
    l5=0
    snr=[]
    ref_rsrp = []
    count = 1 
    rsrp = int(iperf_rsrp[0])
    snr_values = []
    code_rate = []
    code_rate_values = []
    end_rsrp = 0
    rsrp_matched = 0

    try:
        f = open("./../../Inputs/{}".format(file2),"r")
    except:
        ad.error_json("errorCode_54")
    else:
        for l in f:
            if "0xB193" in l:
                for i in range(27) :
                    l2 = next(f)
                if "Filtered RSRP" in l2:
                    res = l2.split("=")[1].strip()
                    rsrp_value = res.split(" ")[0].strip()
                    rsrp_value = res.split(" ")[0].strip()
                    if rsrp_value > '-106.00':
                        ref_rsrp.append(rsrp_value)
                    rsrp_value = math.floor(float(rsrp_value))
                    if rsrp_value == rsrp or end_rsrp == rsrp_value+1 or (end_rsrp !=0 and end_rsrp > rsrp_value):
                        #print(iperf_rsrp, count)
                        if(count < len(iperf_rsrp)-1):
                            rsrp_matched = 1
                            rsrp = int(iperf_rsrp[count])
                            count += 1
                        else :
                            rsrp = 0
                            end_rsrp = iperf_rsrp[count-1]
                        #print("snr: {0}, code_rate: {1}".format(snr, code_rate))
                        if snr != [] and code_rate != []:
                            #print("entered===========>")
                            snr_values.append(statistics.median(snr))
                            code_rate_values.append(statistics.median(code_rate))
                            snr = []
                            code_rate = []
                            rsrp_matched = 0
                            if end_rsrp !=0 and end_rsrp > rsrp_value:
                                snr_values.append(0)
                                break
                    elif rsrp_matched == 1 and (rsrp_value == iperf_rsrp[count-2] or end_rsrp == rsrp_value):
                        for i in range(13) :
                            l3 = next(f)
                        if msg_type1 in l3:
                            res = l3.split("=")[1].strip()
                            snr.append(float(res.split(" ")[0].strip()))
                            #print("Value of SNR", snr)
            elif "0xB132" in l and rsrp_matched == 1 and (rsrp_value == iperf_rsrp[count-2] or end_rsrp == rsrp_value):
                #print("INSIDE 0XB132")
                for i in range(19) :
                    l1 = next(f)
                if l1 == "\n" :
                    break
                if(l1.split("|")[6].strip() == "C") :
                    l1 = l1.split("|")[20].strip()
                    code_rate.append(float(l1))
                    #print("Code rate value", code_rate)
            elif (count == len(iperf_rsrp)+1):
                break      
            else:
                pass
        f.close()
        return (snr_values, code_rate_values)

def snr_bler(msg_type1, iperf_rsrp):
    """ Searching message type and
    returning the timestamp or throughput """
    rsrp_value=0
    l1=0
    l2=0
    l3=0
    l4=0
    l5=0
    snr=[]
    ref_rsrp = []
    count = 1 
    rsrp = int(iperf_rsrp[0])
    snr_values = []
    end_rsrp = 0
    rsrp_matched = 0
    try:
        f = open("./../../Inputs/{}".format(file2),"r")
    except:
        ad.error_json("errorCode_54")
    else:
        for l in f:
            if "0xB193" in l:
                for i in range(27) :
                    l2 = next(f)
                if "Filtered RSRP" in l2:
                    res = l2.split("=")[1].strip()
                    rsrp_value = res.split(" ")[0].strip()
                    rsrp_value = res.split(" ")[0].strip()
                    if rsrp_value > '-106.00':
                        ref_rsrp.append(rsrp_value)
                    rsrp_value = math.floor(float(rsrp_value))
                    if rsrp_value == rsrp or end_rsrp == rsrp_value+1 or (end_rsrp !=0 and end_rsrp > rsrp_value):
                        if(count < len(iperf_rsrp)-1):
                            rsrp_matched = 1
                            rsrp = int(iperf_rsrp[count])
                            count += 1
                        else :
                            rsrp = 0
                            end_rsrp = iperf_rsrp[count-1]
                        if snr != []:
                            snr_values.append(statistics.median(snr))
                            snr = []
                            rsrp_matched = 0
                            if end_rsrp !=0 and end_rsrp > rsrp_value:
                                snr_values.append(0)
                                break
                    elif rsrp_matched == 1 or (rsrp_value == iperf_rsrp[count-2] or end_rsrp == rsrp_value):
                        for i in range(13) :
                            l3 = next(f)
                        if msg_type1 in l3:
                            res = l3.split("=")[1].strip()
                            snr.append(float(res.split(" ")[0].strip()))
                    elif (count == len(iperf_rsrp)+1):
                        break      
            else:
                pass
        f.close()
        return (snr_values)
