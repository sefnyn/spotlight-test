## Spotlight web application

# Requirements
docker
docker-compose

# Tested on Debian Linux (buster)

# Steps to build
1. clone repo
2. cd repo
3. docker-compose build
4. docker-compose up

This will start Apache Solr, Postgres database and Adminer web app to inspect Postgres database.

5. In separate terminal:
5.1 rake db:migrate
5.2 rails server

----------------------------------------

Solr runs on port 8983.
Adminer runs on port 8080.
Spotlight runs on port 3000.
