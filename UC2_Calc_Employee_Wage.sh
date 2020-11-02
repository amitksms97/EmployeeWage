for (( i=1; i<=30; i++ ))
do
        if [[ ${attendance[$i]} == "Present" ]]
        then
                if [ ${partime[$i]} -eq 2 ]
                then
                        wage[$i]=`expr $Rate \* $Halftime`
                else
                        wage[$i]=`expr $Rate \* $Fulltime`
                fi
        else
                wage[$i]=0
        fi
                total_wage=`expr $total_wage + ${wage[$i]}`
done
