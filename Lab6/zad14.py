# Zadanie 14 z listy
import os, sys
from datetime import datetime
import time



def exercise_14(givenPath):
    
    if(os.path.isdir(givenPath)):
        try:
            for element in os.listdir(givenPath):
                if(os.access(givenPath+'/'+element, os.X_OK)):
                    now = datetime.now()
                    modTime = time.mktime(now.timetuple())
                    os.utime(givenPath+'/'+element, (modTime,modTime))

        except:
            print('Podczas wykonywania funkcji wystapił błąd')
    else:
        print('Podany argument nie jest ściezką do folderu')
        return


# Wywołanie funkcji
givenPath = sys.argv[1]
exercise_14(givenPath)