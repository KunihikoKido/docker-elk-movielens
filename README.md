# docker-elk-movielens
This is sample project for study of elasticsearch.

## Requirements

### Host setup

- Install Docker / Docker Compose
- Clone this repository

## Usage

### Bringing up the stack

Start the MovieLens stack using docker-compose:

```sh
$ docker-compose up
```
You can also choose to run it in background (detached mode):

```
$ docker-compose up -d
```
Give Kibana about 2 minutes to initialize, then access the Kibana web UI by hitting http://localhost:5601 with a web browser.

By default, the stack exposes the following ports:

9200: Elasticsearch HTTP
9300: Elasticsearch TCP transport
5601: Kibana
3306: MySQL
