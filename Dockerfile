FROM bitnami/airflow-worker:2.0.1-debian-10-r37
USER root

COPY . .

ENV AIRFLOW_VERSION 2.0.1
# ENV PYTHON_VERSION "$(python --version | cut -d " " -f 2 | cut -d "." -f 1-2)"
ENV CONSTRAINT_URL "https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-3.8.txt"

RUN apt-get update && apt-get install -y libpq-dev gcc

RUN apt-get install -y libsasl2-dev python-dev libldap2-dev libssl-dev
RUN pip3 install "apache-airflow[amazon, postgres, kubernetes]==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"

RUN pip3 install -r requirements.txt

