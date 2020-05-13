#!/bin/bash

echo "Podpunkt a:"

ps aux | awk \
'$4>0.1 && FNR>1{
    print "Użytkownik " $1 " ma uruchomiony proces o PID " $2 " - CPU = " $3 ", MEM = " $4
}'


echo "Podpunkt b:"

ps aux | awk \
'FNR>1{
    procTime = split($10, result, ":");

    running = 60*result[1]+result[2];

    if((result[1]<1) && (result[2]>5)) {
        print "Proces o PID" $2 " trwa: " running
    }
}'


echo "Podpunkt c:"

ps aux | awk \
'FNR>1{
    cpu += $3;
    mem += $4;
}
END {
    print "Suma CPU: " cpu ", Suma MEM: " mem;
}'



echo "Podpunkt d:"
ps aux | awk \
'FNR>1{
    cpu[$1] += $3;
    mem[$1] += $4;
    users[$1] += $1;
}
END {
    for(user in users) {
    print "Użytkownik " user " łącznie zużywa CPU: " cpu[user] " i MEM: " mem[user];
    }
}'



echo "Podpunkt: e:"
ps aux | awk \
'FNR>1{
    cpu[$1] += $3;
    mem[$1] += $4;
    users[$1] += $1;
}
END {
    for(user in users) {
        maxCpu = 0;
        if(cpu[user] > maxCpu) {
            macCpu = cpu[user]
        }
        print "Użytkownik " user " zużywa najwięcej CPU: " cpu[user] ;
    }

    for(user in users) {
        maxMem = 0;
        if(mem[user] > maxMem) {
            macMem = mem[user]
        }
        print "Użytkownik " user " zużywa najwięcej Mem: " mem[user] ;
    }

}'