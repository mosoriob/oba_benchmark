mkdir -p results
bash test_api.sh
sleep 10
bash test_api_local.sh
sleep 10
bash test_endpoint.sh
bash report.sh