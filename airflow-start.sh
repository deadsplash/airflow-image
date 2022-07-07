tput bold; tput setaf 5;
echo "LET'S SET ENVIRONMENT VARIABLES"
source variables.env
tput bold; tput setaf 10;
echo 'AIRFLOW_VAR_MY_PARAM: ' $AIRFLOW_VAR_MY_PARAM
echo 'AIRFLOW_VAR_CLICKHOUSE_URL:' $AIRFLOW_VAR_CLICKHOUSE_URL

echo $''
tput bold; tput setaf 5;
echo 'INIT AIRFLOW'
docker-compose -f docker-compose-local_executor.yaml up airflow-init

echo $''
tput bold; tput setaf 5;
echo 'RUN AIRFLOW'
docker-compose -f docker-compose-local_executor.yaml up -d
tput setaf 9;