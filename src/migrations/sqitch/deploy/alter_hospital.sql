-- Deploy sqitch:alter_hospital to pg

BEGIN;

ALTER TABLE sqitch.hospital ADD CONSTRAINT xpk_sqitch_hospital PRIMARY KEY (hospital_id);

CREATE UNIQUE INDEX idx_sqitch_hospital_hospital_id ON sqitch.hospital (hospital_id ASC);

COMMIT;
