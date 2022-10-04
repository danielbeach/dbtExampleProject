FROM python:3

WORKDIR app
COPY . /app

COPY .dbt/profiles.yml /app/.dbt/profiles.yml

RUN pip3 install dbt-postgres==1.2.2
