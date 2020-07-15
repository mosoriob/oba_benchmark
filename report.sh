source env
for i in $(find ${report_dir} -name *json); do 
    cat $i | ./vegeta report > $i.txt
    cat $i | ./vegeta -type=hdrplot > ${i}_hdrplot.txt

    #vegeta report -type=json $i > $i.json
    #cat $i | vegeta report -type="hist[0,100ms,200ms,300ms]"
done