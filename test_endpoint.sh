source params.sh
test_name="${duration}_${max_workers}_${rate}"
name="api_cached_disabled_${test_name}"
file_name="results/${name}.json"
cat post | \
    ./vegeta attack  -duration=${duration} -max-workers ${max_workers}  -rate ${rate} -name=${name} \
    ./vegeta encode > ${file_name}