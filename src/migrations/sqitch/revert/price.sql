-- Revert sqitch:price from pg

BEGIN;

DROP TABLE sqitch.price;

COMMIT;
