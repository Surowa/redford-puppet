#!/usr/bin/python

import schedule
import time
import os

os.system('sudo pilight-send -p kaku_switch -i 33102848 -u 33102848 -u 3 -t')
os.system('sudo pilight-send -p kaku_switch -i 33102848 -u 33102848 -u 3 -t')
os.system('sudo pilight-send -p kaku_switch -i 33102848 -u 33102848 -u 3 -t')
time.sleep(3)
os.system('sudo pilight-send -p kaku_switch -i 33102848 -u 33102848 -u 3 -t')
os.system('sudo pilight-send -p kaku_switch -i 33102848 -u 33102848 -u 3 -t')
os.system('sudo pilight-send -p kaku_switch -i 33102848 -u 33102848 -u 3 -t')

time.sleep(240)

os.system('sudo pilight-send -p kaku_switch -i 33102848 -u 33102848 -u 3 -f')
os.system('sudo pilight-send -p kaku_switch -i 33102848 -u 33102848 -u 3 -f')
os.system('sudo pilight-send -p kaku_switch -i 33102848 -u 33102848 -u 3 -f')
time.sleep(3)
os.system('sudo pilight-send -p kaku_switch -i 33102848 -u 33102848 -u 3 -f')
os.system('sudo pilight-send -p kaku_switch -i 33102848 -u 33102848 -u 3 -f')
os.system('sudo pilight-send -p kaku_switch -i 33102848 -u 33102848 -u 3 -f')
