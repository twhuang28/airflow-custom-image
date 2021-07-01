FROM bitnami/airflow:2.1.0-debian-10-r20
USER root
WORKDIR /app

COPY . .

RUN apt-get update 
RUN apt-get install -y libpq-dev gcc g++ libsasl2-dev python-dev libldap2-dev libssl-dev

ENV AIRFLOW_VERSION 2.1.0
ENV PYTHON_VERSION 3.8
ENV CONSTRAINT_URL "https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-${PYTHON_VERSION}.txt"
RUN pip install "apache-airflow[async,apache-spark,http,redis,postgres,ftp,sftp,amazon,kubernetes]==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"

RUN pip3 install -r requirements.txt

WORKDIR /opt/bitnami/airflow/dags/git-dags-repo/
