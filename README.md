# Spotlight web application

Code from https://github.com/projectblacklight/spotlight.git

Persistent Solr and Postgres data stored in ../spotlight-test/data

**Tested on Debian Linux (buster) only**

## Requirements
- docker 
- docker-compose 

## Docker images from Docker hub
- postgres
- adminer
- solr:8

## Steps to build
1. clone repo
2. cd repo
3. sudo chown 8983:8983 -R data/solrdata # needed to allow Solr to start
4. docker-compose build
5. docker-compose up

Step 5 will start Apache Solr, Postgres database and Adminer web app to inspect Postgres database.

6. In separate terminal:
- rake db:migrate
- rails server

## While running

Solr runs on port 8983.

Postgres runs on port 5432.

Adminer runs on port 8080.

Spotlight runs on port 3000.
