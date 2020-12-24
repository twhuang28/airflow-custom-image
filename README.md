# how to cust aurflow base image



- clone airflow repo
- install breeze shell deps
- ./breeze build-image --production-image --python 3.6 --install-airflow-version="1.10.14" --additional-python-deps "psycopg2==2.8.4"
