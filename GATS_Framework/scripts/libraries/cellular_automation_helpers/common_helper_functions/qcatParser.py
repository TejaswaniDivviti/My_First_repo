
import sys
from zipfile import ZipFile
import socket
import time
import os
import win32com.client
import shutil
import automation_helpers.globalconstants as gc

class QcatParser:
    def __init__(self, listFileter = None):
        if listFileter is None:
            # self.list = gc.QCAT_DICT['HexCodes']
            self.list = [0xB173 , 0xB14D , 0xB193, 0xB139, 0xB13C, 0xB130, 0xB132, 0x1FEB, 0x156E]
        else:
            self.list = listFileter
        self.qxdm_path = f"{gc.IMAGE_FOLDER}/{gc.DEVICE_NAME}/"
        self.parserPath = self.qxdm_path + "generatedLogs"
        self.unzipTheRecivedFile()

    def unzipTheRecivedFile(self): 
        self.files_qmdl = [i for i in os.listdir(self.qxdm_path) if i.endswith('.zip')][0]
        self.qmdl_file_path = self.qxdm_path + '/' + self.files_qmdl.split('.')[0]
        with ZipFile(f"{self.qxdm_path}/{self.files_qmdl}", 'r') as myzip:
            print(' Extracting all the fles now .... ')
            myzip.extractall(self.qmdl_file_path)
            print('Done')
        self.files = os.listdir(self.qmdl_file_path)
        self.files_qmdl = [i for i in self.files if i.endswith('.qmdl')]
        self.convertQmdlFileIntoText()
    
    def convertQmdlFileIntoText(self):
        for i in range(len(self.files_qmdl)):
            # pass
            print(self.qmdl_file_path+"/"+self.files_qmdl[i])
            print(self.list)
            print(self.parserPath)
            self.qcat_parse_log(self.qmdl_file_path+"/"+self.files_qmdl[i], self.list, self.parserPath)

        listfiles = os.listdir(self.parserPath)

        with open(self.qxdm_path + '/qxdm_logs.txt', 'wb') as outfile:
            for fname in listfiles:
                with open(self.parserPath+'/'+ fname, 'rb') as infile:
                    for line in infile:
                        outfile.write(line)
        
        shutil.rmtree(self.parserPath)

    def qcat_parse_log(self, logpath, filterList, parsedFile):
        #print(" ---- Inside the qcat_parse_log file ---- ")
        qcatApp = win32com.client.Dispatch("QCAT6.Application")
        qcatApp.Visible = 0
        
        # logger1 = logging.getLogger('qcat_parse_log')
        # if qcatApp.OpenLog(os.getcwd() + logpath) != 1:
        #     # logger1.error("Error2:")
        #     # logger1.error(qcatApp.LastError)
        #     qcatapp = None
        #     exit()

        filter = qcatApp.PacketFilter
        print(filter)

        print(logpath)
        print(parsedFile)
        if filter == 0:
            print("error")
            # logger1.error ("ERROR3: unable to retrieve the Filter Object.\n")
            exit()
            return
        filter.SetAll(0)

        for subfilter in filterList:
            filter.Set(subfilter, 1)
        filter.Commit()

        print ("Parsing messages...")

        if(qcatApp.Process(logpath, parsedFile,0,0)!=1):
            pass
            # logger1.error ("ERROR4:")
            # logger1.error (qcatApp.LastError)
        else:
            print ("Complete!!!\n" + parsedFile + " generated!")
            #print ("ParsedFiltered TXT saved to %s\n"%parsedFile)
        qcatApp.closeFile()
        qcatapp = None