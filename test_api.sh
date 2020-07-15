source env
test_name="${duration}_${max_workers}_${rate}"
name="api_cached_enabled_${test_name}"
file_name="${report_dir}/${name}"
echo "GET https://api.models.mint.isi.edu/v1.5.0/parameters?username=mint%40isi.edu&page=1&per_page=100" | \
    ./vegeta attack  -duration=${duration} -max-workers ${max_workers}  -rate ${rate} -name=${name} \ |
    ./vegeta encode > ${file_name}