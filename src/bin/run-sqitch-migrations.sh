#! /bin/bash
source .env
docker-compose run -e SQITCH_TARGET=$URI sqitch deploy db:pg://$PGUSER:$PGPASSWORD@$PGHOST:$PGPORT/$PGDATABASE 