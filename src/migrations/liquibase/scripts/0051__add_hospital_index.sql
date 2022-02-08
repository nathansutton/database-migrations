--liquibase formatted sql
--changeset nsutton:add_hospital_index
CREATE UNIQUE INDEX idx_liquibase_hospital_hospital_id ON liquibase.hospital (hospital_id ASC);

--rollback DROP INDEX idx_sqitch_hospital_hospital_id;

