import socket
import paramiko
from colorama import Fore, Back, Style
import multiprocessing
import time
import sys

class TCPServer:
    def __init__(self, args) -> None:
        """Establish TCP connection

        Args:
            args (dict): Contains serverip and serverport
        """
        
        self.client_socket = None
        try:
            self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            self.sock.bind((args[0], args[1]))
            self.sock.listen(1)
        except Exception as e:
            print(Fore.RED,"Exception Occurred", str(e))
            print(Style.RESET_ALL)
            return
        
    def accept_connection(self):
        """
        Accept the client connection
        """
        print("Accept")
        self.client_socket, addr = self.sock.accept()
    
    def send_data(self, data):
        """
        Send data to client
            - Calculate the length of the buffer
            - Send buffer

        Args:
            data (bytes): Buffer (MSG) 
        """
        self.client_socket.sendall(data, len(data))

    def recv_data(self, bytes_to_recv):
        """Receive the buffer from client

        Args:
            bytes_to_recv (integer): receive this much data
        """
        self.client_socket.recv(int(bytes_to_recv))

    # def __del__(self):
    #     self.sock.close()


class TCPClient:
    def __init__(self, args) -> None:
        """
        Connect to Server

        Args:
            args (Dict): Contain's SeverIp and SeverPort
        """
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.sock.connect((args['ServerIp'], args['Port']))

    def recv_data(self):
        """
        Collect the data from server

        Returns:
            bytes: received buffer
        """
        data = self.sock.recv(1024)
        print(data)
        return data

    def send_data(self, data):
        """
        Send data to server

        Args:
            data (bytes): Send buffer
        """
        self.sock.send(data, len(data))

    def __del__(self):
        self.sock.close()

class SSH:
    def __init__(self, host: object, port: object, username: object, password: object, cert: object=None) -> None:
        """
        Create an SSH connection with remote system

        Args:
            host (String): IP address of remote system
            port (Integer): Port
            username (String): System Name
            password (String): System Password
            cert (String): Certificate Path
        """
        try:
            self.ssh = paramiko.SSHClient()
            self.ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
            self.ssh.connect(host, port, username, password)
        except Exception as e:
            print(Fore.RED,"Exception Occurred", str(e))
            print(Style.RESET_ALL)
            return

    def exec_command(self, command):
        """
        Execute the command inside the remote system

        Args:
            command (List/String): Command

        Yields:
            list: Output of SSH command
        """
        stdin, stdout, stderr = self.ssh.exec_command(command)
        lines = stdout.readlines()
        print(lines)
        return lines
    
    def __del__(self):
        self.ssh.close()

# def Socket():
#     args = {
#     "ServerIp" : "10.91.240.123",
#     "Port" : 8089
#     }
    
#     sock = TCPServer(args)
#     sock.accept_connection()
#     sock.send_data(b"Heelo")
#     sock.recv_data(1024)
#     del sock

def ssh_main():
     ssh = SSH("192.168.131.101", 22, "sysadmin", "p@ssw0rd")
     time.sleep(1)
     ssh.exec_command("python C:\\Users\\sysadmin\\Desktop\\GATS\\files\\client.py 192.168.131.189 9900")

# if __name__ == '__main__':
   
    
#     # print(ssh.exec_command("pwd"))

  
    
#     # print(ssh.exec_command("python3 server.py"))
#     t1 = multiprocessing.Process(target=Socket)
#     t2 = multiprocessing.Process(target=ssh_main)
    
#     t1.start()
#     t2.start()
#     t1.join()
#     t2.join()
    
    # SSH-2.0-OpenSSH_8.2p1 Ubuntu-4ubuntu0.3
    
    





