FROM bitnami/airflow:2.1.0-debian-10-r20
WORKDIR /app

COPY requirements.txt .

USER root
RUN apt-get update \
  && apt-get install -y libpq-dev gcc g++ libsasl2-dev python-dev libldap2-dev libssl-dev \
  && rm -rf /var/lib/apt/lists/*
ENV AIRFLOW_VERSION 2.1.0
ENV PYTHON_VERSION 3.8
ENV CONSTRAINT_URL "https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-${PYTHON_VERSION}.txt"
RUN pip3 install --no-cache-dir "apache-airflow[async,apache-spark,http,redis,postgres,ftp,sftp,amazon,kubernetes]==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"
RUN pip3 install --no-cache-dir -r requirements.txt
USER 1001
WORKDIR /opt/bitnami/airflow/dags/git-dags-repo/
