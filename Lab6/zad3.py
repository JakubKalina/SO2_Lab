# Zadanie 3 z listy
import os, sys

def exercise_3(givenPath):
    
    if(os.path.isdir(givenPath)):
        try:
            for element in os.listdir(givenPath):
                if(os.access(givenPath+'/'+element, os.X_OK)):
                    if(not os.path.isdir(givenPath+'/'+element)):
                        os.remove(givenPath+'/'+element)

        except:
            print('Podczas wykonywania funkcji wystapił błąd')
    else:
        print('Podany argument nie jest ściezką do folderu')
        return


# Wywołanie funkcji
givenPath = sys.argv[1]
exercise_3(givenPath)