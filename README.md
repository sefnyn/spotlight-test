## Spotlight web application

Code from https://github.com/projectblacklight/spotlight.git

# Requirements
- docker (for Linux)
- docker-compose (for Linux)

# Tested on Debian Linux (buster)

# Steps to build
1. clone repo
2. cd repo
3. docker-compose build
4. docker-compose up

Step 4 will start Apache Solr, Postgres database and Adminer web app to inspect Postgres database.

5. In separate terminal:
- rake db:migrate
- rails server

----------------------------------------

Solr runs on port 8983.

Adminer runs on port 8080.

Spotlight runs on port 3000.
