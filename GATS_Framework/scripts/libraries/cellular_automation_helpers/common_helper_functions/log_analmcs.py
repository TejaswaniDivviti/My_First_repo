import re
import matplotlib.pyplot as plt
import automation_helpers.globalconstants as gc

class File:

    def read(self, n):
        '''Reading first file'''
        firstfile = open(f"{gc.IMAGE_FOLDER}/{gc.DEVICE_NAME}/qxdm_logs.txt")
        self.lines = firstfile.readlines()
        firstfile.close()
        '''seperating the required data'''
        lst = []
        value = "="
        for i in self.lines:
            if (n in i) and value in i:
                lst.append(i)
        return lst

    def pattern(self, lst):
        CQI = []
        for find in lst:
            CW = re.search(r'CQI CW\w+\s*\D+([\d]+)', find)
            val = CW.group(1)
            res = ''.join(val)
            CQI.append(int(res))
        return CQI

    '''finding time in the required data'''
    def time(self, k):
        out = []
        for n in self.lines:
            if k in n:
                out.append(n)
        time = []
        for j in out:
            r1 = re.findall(r"\d\d:\d\d:\d\d.\d\d\d", j)
            timeres = ''.join(r1)
            time.append(timeres)
        list3 = []
        for i in time:
            hh, mm, ss = i.split(':')
            ss, ms = ss.split(".")
            list3.append(int(hh) * 3600 + int(mm) * 60 + int(ss) + ((int(ms)) / 1000) % 60)
            res2 = (max(list3) - min(list3))
            write = list(range(0, int(res2 + 1)))
        print(write)
        return write

    '''fetching mcs values in file'''
    def mcs(self):
        mcs = []
        for line in self.lines:
            if "DISCARD" in line:
                ind = line.split("|")
                mcs.append(int(ind[19]))
        return mcs

    def plot_mcs(self,list3,mcs,cqi):
        fig, ax = plt.subplots(constrained_layout=True)
        ax.plot(list3, cqi[:len(list3)], color='orange')
        ax.set_title("MCS VS CQI with TIME(TM1)")
        ax.set_xlabel("Time(sec)")
        ax.set_ylabel("CQI(dBm)")
        ax.set_ylim(0, 40)
        ax1 = ax.twinx()
        ax1.plot(list3, mcs[:len(list3)], color="green")
        ax1.tick_params(axis="y", labelcolor="green")
        ax1.set_ylabel("MCS")
        ax1.set_ylim(-110, -70) 
        fig.tight_layout()
        plt.savefig(f"{gc.IMAGE_FOLDER}/mcsvscqi.png")
        plt.close()

    
def plotGraphForCQIvsMSC():
    try:
        obj = File()
        # obj.extract()
        lst1 = obj.read("CQI CW0")
        CQI = obj.pattern(lst1)
        lst3 = obj.time("0xB173")
        MCS = obj.mcs()
        obj.plot_mcs(lst3, CQI, MCS)
        return True, "Plotting graph for CQI vs MCS Successed"
    except Exception as e:
        return False, str(e)

