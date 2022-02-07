-- Verify sqitch:concept on pg

BEGIN;

SELECT 1/COUNT(*) FROM information_schema.tables WHERE table_name = 'concept' AND schema_name = 'sqitch'; -- exists
SELECT 1/COUNT(1) FROM sqitch.concept; -- has rows

ROLLBACK;
