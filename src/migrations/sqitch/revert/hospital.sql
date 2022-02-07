-- Revert sqitch:hospital from pg

BEGIN;

DROP TABLE sqitch.hospital;

COMMIT;
