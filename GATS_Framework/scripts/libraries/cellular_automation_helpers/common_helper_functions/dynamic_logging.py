import logging
import os

BASE_DIR = ''
with open('../base_path.txt', mode='rt') as fp:
    BASE_DIR = fp.read()

# logging.basicConfig(filename='D:\GATS\djnago\overall_logs.txt', filemode='a', level=logging.INFO)

def get_logger():
    log = logging.getLogger('dynamic_log')
    log_file = os.path.join(BASE_DIR, 'overall_logs.txt')
    formatter = logging.Formatter('%(asctime)s :(%(levelname)s): %(message)s')
    handler = logging.FileHandler(log_file, mode = 'a')
    handler.setFormatter(formatter)
    log.setLevel(logging.INFO)
    log.addHandler(handler)
    return log
