FROM arthurma/airflow:v1.10.14-python3.6

USER root

RUN \
  apt-get update \
  && apt-get install -y gcc g++ python3-dev vim libldap2-dev libsasl2-dev slapd ldap-utils tox lcov valgrind libspatialindex-dev

USER airflow

COPY requirements.txt /tmp/requirements.txt
RUN \
   pip3 install -r /tmp/requirements.txt --user
