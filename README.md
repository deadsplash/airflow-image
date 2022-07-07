# Running Airflow in Docker

For running Airflow:
```shell
bash airflow-start.sh
```

Listening at: `http://0.0.0.0:8080`


File `variables.env` looks like
```shell
export AIRFLOW_VAR_CLICKHOUSE_URL='***'
```

ClickHouse Operator sourse:
https://github.com/whisklabs/airflow-clickhouse-plugin