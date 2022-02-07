#! /bin/bash
docker-compose run flyway flyway migrate -locations=filesystem:/flyway/migrations/flyway -schemas=flyway
