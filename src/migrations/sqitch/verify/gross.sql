-- Verify sqitch:gross on pg

BEGIN;

SELECT 1/COUNT(*) FROM information_schema.tables WHERE table_name = 'gross' AND schema_name = 'sqitch'; -- exists
SELECT 1/COUNT(1) FROM sqitch.gross; -- has rows

ROLLBACK;
