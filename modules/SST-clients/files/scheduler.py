import schedule
import time
import os
import sys

def job():
    os.system("./startclient.sh")

def cleanup():
    os.system("pkill -f startclient.sh")

schedule.every(1).minutes.do(cleanup)
schedule.every(1).minutes.do(job)

while True:
    schedule.run_pending()
    time.sleep(1)
