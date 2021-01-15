
import subprocess
import sys
import time
import telegram

bot = telegram.Bot(token="662345039:AAFzRlDxZLpKckfDDvxQVnvn-byYyl9j7pg")
chat_id=669518538

if __name__ == '__main__':
    while True:
        time.sleep(5)
        p = subprocess.Popen("sudo arp-scan -l | grep 64:a2:f9:2f:26:80", stdout=subprocess.PIPE, shell=True)
        (output, err) = p.communicate()
        p_status = p.wait()
        if output:
            bot.sendMessage(chat_id=chat_id, text="Intruder alert")
            raise SystemExit
        else:
          time.sleep(1)
