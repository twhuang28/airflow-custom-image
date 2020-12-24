FROM arthurma/airflow:1.10.12-fat

USER root

RUN \
  apt-get update \
  && apt-get install -y vim libldap2-dev libsasl2-dev slapd ldap-utils tox lcov valgrind libspatialindex-dev

USER airflow

COPY requirements.txt /tmp/requirements.txt
RUN \
   pip3 install -r /tmp/requirements.txt --user
