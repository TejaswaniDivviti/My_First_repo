import matplotlib.pyplot as plt
import re

class Graph():
    def file(self):

       filename=r'C:\\Users\\chandad\\PycharmProjects\\GATS_SNR_MCS\\results\\text_files\\file1.txt'

       try:
           self.first = open(filename, 'r')
           '''reading each lines'''
           self.lines = self.first.readlines()
       except Exception:
           raise Exception(" file not found")

    def read(self, n):
        '''fetching values'''
        snrrsrpvalues = "="
        self.outsnrrsrp = []
        for i in self.lines:
            if (n in i) and snrrsrpvalues in i:
                '''Assigning it to a list'''
                self.outsnrrsrp.append(i)
            self.first.close()

    '''Extracting a required values in a given file'''
    def extract(self):
        list1= []
        for n1 in self.outsnrrsrp:
            val = re.findall(r"[-+]?\d+\.\d+",n1)
            res1= ''.join(val)
            if '' != res1:
                list1.append(float(res1))
        # '''Removing empty string'''
        # while ("" in list1):
        #     list1.remove("")
        # '''using typecast (for string to float)'''
        # typecast= []
        # for j in list1:
        #     typecast.append(float(j))
        # return typecast
        return list1
    '''here extracting TIME'''
    def TIME(self,timer):
        list2=[]
        '''getting only time format in a file'''
        for j in self.lines:
            if timer in j:
                time=re.findall(r"\d\d:\d\d:\d\d.\d\d\d",j)
                y = ''.join(time)
                list2.append(y)
        self.list3 = []
        for i in list2:
            hh, mm, ss = i.split(':')
            ss,ms=ss.split(".")
            self.list3.append(int(hh) * 3600 + int(mm) * 60 + int(ss)+((int(ms))/1000)%60)
            res2= (max(self.list3) - min(self.list3))
            self.time=list(range(0,int(res2+1)))
        return self.time

    '''This is to plot Graph '''
    def plot(self,string,y):
        plt.plot(self.time, y[:len(self.time)])
        plt.xlabel('Time')
        plt.ylabel(string)
        plt.title(f'{string} v/s Time')
        plt.savefig(f"{string}.png")
        plt.close()
        self.first.close()







