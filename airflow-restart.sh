echo $''
tput bold; tput setaf 5;
echo 'RESTARTING AIRFLOW'
echo $''
docker-compose -f docker-compose-local_executor.yaml down


echo $''
tput bold; tput setaf 5;
echo 'RUN AIRFLOW'
echo $''
source variables.env
docker-compose -f docker-compose-local_executor.yaml up -d
tput setaf 9;
