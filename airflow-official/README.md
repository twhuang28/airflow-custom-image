using breeze to build airflow images

- for base image
```
./breeze build-image --production-image  \
--image-tag 2.1.2-python3.6-base-v4 \
--install-airflow-version "2.1.2" \
--python 3.6 \
--backend postgres \
--postgres-version 12 \
--disable-mysql-client-installation \
--disable-pip-cache \
--additional-dev-apt-deps "python3-dev libldap2-dev libsasl2-dev libspatialindex-dev" \
--additional-runtime-apt-deps "gcc g++ vim slapd ldap-utils tox lcov valgrind libspatialindex-c5 libspatialindex5" \
--additional-python-deps "confluent-kafka==1.5.0 psycopg2==2.9.1 pytest pyspark==3.1.2 apache-airflow-providers-apache-spark==2.0.1 apache-airflow-providers-cncf-kubernetes==2.0.2"

docker tag 2.1.2-python3.6-base-v4 twhuang28/airflow:2.1.2-python3.6-base-v4

docker push twhuang28/airflow:2.1.2-python3.6-base-v4
```