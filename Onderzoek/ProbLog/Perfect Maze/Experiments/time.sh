TOTSTARTTIME=$(date +%s)
for i in `seq 1 40`;
        do
        STARTTIME=$(date +%s)
                problog sample -N 1 ../perfectmaze-optimized.pl
        ENDTIME=$(date +%s)
        echo $(($ENDTIME - $STARTTIME)) >> dim2.txt
        done
TOTENDTIME=$(date +%s)
echo "Totale tijd verstreken: $(($TOTENDTIME - $TOTSTARTTIME))"
