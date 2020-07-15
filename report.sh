source ./env
for i in $(find ${report_dir} -name *json); do
    cat $i | ./vegeta report $i > "${i}.txt"
    cat $i | ./vegeta report -type=hdrplot $i > "${i}_hdrplot.txt"
done