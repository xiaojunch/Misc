import time
from pymouse import PyMouse

m = PyMouse()

while (1):
    x_original, y_original = m.position()
    
    print('Mouse to move in 10 seconds. (%s)' % time.asctime())
    time.sleep(10)
    
    m.click(3131,250,1)
    m.click(x_original, y_original, 1)
    
    print('Mouse just moved. (%s)' % time.asctime())
    print('')
    time.sleep(240)
