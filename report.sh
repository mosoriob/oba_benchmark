source ./env
for i in $(find ${report_dir} -name *json); do
    filename=${i%.*}
    cat $i | ./vegeta report $i > "${filename}.txt"
    cat $i | ./vegeta report -type=hdrplot $i > "${filename}_hdrplot.txt"
    cat $i | ./vegeta plot > ${filename}.html
done