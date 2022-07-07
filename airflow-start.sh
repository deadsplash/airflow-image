tput bold; tput setaf 5;
echo "LET'S SET ENVIRONMENT VARIABLES"
source variables.env
tput bold; tput setaf 10;

echo $''
tput bold; tput setaf 5;
echo 'INIT AIRFLOW'
docker-compose -f docker-compose-local_executor.yaml up airflow-init

echo $''
tput bold; tput setaf 5;
echo 'RUN AIRFLOW'
echo $''
docker-compose -f docker-compose-local_executor.yaml up -d
tput setaf 9;
echo 'AIRFLOW_VAR_TEST_VARIABLE:' $AIRFLOW_VAR_TEST_VARIABLE