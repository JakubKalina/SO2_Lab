# Zadanie 1 z listy
import os, sys


def exercise_1(givenPath):
    
    if(os.path.isdir(givenPath)):
        try:
            for element in os.listdir(givenPath):
                if(element.endswith('.old')):
                    os.remove(givenPath+'/'+element)
                    continue
                else:
                    if(os.access(givenPath+'/'+element, os.W_OK)):
                        os.rename(givenPath+'/'+element, givenPath+'/'+element+'.old')
        except:
            print('Podczas wykonywania funkcji wystapił błąd')
    else:
        print('Podany argument nie jest ściezką do folderu')
        return


# Wywołanie funkcji
givenPath = sys.argv[1]
exercise_1(givenPath)