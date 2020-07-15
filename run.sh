mkdir -p results
bash test_api.sh
sleep 10
bash test_api_local.sh
sleep 10
bash test_endpoint.sh
pushd results
for i in $(ls \*.bin); do 
    cat $i ./vegeta report > $i.txt
    #vegeta report -type=json $i > $i.json
    cat $i | ./vegeta -type=hdrplot > ${i}_hdrplot.txt
    #cat $i | vegeta report -type="hist[0,100ms,200ms,300ms]"
done
popd