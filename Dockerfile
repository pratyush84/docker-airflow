FROM apache/airflow

USER root

RUN apt-get update && apt-get install -y default-jdk default-jre

USER airflow

RUN pip install apache-airflow-providers-apache-spark

ENV JAVA_HOME=/usr/lib/jvm/default-java