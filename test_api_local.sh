source params.sh
test_name="${duration}_${max_workers}_${rate}"
name="api_cached_disabled_${test_name}"
file_name="${name}"
echo "GET http://localhost:18080/v1.5.0/parameters?username=mint%40isi.edu&page=1&per_page=100" | \
    ./vegeta attack  -duration=${duration} -max-workers ${max_workers}  -rate ${rate} -name=${name} | \
    tee ${file_name}.bin | ./vegeta report > ${file_name}.txt
