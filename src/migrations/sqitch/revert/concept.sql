-- Revert sqitch:concept from pg

BEGIN;

DROP TABLE sqitch.concept;

COMMIT;
