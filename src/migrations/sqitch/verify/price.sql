-- Verify sqitch:price on pg

BEGIN;

SELECT 1/COUNT(*) FROM information_schema.tables WHERE table_name = 'price' AND schema_name = 'sqitch'; -- exists
SELECT 1/COUNT(1) FROM sqitch.price; -- has rows

ROLLBACK;
