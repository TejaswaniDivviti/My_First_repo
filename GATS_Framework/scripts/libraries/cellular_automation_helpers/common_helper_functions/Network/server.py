import os
import socket
import time
import sys
import automation_helpers.globalconstants as gc
bytes = 1024
listening = 5


class TCPServer():
    def __init__(self, host,port):
        self.host = host
        self.port = port
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.sock.bind((self.host, port))
        self.sock.listen(listening)
        print("Host Name: ", self.sock.getsockname())
        self.qxdm_path = gc.IMAGE_FOLDER + "/" + gc.DEVICE_NAME + "/"

    def creating_connection(self):
        self.client, self.addr = self.sock.accept()
        print("Connected", self.client)

    def sending_folder(self):
        file_name = self.qxdm_path
        file_name += os.listdir(file_name)[0]
        file_size = os.path.getsize(file_name)
        fname = file_name.split('/')[-1]
        print(fname)
        print(file_size)
        self.client.send(fname.encode())
        time.sleep(1)
        self.client.send(str(file_size).encode())
        time.sleep(5)
        self.start_time = time.time()
        print(file_name)
        with open(file_name, "rb") as file:
            c = 0
            while c < file_size:
                data = file.read(bytes)
                if not data:
                    break
                self.client.sendall(data)
                c += len(data)
                print(c)
        time.sleep(2)


    def rec_file(self):
        
        rfiles_name = self.client.recv(bytes).decode()
        self.qxdm_path += rfiles_name
        time.sleep(1)
        rfiles_size = self.client.recv(bytes).decode()
        time.sleep(1)
        if int(rfiles_size) == 0:
            print('no data')
        else:
            with open(self.qxdm_path, "w") as fil:
                a = 0
                while a < int(rfiles_size):
                    data1 = self.client.recv(bytes)
                    if not data1:
                        break
                    fil.write(data1.decode())
                    a += len(data1)
        self.end_time = time.time()
        print("File Transfer Complete.Total time: ", self.end_time - self.start_time)

    def sever_close(self):
        self.sock.close()

def run(object):
    object.creating_connection()
    object.sending_folder()
    object.rec_file()
    object.sever_close()





