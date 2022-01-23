import keyword
import time
import keyboard


#Stopwatch function, f1 to start the timer, f2 to stop the timer
def stopwatch():
    while True:
        try :
            if keyboard.is_pressed('f1'):
                start_time = time.time()
                sec = 0
                while keyboard.is_pressed('f2') == False:
                    current_time = time.time()

                    #units for seconds, minutes, and hours
                    sec = current_time - start_time
                    min = sec // 60
                    sec = sec % 60
                    hr = min // 60
                    min = min % 60

                    timer = '{:02d}:{:02d}:{:02d}'.format(int(hr),int(min),int(sec))
                    time.sleep(1)
                    print(timer, end="\r")
                print("Timer stopped")
                print("Total time", timer)
                break
        except:
            break
    
        
print("Stopwatch run")
stopwatch()