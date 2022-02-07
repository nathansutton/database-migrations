-- Revert sqitch:alter_hospital from pg

BEGIN;

ALTER TABLE sqitch.hospital DROP CONSTRAINT xpk_sqitch_hospital;

DROP INDEX idx_sqitch_hospital_hospital_id;

COMMIT;
