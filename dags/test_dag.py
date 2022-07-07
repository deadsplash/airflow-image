import logging
import datetime
from airflow.decorators import dag
from airflow.models import Variable
from airflow.operators.python import PythonOperator


logger = logging.getLogger(__name__)


default_args = {
    'owner': 'airflow',
    'email': None,
    'email_on_failure': False,
    'email_on_retry': False,
}


def python_func():
    param = Variable.get('test_variable')
    logger.info(f'Param: {param}')


@dag(
    dag_id='airflow_python_test_dag',
    schedule_interval='@daily',
    default_args=default_args,
    start_date=datetime.datetime(2022, 6, 3),
    max_active_runs=1,
    catchup=True,
    concurrency=3,
    tags=['test', 'python']
)
def task_flow():

    task = PythonOperator(
        task_id='vars_pull_test',
        python_callable=python_func
    )


dag_task_flow = task_flow()
