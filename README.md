# Analysis of Polish rappers songs

App scraps data to gather information about number of words and most common words used by every polish rapper.

Command to run app: `docker-compose up`

### ------(DEV stage)------

Use URL `/setup` to fill db with needed data at this stage of development.

URL `/download/{musician}` - scraps data and saves it to db

URL `/{musician}` displays data from db
