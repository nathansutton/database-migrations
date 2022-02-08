## Which tool should you use for database migrations?

[![YourActionName Actions Status](https://github.com/nathansutton/database-migrations/workflows/CI/badge.svg)](https://github.com/nathansutton/database-migrations/actions)

### Choose a paradigm based on your needs.
Every data team I have worked on has had a relational database at the core of our operations. When you have a relational database, you will inevitably have to change it! This post will help you decide between three useful frameworks for versioned database migrations - sqitch, flyway, and liquibase. There is an associated repository in GitHub that walks through each implementation of the same database in a dockerized PostgreSQL database.

### Why these three?
I focused this guide on sqitch, flyway, and liquibase because they share two important characteristics. They all work with virtually any relational database - this cuts out Microsoft's excellent DACPACs. They all allow users to write migrations in plain SQL - this cuts out most ORMs implementations like Alembic and Orator. 

### Usage

Turn on the database and run all migrations with a single command

```
docker-compose up 
```

Run the flyway migrations
```
./src/bin/run-flyway-migrations.sh
```

Run the sqitch migrations
```
./src/bin/run-sqitch-migrations.sh
```

Run the liquibase migrations
```
./src/bin/run-liquibase-migrations.sh
```