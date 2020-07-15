source ./env
mkdir -p ${report_dir}
bash test_api.sh
sleep ${sleep_time}
bash test_api_local.sh
sleep ${sleep_time}
bash test_endpoint.sh
bash report.sh