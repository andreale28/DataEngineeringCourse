FROM python:3.9.13

RUN apt-get install wget
RUN pip install --upgrade pip
RUN pip install pandas sqlalchemy psycopg2

WORKDIR /app
COPY ingest_data.py ingest_data.py

ENTRYPOINT [ "python", "ingest_data.py"]

# This dockerfile is used for running docker run command to run a docker container
# and ingest data automatically.
# Since I opt to ingest data in .ipynb notebook, this file is for reference purpose