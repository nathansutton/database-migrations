--liquibase formatted sql
--changeset nsutton:hospital
CREATE TABLE liquibase.hospital
(
  hospital_id           BIGINT NOT NULL,
  hospital_name         VARCHAR(500),
  hospital_npi          VARCHAR(15),
  city                  VARCHAR(50) NULL,
  state                 VARCHAR(2) NULL,
  critical_access_ind   INTEGER,
  affiliation           VARCHAR(100) NULL,
  pricing_url           VARCHAR(500) NULL
);

COPY liquibase.hospital FROM '/opt/dim/hospital.csv' WITH CSV HEADER;

ANALYZE liquibase.hospital;

--rollback DROP TABLE liquibase.hospital;
