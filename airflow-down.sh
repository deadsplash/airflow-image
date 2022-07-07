echo $''
tput bold; tput setaf 5;
echo 'SHUTTING DOWN AIRFLOW'
echo $''
docker-compose -f docker-compose-local_executor.yaml down

