# Spotlight web application

Code from https://github.com/projectblacklight/spotlight.git

Persistent Solr and Postgres data stored in ../spotlight-test/data

**Tested on Debian Linux (buster) only**

## Requirements
- docker 
- docker-compose 
- java
- ImageMagick (http://www.imagemagick.org/script/index.php)

## Docker images from Docker hub (for information only)
- solr:8
- postgres
- adminer (web app to inspect a Postgres database)

## Steps to build
1. clone repo
2. cd spotlight-test
3. sudo chown -R 8983:8983 data/solrdata # needed to allow Solr to start
4. docker-compose build
5. docker-compose up

This will start Apache Solr, Postgres database and Adminer.

## Start Spotlight 
In separate terminal:
- cd spotlight-test
- rake db:migrate
- rails server

## If all goes well...  :)

Solr runs on port 8983.

Postgres runs on port 5432.

Adminer runs on port 8080.

Spotlight runs on port 3000.
