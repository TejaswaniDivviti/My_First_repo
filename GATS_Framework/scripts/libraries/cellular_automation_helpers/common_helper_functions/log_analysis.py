import matplotlib.pyplot as plt
import re
import automation_helpers.globalconstants as gc


class Extract_plotGraph:
        
    '''check the file is exixts or not'''
    def checkfile_exists(self):
        filename = f"{gc.IMAGE_FOLDER}/{gc.DEVICE_NAME}/qxdm_logs.txt"
        print("Am here", gc.DEVICE_NAME)
        print(filename)
        try:
            with open(filename) as f:
                self.res = f.readlines()
                # print(self.res)
        except FileNotFoundError:
            msg = "The file " + filename + "does not exist."
            print(msg)

    def read_data(self, value_to_find):
        '''This is for extract RSSI RSRQ from readlines'''
        find_equal = "="
        self.find_out = []
        for i in self.res:
            if (value_to_find in i) and find_equal in i:
                self.find_out.append(i)

    def pattern(self):
        '''find the RSSI AND RSRQ VALUES'''
        get_val= []
        for matched_values in self.find_out:
            m_output = re.findall("[-+]?\d+\.\d+",matched_values)
            filter_output = ''.join(m_output)
            get_val.append(filter_output)
        while "" in get_val:
            get_val.remove("")
        final_val= []
        for convert in get_val:
            final_val.append(float(convert))
        return final_val

    def time(self,time): 
        '''This is for extract TIME'''
        time_1list=[]
        for j in self.res:
            if  time in j:
                m = re.findall(r"\d\d:\d\d:\d\d.\d\d\d",j)
                y = ''.join(m)
                time_1list.append(y)
        '''convert the string time to time in Seconds'''
        self.time_2list = []
        for check in time_1list:
            hh, mm, ss = check.split(':')
            ss,ms=ss.split(".")
            self.time_2list.append(int(hh) * 3600 + int(mm) * 60 + int(ss)+((int(ms))/1000)%60)
            total_time = (max(self.time_2list) - min(self.time_2list))
            self.time_took=list(range(0,int(total_time+1)))

    
    def plot_pr(self, values,sp_val):
        '''method for to plot Graph '''
        plt.plot(self.time_took, sp_val[:len(self.time_took)])
        plt.xlabel('Time in seconds')
        plt.ylabel(values + "in db")
        plt.title(f'{values} v/s Time')
        plt.savefig(f"{gc.IMAGE_FOLDER}/{values}vsTime.png")
        plt.close()

def plottingGraphForRSRQvsTime():
    try:
        obj=Extract_plotGraph()
        obj.checkfile_exists()
        obj.read_data("RSRQ Rx")
        rsrqList = obj.pattern()
        obj.time("0xB193")
        obj.plot_pr("RSRQ",rsrqList)
        return True, "GRaph Plotted..."
    except Exception as e:
        return False, "Plotting graph failed....."

def plottingGraphForRSSIvsTime():
    try:
        obj=Extract_plotGraph()
        obj.checkfile_exists() 
        obj.read_data("RSSI Rx")
        rssiList = obj.pattern()
        obj.time("0xB193")
        obj.plot_pr("RSSI", rssiList)
        return True, "GRaph Plotted..."
    except Exception as e:
        return False, "Plotting graph failed....."

def plottingGraphForRSRPvsTime():
    try:
        obj = Extract_plotGraph()
        obj.checkfile_exists()
        obj.read_data("RSRP Rx")
        rsrpList = obj.pattern()
        obj.time("0xB193")
        obj.plot_pr("RSRP", rsrpList)
        return True, "Graph Plotted......"
    except Exception as e:
        return False, "Plotting Graph failed......"

def plotGraphForSNRvsTime():
    try:
        object = Extract_plotGraph()
        object.checkfile_exists()
        object.read_data("SNR")
        snrList = object.pattern()
        object.time("0xB193")
        object.plot_pr("SNR", snrList)
        return True, "Graph Plotted......"
    except Exception as e:
        return False, "Plotting Graph failed......"




