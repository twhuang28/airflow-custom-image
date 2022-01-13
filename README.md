# Airflow base image 
- using ./breeze to build airflow images

## Build base image
```
./breeze build-image --production-image  \
--image-tag twhuang28/airflow:2.1.2-python3.6-base-v7 \
--install-airflow-version "2.1.2" \
--python 3.6 \
--backend postgres \
--postgres-version 12 \
--disable-mysql-client-installation \
--disable-pip-cache \
--additional-dev-apt-deps "libldap2-dev libsasl2-dev libspatialindex-dev" \
--additional-runtime-apt-deps "gcc g++ vim slapd ldap-utils tox lcov valgrind libspatialindex-c5 libspatialindex5 python3-dev libpq-dev lftp" \
--additional-python-deps "confluent-kafka==1.5.0 psycopg2==2.9.1 pytest pyspark==3.1.2 apache-airflow-providers-apache-spark==2.0.1 apache-airflow-providers-cncf-kubernetes==2.0.2" \
--kind-version v0.11.1 \
--helm-version v3.6.3

docker push twhuang28/airflow:2.1.2-python3.6-base-v7
```

## Packages in airflow base image 
```
dal                                      1.2.7
alembic                                  1.6.5
amqp                                     2.6.1
anyio                                    3.2.1
apache-airflow                           2.1.2
apache-airflow-providers-amazon          2.2.0
apache-airflow-providers-apache-spark    2.0.1
apache-airflow-providers-celery          2.0.0
apache-airflow-providers-cncf-kubernetes 2.0.2
apache-airflow-providers-docker          2.2.0
apache-airflow-providers-elasticsearch   2.0.3
apache-airflow-providers-ftp             2.0.1
apache-airflow-providers-google          4.0.0
apache-airflow-providers-grpc            2.0.1
apache-airflow-providers-hashicorp       2.1.1
apache-airflow-providers-http            2.0.0
apache-airflow-providers-imap            2.0.1
apache-airflow-providers-microsoft-azure 3.2.0
apache-airflow-providers-odbc            2.0.1
apache-airflow-providers-postgres        2.3.0
apache-airflow-providers-redis           2.0.1
apache-airflow-providers-sendgrid        2.0.1
apache-airflow-providers-sftp            2.1.1
apache-airflow-providers-slack           4.1.0
apache-airflow-providers-sqlite          2.0.1
apache-airflow-providers-ssh             2.2.0
apispec                                  3.3.2
appdirs                                  1.4.4
argcomplete                              1.12.3
async-generator                          1.10
attrs                                    20.3.0
azure-batch                              10.0.0
azure-common                             1.1.27
azure-core                               1.16.0
azure-cosmos                             3.2.0
azure-datalake-store                     0.0.52
azure-identity                           1.6.0
azure-keyvault                           4.1.0
azure-keyvault-certificates              4.3.0
azure-keyvault-keys                      4.4.0
azure-keyvault-secrets                   4.3.0
azure-kusto-data                         0.0.45
azure-mgmt-containerinstance             1.5.0
azure-mgmt-core                          1.3.0
azure-mgmt-datafactory                   1.1.0
azure-mgmt-datalake-nspkg                3.0.1
azure-mgmt-datalake-store                0.5.0
azure-mgmt-nspkg                         3.0.2
azure-mgmt-resource                      18.0.0
azure-nspkg                              3.0.2
azure-storage-blob                       12.8.1
azure-storage-common                     2.1.0
azure-storage-file                       2.1.0
Babel                                    2.9.1
bcrypt                                   3.2.0
billiard                                 3.6.4.0
blinker                                  1.4
boto3                                    1.17.107
botocore                                 1.20.107
cached-property                          1.5.2
cachetools                               4.2.2
cattrs                                   1.0.0
celery                                   4.4.7
certifi                                  2020.12.5
cffi                                     1.14.5
chardet                                  3.0.4
click                                    7.1.2
clickclick                               20.10.2
cloudpickle                              1.4.1
colorama                                 0.4.4
colorlog                                 5.0.1
commonmark                               0.9.1
confluent-kafka                          1.5.0
contextvars                              2.4
croniter                                 1.0.15
cryptography                             3.4.7
dask                                     2021.3.0
dataclasses                              0.8
decorator                                5.0.9
defusedxml                               0.7.1
dill                                     0.3.1.1
distlib                                  0.3.2
distributed                              2.19.0
dnspython                                1.16.0
docker                                   5.0.0
docutils                                 0.16
elasticsearch                            7.13.1
elasticsearch-dbapi                      0.2.4
elasticsearch-dsl                        7.3.0
email-validator                          1.1.3
eventlet                                 0.31.0
filelock                                 3.0.12
Flask                                    1.1.4
Flask-AppBuilder                         3.3.1
Flask-Babel                              1.0.0
Flask-Caching                            1.10.1
Flask-JWT-Extended                       3.25.1
Flask-Login                              0.4.1
Flask-OAuthlib                           0.9.5
Flask-OpenID                             1.3.0
Flask-SQLAlchemy                         2.5.1
Flask-WTF                                0.14.3
flower                                   0.9.7
gevent                                   21.1.2
google-ads                               4.0.0
google-api-core                          1.30.0
google-api-python-client                 1.12.8
google-auth                              1.32.1
google-auth-httplib2                     0.1.0
google-auth-oauthlib                     0.4.4
google-cloud-appengine-logging           0.1.1
google-cloud-audit-log                   0.1.0
google-cloud-automl                      2.3.0
google-cloud-bigquery                    2.20.0
google-cloud-bigquery-datatransfer       3.2.0
google-cloud-bigquery-storage            2.5.0
google-cloud-bigtable                    1.7.0
google-cloud-container                   1.0.1
google-cloud-core                        1.7.1
google-cloud-datacatalog                 3.2.1
google-cloud-dataproc                    2.4.0
google-cloud-dlp                         1.0.0
google-cloud-kms                         2.3.0
google-cloud-language                    1.3.0
google-cloud-logging                     2.5.0
google-cloud-memcache                    1.0.0
google-cloud-monitoring                  2.4.0
google-cloud-os-login                    2.2.1
google-cloud-pubsub                      2.6.0
google-cloud-redis                       2.1.1
google-cloud-secret-manager              1.0.0
google-cloud-spanner                     1.19.1
google-cloud-speech                      1.3.2
google-cloud-storage                     1.40.0
google-cloud-tasks                       2.4.0
google-cloud-texttospeech                1.0.1
google-cloud-translate                   1.7.0
google-cloud-videointelligence           1.16.1
google-cloud-vision                      1.0.0
google-cloud-workflows                   1.1.0
google-crc32c                            1.1.2
google-resumable-media                   1.3.1
googleapis-common-protos                 1.53.0
graphviz                                 0.16
greenlet                                 1.1.0
grpc-google-iam-v1                       0.12.3
grpcio                                   1.38.1
grpcio-gcp                               0.2.2
gunicorn                                 20.1.0
h11                                      0.12.0
HeapDict                                 1.0.1
httpcore                                 0.13.6
httplib2                                 0.19.1
httpx                                    0.18.2
humanize                                 3.10.0
hvac                                     0.10.14
idna                                     2.10
immutables                               0.15
importlib-metadata                       1.7.0
importlib-resources                      1.5.0
inflection                               0.5.1
iniconfig                                1.1.1
iso8601                                  0.1.14
isodate                                  0.6.0
itsdangerous                             1.1.0
Jinja2                                   2.11.3
jmespath                                 0.10.0
json-merge-patch                         0.2
jsonpath-ng                              1.5.3
jsonschema                               3.2.0
kombu                                    4.6.11
kubernetes                               11.0.0
lazy-object-proxy                        1.4.3
ldap3                                    2.9
libcst                                   0.3.19
lockfile                                 0.12.2
Mako                                     1.1.4
Markdown                                 3.3.4
MarkupSafe                               1.1.1
marshmallow                              3.12.2
marshmallow-enum                         1.5.1
marshmallow-oneofschema                  3.0.0
marshmallow-sqlalchemy                   0.23.1
msal                                     1.12.0
msal-extensions                          0.3.0
msgpack                                  1.0.2
msrest                                   0.6.21
msrestazure                              0.6.4
mypy-extensions                          0.4.3
numpy                                    1.19.5
oauthlib                                 2.1.0
openapi-schema-validator                 0.1.5
openapi-spec-validator                   0.3.1
packaging                                20.9
pandas                                   1.1.5
pandas-gbq                               0.14.1
paramiko                                 2.7.2
pendulum                                 2.1.2
pep562                                   1.1
pip                                      21.2.4
pluggy                                   1.0.0
ply                                      3.11
portalocker                              1.7.1
prison                                   0.1.3
prometheus-client                        0.8.0
proto-plus                               1.19.0
protobuf                                 3.17.3
psutil                                   5.8.0
psycopg2                                 2.9.1
psycopg2-binary                          2.9.1
py                                       1.10.0
py4j                                     0.10.9
pyarrow                                  3.0.0
pyasn1                                   0.4.8
pyasn1-modules                           0.2.8
pycparser                                2.20
pydata-google-auth                       1.2.0
Pygments                                 2.9.0
PyJWT                                    1.7.1
PyNaCl                                   1.4.0
pyodbc                                   4.0.31
pyOpenSSL                                19.1.0
pyparsing                                2.4.7
pyrsistent                               0.18.0
pysftp                                   0.2.9
pyspark                                  3.1.2
pytest                                   6.2.5
python-daemon                            2.3.0
python-dateutil                          2.8.1
python-editor                            1.0.4
python-http-client                       3.3.2
python-ldap                              3.3.1
python-nvd3                              0.15.0
python-slugify                           4.0.1
python3-openid                           3.2.0
pytz                                     2021.1
pytzdata                                 2020.1
PyYAML                                   5.4.1
redis                                    3.5.3
requests                                 2.25.1
requests-oauthlib                        1.1.0
rfc3986                                  1.5.0
rich                                     10.5.0
rsa                                      4.7.2
s3transfer                               0.4.2
sendgrid                                 6.7.1
setproctitle                             1.2.2
setuptools                               57.5.0
six                                      1.16.0
slack-sdk                                3.7.0
sniffio                                  1.2.0
sortedcontainers                         2.4.0
SQLAlchemy                               1.3.24
SQLAlchemy-JSONField                     1.0.0
SQLAlchemy-Utils                         0.37.8
sshtunnel                                0.1.5
starkbank-ecdsa                          1.1.1
statsd                                   3.3.0
swagger-ui-bundle                        0.0.8
tabulate                                 0.8.9
tblib                                    1.7.0
tenacity                                 6.2.0
termcolor                                1.1.0
text-unidecode                           1.3
toml                                     0.10.2
toolz                                    0.11.1
tornado                                  6.1
typing                                   3.7.4.3
typing-extensions                        3.7.4.3
typing-inspect                           0.7.1
unicodecsv                               0.14.1
uritemplate                              3.0.1
urllib3                                  1.25.11
vine                                     1.3.0
virtualenv                               20.4.7
watchtower                               1.0.6
websocket-client                         1.1.0
Werkzeug                                 1.0.1
wheel                                    0.37.0
WTForms                                  2.3.3
zict                                     2.0.0
zipp                                     3.5.0
zope.event                               4.5.0
zope.interface                           5.4.0
```

## Build base image with lftp
```
./breeze build-image --production-image  \
--image-tag twhuang28/airflow:2.1.2-python3.6-lftp \
--install-airflow-version "2.1.2" \
--python 3.6 \
--backend postgres \
--postgres-version 12 \
--disable-mysql-client-installation \
--disable-pip-cache \
--additional-dev-apt-deps "libldap2-dev libsasl2-dev libspatialindex-dev" \
--additional-runtime-apt-deps "gcc g++ vim slapd ldap-utils tox lcov valgrind libspatialindex-c5 libspatialindex5 python3-dev libpq-dev lftp" \
--additional-python-deps "psycopg2==2.9.1 pytest apache-airflow-providers-cncf-kubernetes==2.0.2" \
--kind-version v0.11.1 \
--helm-version v3.6.3
```