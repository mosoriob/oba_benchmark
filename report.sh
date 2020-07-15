pushd results
for i in $(find results -name *json); do 
    cat $i | ./vegeta report > results/$i.txt
    cat $i | ./vegeta -type=hdrplot > results/${i}_hdrplot.txt

    #vegeta report -type=json $i > $i.json
    #cat $i | vegeta report -type="hist[0,100ms,200ms,300ms]"
done
popd