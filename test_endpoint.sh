source params.sh
test_name="${duration}_${max_workers}_${rate}"
name="api_cached_disabled_${test_name}"
file_name="${name}"
cat post | \
    ./vegeta attack  -duration=${duration} -max-workers ${max_workers}  -rate ${rate} -name=${name} |\
    tee ${file_name}.bin | ./vegeta report > ${file_name}.txt