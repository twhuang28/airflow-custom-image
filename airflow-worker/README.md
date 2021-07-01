# how to cust aurflow base image



- clone airflow repo
- install breeze shell deps
- ref above shell

```=shell
./breeze build-image --production-image \
--python 3.6 \
--install-airflow-version="1.10.14" \
--backend postgres \
--postgres-version 12 \
--disable-mysql-client-installation \
--disable-pip-cache \
--additional-dev-apt-deps "python3-dev libldap2-dev libsasl2-dev libspatialindex-dev" \
--additional-runtime-apt-deps "gcc g++ vim slapd ldap-utils tox lcov valgrind libspatialindex-c5 libspatialindex5" \
--additional-python-deps "confluent-kafka==1.5.0 python-ldap==3.3.1 scikit-image==0.16.2 scikit-learn==0.22.1 lightgbm==2.2.1 psycopg2==2.8.4 bcrypt==3.1.7 cryptography==2.8 ddlparse>=1.4.0 descartes==1.1.0 Fiona==1.8.13.post1 lxml==4.2.5 matplotlib==3.0.3 mpmath==1.1.0 multiprocess==0.70.9 opencc-python-reimplemented==0.1.4 paramiko==2.6.0 psutil==5.4.8 psycopg2==2.8.4 PyNaCl==1.3.0 pyproj==2.5.0 pysftp==0.2.9 pytest==5.3.2 python-dateutil==2.6.1 python-Levenshtein==0.12.0 pytz==2019.1 Rtree==0.8.3 ruamel-yaml==0.15.71 requests==2.22.0 geopandas==0.4.0 pandas==0.23.4 numpy==1.17.3"
```

```
docker build -t twhuang28/airflow-worker:2.0.1-debian-10-r37-base-v1 .
docker push twhuang28/airflow-worker:2.0.1-debian-10-r37-base-v1
```
