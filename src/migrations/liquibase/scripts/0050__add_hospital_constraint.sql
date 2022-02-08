--liquibase formatted sql
--changeset nsutton:add_hospital_constraint
ALTER TABLE liquibase.hospital ADD CONSTRAINT xpk_liquibase_hospital PRIMARY KEY (hospital_id);

--rollback ALTER TABLE sqitch.hospital DROP CONSTRAINT xpk_sqitch_hospital;

