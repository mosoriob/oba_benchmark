source ./env
for i in $(find ${report_dir} -name *json); do
    filename=${i%.*}
    cat $i | ./vegeta report $i > "${filename}.txt"
    cat $i | ./vegeta report -type=hdrplot $i > "${filename}_hdrplot.txt"
    cat $i | ./vegeta plot > ${filename}.html
    cat $i | ./vegeta report -type="hist[0,100ms,200ms,300ms,400ms,500ms,600ms,700ms,800ms,900ms,1000ms]"
done
