#!/bin/bash
Rate=20
Fulltime=8
Halftime=4
total_wage=0
for (( i=1; i<=30; i++ ))
do
        n=$((RANDOM%2))
        attendance[$i]=$n
        if [ ${attendance[$i]} -eq 0 ]
        then
                attendance[$i]="Absent"
                partime[$i]=0
        elif [ ${attendance[$i]} -eq 1 ]
        then
                attendance[$i]="Present"
                partime[$i]=$((RANDOM%2+2))
        fi
done
