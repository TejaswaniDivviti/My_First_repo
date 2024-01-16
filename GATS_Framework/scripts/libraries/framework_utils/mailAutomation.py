import pandas as pd
try:
    import win32com.client as client
except:
    pass
import os
import automation_helpers.globalconstants as gc
import datetime

# SMTP Mail Library
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.application import MIMEApplication
from email.mime.text import MIMEText

from datetime import datetime

now = datetime.now()
date_time = now.strftime("%d/%m/%Y")
print("date and time:",date_time)

class MailAutomation:
    def __init__(self) -> None:
        self.path = f"{gc.INPUT_IMAGE_PATH}\\Merged_Output\\Robot_Results.xlsx"
        self.log = f"{gc.INPUT_IMAGE_PATH}\\Merged_Output\\log.html"
        self.report = f"{gc.INPUT_IMAGE_PATH}\\Merged_Output\\report.html"
        self.df = pd.read_excel(self.path)

        self.smartsummry = pd.read_excel(self.path, sheet_name='smart summary')

        print(self.smartsummry["No of TC's"][0])
        print(self.smartsummry["Deviceused"][0])
        print(self.smartsummry["Passed"][0])
        print(self.smartsummry["Failed"][0])
        print(self.smartsummry["None"][0])

        html_smartSummary = f"""

        <tr>
                <th>No of TC's</th>
                <th>Deviceused</th>
                <th>Passed</th>
                <th>Failed</th>
                <th>NA</th>
            </tr>
            <tr>
                <td>{self.smartsummry["No of TC's"][0]}</td>
                <td>Pixel3a, Mi 10T, Pixel2a</td>
                <td>{self.smartsummry["Passed"][0]}</td>
                <td>{self.smartsummry["Failed"][0]}</td>
                <td>{self.smartsummry["None"][0]}</td>
            </tr>
        """
        html_time= f"<h4>Test cases Execution Report:(Data: {date_time})</h4>"
        Fail_count = []

        None_count = []
        pass_count = []
        for i, j in enumerate(self.df['PASS/FAIL/NA']):
            print(i, j)
            if j == "FAIL":
                Fail_count.append(i)
            elif j == "NONE":
                None_count.append(i)
            else:
                pass_count.append(i)
        faillist = []
        slNO = []
        failureReasons = []
        iterationCount = []

        self.html = """
<!DOCTYPE html>
<html>
    <head>
        <style>
            th {
                border: 1px solid black;
                background-color: #fff2cc;
            }
            td {
                border: 1px solid black;
            }
            table {
                border: 1px solid black;
            }
        </style>
    </head>
    <body>
        <h4>Hi,</h4>
        """ +html_time +""" 
        <table style="width: 100%;">"""\
            +html_smartSummary +\
        """
        </table>
        <h4></h4>
        <h4></h4>
        
        """
        if Fail_count:
            self.html += """
            <h4>List of Failure Testcases.</h4>
            <table style="width: 100%;">
            <tr>
                <th>S. No.</th>
                <th>Test case id</th>
                <th>Interation Count</th>
                <th>FAIL</th>
                <th>Failure Reason</th>
            </tr>
            """
            c = 0
            for i in Fail_count:
                c += 1
                # slNO.append(c)
                # faillist.append(self.df["TestCaseId"][i])
                # failureReasons.append(self.df["Reasons"][i])
                # iterationCount.append(self.df["IterationNo"][i])

                self.html += \
                    f"""
                        <tr>
                            <td>{c}</td>
                            <td>{self.df["TestCaseId"][i]}</td>
                            <td>{self.df["IterationNo"][i]}</td>
                            <td>{self.df["PASS/FAIL/NA"][i]}</td>
                            <td>{self.df["Reasons"][i]}</td>
                        </tr>
                    """
        self.html +="""
        </table>
        <h4> Find the Attched file related Complete Summary</4>
        <h5>Regards,</h5>\n""" + \
        f"""<h4>{gc.MAIL['Execution']}</h4>""" +\
    """</body>
</html>"""

        
        print(self.html)

    def smtpMailSending(self):
        server = smtplib.SMTP(host="smtp.gmail.com", port=587)
        server.starttls()
        server.login("edgeglobal98@gmail.com", "ack1@gesl")
        message = MIMEMultipart()
        message['From'] = "edgeglobal98@gmail.com"
        # Adding To Mails id's
        str = ""
        for i in gc.MAIL['To']:
            str += i + ","
        print(gc.MAIL['To'])
        message['To'] = str

        # Adding CC Mails id's
        str = ""
        for i in gc.MAIL['CC']:
            str += i + ","
        print(gc.MAIL['CC'])
        message['Cc'] = str

        message['Subject'] = "GATS Automation Execution Report "

        textPart = MIMEText(self.html, 'html')
        filename = self.path
        filePart = MIMEApplication(open(filename,"rb").read(),Name=filename)
        filePart["Content-Disposition"] = 'attachment; filename=%s' % filename.split("\\")[-1]
        logHtml = MIMEApplication(open(self.log,"rb").read(),Name=self.log)
        logHtml["Content-Disposition"] = 'attachment; filename=%s' % self.log.split("\\")[-1]

        reportHtml = MIMEApplication(open(self.report,"rb").read(),Name=self.report)
        reportHtml["Content-Disposition"] = 'attachment; filename=%s' % self.report.split("\\")[-1]


        message.attach(textPart)
        message.attach(filePart)
        message.attach(logHtml)
        message.attach(reportHtml)

        # Send Email and close connection
        server.send_message(message)
        server.quit()
        print("mail sent")

    def Application(self):
        try:
            self.outlook = client.Dispatch("Outlook.Application")
            self.message = self.outlook.Createitem(0)
            return True, "Mail Sent vai Outlook"
        except Exception as e:
            self.smtpMailSending()
            return False, "Mail Sent vai SMTP"

    def email_details(self):
        self.message.To = gc.MAIL['To'][0]
        self.message.Cc = gc.MAIL['CC'][0]
        self.message.Subject = f"GATS Automation Execution Report {gc.MAIL['Execution']}"
        self.message.htmlBody = self.html
        self.message.Attachments.Add(self.path)
        self.message.Send()
        print("mail sent")

def sendingMail():
    return
    try:
       
        obj = MailAutomation()
        status, msg = obj.Application()
        if status:
            print(msg)
            obj.email_details()
        else:
            print(msg)
            return
    except Exception as e:
        print("Sending Mail Failed due to ", str(e))
