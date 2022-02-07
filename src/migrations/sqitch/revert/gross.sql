-- Revert sqitch:gross from pg

BEGIN;

DROP TABLE sqitch.gross;

COMMIT;
