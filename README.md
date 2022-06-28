# Analysis of Polish rappers songs

App scraps data to gather information about number of words and most common words used by every polish rapper.

### Run in production mode

Command to run app: `docker-compose up`

### Run in development mode

Command to run app: `docker-compose -f dev.docker-compose.yaml up`

Command to fill db: `cat postgres-data/dump_rappers_ranking.sql | docker exec -i db psql -U postgres -d rappers`

