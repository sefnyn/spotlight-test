# Spotlight web application

Quickly build a Spotlight web app using Docker images and a snapshot of the code repo.  Persistent Solr and Postgres data stored in ../spotlight-on-docker/data

Code repo: https://github.com/projectblacklight/spotlight.git

Product web site: http://spotlight.projectblacklight.org/

Tested on:
- Debian Linux (buster)
- MacOS Catalina

## Requirements
- ruby 2.5.5
- bundler
- docker 
- docker-compose 
- java
- ImageMagick (http://www.imagemagick.org/script/index.php)

## MacOS extra requirements
- homebrew
- brew install nodejs
- brew install postgresql

## Docker images from Docker hub (for information only)
- solr:8
- postgres
- adminer (web app to inspect a Postgres database)

## Steps to build
1. clone repo
2. cd spotlight-on-docker
3. bundle install
4. sudo chown -R 8983:8983 data/solrdata # Linux only; needed to allow Solr to start
5. docker-compose build
6. docker-compose up

This will start Apache Solr, Postgres database and Adminer.

## Start Spotlight 
In separate terminal:
- cd spotlight-on-docker
- rake db:migrate  # creates 29 tables in database
- rails server

## If all goes well...  :)

Solr runs on port 8983.

Postgres runs on port 5432.

Adminer runs on port 8080.  Database name: postgres; Username/password: postgres/password

Spotlight runs on port 3000.
