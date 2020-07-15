source params.sh
mkdir -p results
bash test_api.sh
sleep ${sleep_time}
bash test_api_local.sh
sleep ${sleep_time}
bash test_endpoint.sh
bash report.sh