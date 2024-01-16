import sys
import logging
import automation_helpers.globalconstants as gc

def setup_logger(status, level=logging.INFO):
    """To setup as many loggers as you want"""
    logger = logging.getLogger("info_log")
    log_file = gc.IMAGE_FOLDER+"/log.info"
    if status == "START":
        formatter = logging.Formatter('%(asctime)s :(%(levelname)s): %(message)s')
        handler = logging.FileHandler(log_file, mode = 'w')
        handler.setFormatter(formatter)

        logger.setLevel(level)
        logger.addHandler(handler)

        return logger
    else: 
        handlers = logger.handlers[:]
        for handler in handlers:
            handler.close()
            logger.removeHandler(handler)
