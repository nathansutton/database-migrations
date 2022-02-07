-- Verify sqitch:alter_hospital on pg

BEGIN;

SELECT 1/COUNT(*) FROM information_schema.table_constraints 
WHERE 
    table_name = 'hospital' 
    AND schema_name = 'sqitch'
    AND constraint_type = 'PRIMARY KEY'
    AND constraint_name = 'xpk_sqitch_hospital'
; -- exists

SELECT 1/COUNT(*) FROM pg_indexes
WHERE 
    tablename = 'hospital' 
    AND schemaname = 'sqitch'
    AND indexname = 'idx_sqitch_hospital_hospital_id'
; -- exists


ROLLBACK;
