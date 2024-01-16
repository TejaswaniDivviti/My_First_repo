# Python imports
import argparse
import logging
import os
import re
import sys
import time
import platform
import subprocess
import pandas as pd
from database_query import Database
from robot import *
from robot.run import run
from robot.parsing.model import TestData
# Local imports
from pythonListener import PythonListener
import automation_helpers.globalconstants as gc
# from automation_helpers.YamlUtils import YamlUtils
from framework_logger import FrameworkLogger
import mailAutomation as mail

sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
LOG = logging.getLogger(__name__)

BASE_DIR = ''
with open('../base_path.txt', mode='rt') as fp:
    BASE_DIR = fp.read()

def exctractQCatFilterFromExcel():
    # return
    # Reading Excel Sheet
    try:
        dataFrame = pd.read_excel(f"{os.getcwd()}/../../../inputs/qCatFilter/QCatFilters.xlsx")
    except Exception as e:
        raise Exception("QCatFilters.xlsx Filter File not found")
    # Extracting the Hex Codes
    gc.QCAT_DICT['HexCodes'] = [int(i, 16) for i in dataFrame['Hex Codes']]
    # Extracting the MsgName
    gc.QCAT_DICT['MsgName'] = [i for i in dataFrame['Msg Name']]
    # Extracting Descriptions
    gc.QCAT_DICT['Description'] = [i for i in dataFrame['Description']]
    # Extracting Important IE's
    gc.QCAT_DICT['IEs'] = [i for i in dataFrame['IEs']]


class Runner:
    """
    Runner class contains method which runs the robot suite
    Description     : This class features the function API for running the
    test cases on the basis of tags and some other command line arguments.
    """
    DB = Database()
    # FTP = Uploadftp()
    LOG_OBJ = FrameworkLogger()
    TAGS_LIST = []
    log_dir_list = []
    ROBOT_SIG_STOP = int(253)

    @staticmethod
    def merge_logs(path, project_name):
        """

        :param path: directory for saved output.xml files of all the test
                     execution
        :return:
        """
        output_path = os.path.join(path, "Merged_Output")
        # Uncomment below line for getting only log.html
        # cmd = "rebot --outputdir {0} --merge ".format(output_path)
        # Command to generate log.html and report.html
        cmd = "rebot --outputdir {0} --name {1}".format(output_path, project_name)
        for paths in Runner.log_dir_list:
            cmd = cmd + " " + paths
        subprocess.call(cmd, shell=True, stdout=subprocess.PIPE,
                        stderr=subprocess.PIPE)

    @staticmethod
    def check_result_folder(result_folder):
        """
        :param result_folder:
        :return:
        """
        LOG.info("get_framework_logs_pathget_framework_logs_path")
        if os.path.isfile(result_folder):
            if platform.platform().split("-")[0] == "Linux":
                if result_folder.split("/")[-1] == "log.html":
                    result_folders = result_folder.replace("log.html",
                                                           "output.xml")
                    Runner.log_dir_list.append(result_folders)
            else:
                if result_folder.split("\\")[-1] == "log.html":
                    result_folders = result_folder.replace("log.html",
                                                           "output.xml")
                    Runner.log_dir_list.append(result_folders)
            return
        dir_list = os.listdir(result_folder)
        for file in dir_list:
            LOG.info("get_framework_logs_pathget_framework_logs_path {0}".
                     format(file))
            path = os.path.join(result_folder, file)
            Runner.check_result_folder(path)

    @staticmethod
    def get_framework_logs_path(project_name, milestone, session, device_name):
        """
        :param session: Session for each test_case execution ID
        :return: robots_results_directory
        """
        LOG.info("get_framework_logs_pathget_framework_logs_path")
        if session is not None:
            current_working_dir = os.getcwd()

            main_dir = os.path.abspath(
                os.path.join(os.path.dirname(__file__),
                             '..', '..', '..'))
            os.chdir(os.path.join(main_dir, "results", "logs", project_name,
                                  milestone, session, device_name))
            Robots_results_directory = os.getcwd()
            LOG.info("get_framework_logs_pathget_framework_logs_path {0}".
                     format(Robots_results_directory))
            Runner.check_result_folder(Robots_results_directory)
            os.chdir(current_working_dir)
            return Robots_results_directory
        else:
            raise ValueError

    @staticmethod
    def tags_parser_and_runner():
        """
        :function name : tags_parser_and_runner
        :description : this function parses the tags and arguments for the given
                       test suite and executes the test cases as one test cases
                       at a time.
        :return: None
        :author: Vinay, s.subhodeep@globaledgesoft.com
        """       
        try:
            
            parser = Runner.arg_parser()
            args = parser.parse_args()
            if args.include:
                tags = args.include.split("AND")
                args.variable11 = '_'.join(args.variable1)
                args.variable14 = '_'.join(args.variable4)
                project = "dict.project:" + args.variable11
                project_name = args.variable11
                milestone = "dict.milestone:" + args.variable2
                session = "dict.session:" + args.variable3
                device = "dict.device:" + args.variable14
                # device_id = "dict.device:" + args.variable5
                input_image_path = args.variable7
                yaml_path = args.variable8
                yaml = "dict.yaml:" + args.variable8

                if platform.platform().split("-")[0] == 'Linux':
                    log_path = yaml_path.split("/")
                else:
                    log_path = yaml_path.split("\\")

                log_path = log_path[:-2]
                all_log_path = ""

                for path in log_path:
                    all_log_path = os.path.join(all_log_path, path)
                robot_log_path = Runner.LOG_OBJ.make_robot_log_dir(
                    args.variable3, args.variable14, args.variable6)
                gc.TEST_EXE_ID = args.variable3
                # print("args.variable5:{}".format(args.variable5))
                gc.DEVICE_ID = args.variable5
                interrupt_id = "0268c4c02e2c3746"
                gc.INTERRUPT_ID = interrupt_id
                gc.TEST_RUN_ID = args.variable6

                gc.INPUT_IMAGE_PATH = input_image_path
                gc.YAML_PATH = yaml_path
                gc.MAC_ID = args.variable9
                common_yaml_path = os.path.join(yaml_path,
                                                "variables_common.yaml")
                gc.COMMON_YAML_PATH = common_yaml_path
                exctractQCatFilterFromExcel()
                # Collecting test cases from all files
                suite = TestData(source=os.path.join("..", "..", "robot_scripts"))
                for child in suite.children:
                    for sub_child in child.children:
                        for testcase in sub_child.testcase_table:
                            for suite_tags in testcase.tags:
                                Runner.TAGS_LIST.append(suite_tags)
                test_not_present = list(set(tags).difference(set(Runner.
                                                                 TAGS_LIST)))

                debug_file = args.variable14 + args.variable3 + '_runerr.txt'
                ouput_file = args.variable14 + args.variable3 + '_runout.txt'
                # print("Tags:{}".format(tags))
                test_case_iter = {}
                pa = os.path.join(BASE_DIR, 'temp', 'tc_results.txt')
                p = os.path.join(BASE_DIR, 'temp', 'runout_path.txt')
                with open(p, mode='wt') as fp:
                    fp.write(os.path.join(os.getcwd(), f"{args.variable14}{args.variable3}_runout.txt"))
                with open(pa, mode='wt') as fp:
                    fp.write("TC Started Executing")
                with open(debug_file, 'w') as stderr:
                    with open(ouput_file, 'w') as stdout:
                        try:
                            for test_case in tags:
                                # READ Yaml data
                                print("test_case:{}".format(test_case))
                                
                             
                                # status, msg = modem_logs.modem_logging(test_case, "START")
                                # testcase_name = re.split('[- |_ |; ]',
                                #                          test_case)[1]
                                # Using regular expression to get the Suite name
                                # Example: TC_Live_KPI_001 --> Live_KPI
                                # testcase_name = re.sub('[0-9]*', '',re.sub('^TC_','', test_case)).rstrip('_')
                                if "LIVE_LTE_DSDS_STAB" in test_case:
                                    testcase_name = "_".join(
                                        (re.sub('[0-9]*', '', re.sub('^TC_[0-9]*_', '', test_case)).rstrip('_')).split(
                                            '_')[:4])
                                elif "LIVE_LTE_SS_STAB" in test_case:
                                    testcase_name = "_".join(
                                        (re.sub('[0-9]*', '', re.sub('^TC_[0-9]*_', '', test_case)).rstrip('_')).split(
                                            '_')[:4])
                                elif "Stability_Live" in test_case:
                                    testcase_name = re.sub('[0-9]*', '', re.sub('^TC_', '', test_case)).rstrip('_').split("_")
                                    testcase_name = testcase_name[0] + "_" + testcase_name[1]
                                elif "MQTT" in test_case:
                                    testcase_name = "MQTT"
                                else:
                                    
                                    testcase_name = re.sub('[0-9]*', '', re.sub('^TC_', '', test_case)).rstrip('_')
                                    
                                # import pdb;pdb.set_trace()
                                print('======================>>>>>TEST SUITE NAME: {}'.format(testcase_name))
                                if testcase_name == "CAM" or testcase_name \
                                        == "CM":
                                    testcase_dir = "Cam"
                                elif testcase_name == "MUSICPLAYER":
                                    testcase_dir = "Music"
                                elif testcase_name == "AUDIO":
                                    testcase_dir = "Audio"
                                elif testcase_name == "VIDEOPLAYER":
                                    testcase_dir = "Videoplayer"
                                elif testcase_name == "Gallery":
                                    testcase_dir = "Gallery"
                                elif testcase_name == "VIDEO":
                                    testcase_dir = "Video"
                                elif testcase_name == "SETTINGS":
                                    testcase_dir = "Settings"
                                elif testcase_name == "Contacts":
                                    testcase_dir = "Contacts"
                                elif testcase_name == "Contacts":
                                    testcase_dir = "Live_Functional"
                                elif testcase_name == "Live_KPI":
                                    testcase_dir = "Live_KPI"
                                elif testcase_name == "Live_Performance":
                                    testcase_dir = "Live_Performance"
                                elif testcase_name == "Live_Stability":
                                    testcase_dir = "Live_Stability"
                                elif testcase_name == "Stability_Live":
                                    testcase_dir = "Stability_Live"
                                elif testcase_name == "LIVE_LOG":
                                    testcase_dir = "LIVE_LOG"
                                elif testcase_name == "LIVE_LTE_SS_STAB":
                                    testcase_dir = "LIVE_LTE_SS_STAB"
                                elif testcase_name == "LIVE_LTE_DSDS_STAB":
                                    testcase_dir = "LIVE_LTE_DSDS_STAB"
                                elif testcase_name == "MQTT":
                                    testcase_dir = "MQTT"
                                else:
                                    testcase_dir = "Bat"
                                
                                # Getting the iteration couont
                                if test_case in test_case_iter:
                                    test_case_iter[test_case] += 1
                                else:
                                    test_case_iter[test_case] = 1

                                # Add TC count index to the globalconstants
                                gc.CURRENT_TC_COUNT = test_case_iter[test_case]
                                testcase_iter = "iteration_" + str(test_case_iter[test_case])
                                log_dir = os.path.join(input_image_path,
                                                       testcase_dir,
                                                       str(test_case), testcase_iter,
                                                       "log.html")
                                gc.CURRENT_TC_LOG_PATH = os.path.join(input_image_path,
                                                       testcase_dir,
                                                       str(test_case), testcase_iter)
                                report_dir = os.path.join(input_image_path,
                                                          testcase_dir,
                                                          str(test_case), testcase_iter,
                                                          "report.html")
                                output_dir = os.path.join(input_image_path,
                                                          testcase_dir,
                                                          str(test_case), testcase_iter,
                                                          "output.xml")
                                test_iter_count = "dict.iter:" + testcase_iter

                                gc.ITERATION_LOG_PATH = os.path.join(
                                    input_image_path,
                                    testcase_dir,
                                    str(test_case), testcase_iter)
                                tc_path = os.path.join(BASE_DIR, 'temp', 'tc_log_path.txt')
                                with open(tc_path, mode='wt') as f:
                                    f.write(os.path.join(input_image_path,testcase_dir,str(test_case), testcase_iter))
                                # Path upto the iteration folder
                                iteration_path = "dict.iteration_path:" + gc.ITERATION_LOG_PATH

                                testcase_name_and_iter_path = "dict.testcase_name_and_iter_path:" + os.path.join(
                                    str(test_case), testcase_iter)
                                suite_name = "dict.suite:" + str(testcase_dir)
                                print(args)
                               
                                run(args.test_suite,
                                    include=test_case,
                                    logtitle=test_case,
                                    reporttitle=test_case,
                                    variable={project,
                                              milestone,
                                              session,
                                              device,
                                              str(yaml),
                                              str(test_iter_count),
                                              str(testcase_name_and_iter_path),
                                              str(iteration_path),
                                              str(suite_name)},
                                    stderr=stderr,
                                    stdout=stdout,
                                    log=log_dir,
                                    report=report_dir,
                                    output=output_dir,
                                    variablefile=gc.COMMON_YAML_PATH,
                                    listener=PythonListener(),
                                    SuiteStatLevel=3)
                                # status, msg = modem_logs.modem_logging(test_case, "STOP")
                            # with open(r'D:\\GATS\\djnago\\logs.txt', mode='at') as f:
                                # f.write(stdout.read())
                            
                        except Exception as robot_error:
                            LOG.debug("Got robot runner module exception:"
                                      "{0}".format(robot_error))
                    # with open(ouput_file, 'rt') as stdout:
                    #     with open('D:\\GATS\\djnago\\logs.txt', mode='at') as f:
                    #         logs = f.read()
                    #         f.write(logs)
  
                with open(debug_file, 'r') as stderr:
                    error = stderr.read()
                if "contains no tests" in error:
                    LOG.error("No such test cases")
                    raise RuntimeError("No Such Test Cases")
            else:
                run(args.test_suite)

            LOG.info("THIS TIME WE ARE GOING TO PROCESS OUR DATA")
            path = Runner.get_framework_logs_path(args.variable11,
                                                  args.variable2,
                                                  args.variable3,
                                                  args.variable14)
            Runner.merge_logs(path, project_name)
        except(ValueError, SyntaxError, TypeError) as generic_error:
            LOG.exception(generic_error)
        except RuntimeError as error:
            LOG.exception("Runtime Error:{0}".format(error))
            print(error)
       
        mail.sendingMail()

    @staticmethod
    def arg_parser():
        """
        :function name : arg_parser
        :description : This function will set all the arguments for
                        the tags_parser_and_runner() function and returns
                        parsed arguments
        :return parser:  Returns the argument parser to the called function
        :author: Vinay, Subhodeep
        """
        try:
            parser = argparse.ArgumentParser()
            parser.add_argument("test_suite")
            parser.add_argument("-i", "--include")
            parser.add_argument("-v1", "--variable1", nargs='+')
            parser.add_argument("-v2", "--variable2")
            parser.add_argument("-v3", "--variable3")
            parser.add_argument("-v4", "--variable4", nargs='+')
            parser.add_argument("-v5", "--variable5")
            parser.add_argument("-v6", "--variable6")
            parser.add_argument("-v7", "--variable7")
            parser.add_argument("-v8", "--variable8")
            parser.add_argument("-v9", "--variable9")
            return parser
        except(ValueError, SyntaxError, TypeError) as generic_error:
            LOG.exception(generic_error)


if __name__ == '__main__':
    
    RUNNER_OBJ = Runner()
    RUNNER_OBJ.tags_parser_and_runner()
