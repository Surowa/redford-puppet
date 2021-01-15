#!/usr/bin/python

import schedule
import time
import os

def Lamp1Aan():
    os.system('sudo bash /home/pi/shared/lamp1aan.sh')
    return

def Lamp2Aan():
        os.system('sudo bash /home/pi/shared/lamp2aan.sh')
        return

def Lamp2Uit():
        os.system('sudo bash /home/pi/shared/lamp2uit.sh')
        return

def Lamp3Aan():
        os.system('sudo bash /home/pi/shared/lamp3aan.sh')
        return

def Lamp3Uit():
        os.system('sudo bash /home/pi/shared/lamp3uit.sh')
        return

def AlleLampenUit():
        os.system('sudo bash /home/pi/shared/allesuit.sh')
        return

def Checkstat():
        os.system('python3 checkstat.py') 


def Zuurstofpomp():
        os.system('python3 pomp.py')

schedule.every().day.at("12:00").do(Checkstat)


schedule.every(8).minutes.do(Zuurstofpomp)


while True:
        schedule.run_pending()
        time.sleep(60)
