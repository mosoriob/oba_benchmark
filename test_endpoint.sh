source ./env
test_name="${duration}_${max_workers}_${rate}"
name="endpoint_${test_name}"
file_name="${report_dir}/${name}"
cat post | \
    ./vegeta attack  -duration=${duration} -max-workers ${max_workers}  -rate ${rate} -name=${name} \
    ./vegeta encode > ${file_name}.json
