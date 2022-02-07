-- Verify sqitch:hospital on pg

BEGIN;

SELECT 1/COUNT(*) FROM information_schema.tables WHERE table_name = 'hospital' AND schema_name = 'sqitch'; -- exists
SELECT 1/COUNT(1) FROM sqitch.hospital; -- has rows

ROLLBACK;
