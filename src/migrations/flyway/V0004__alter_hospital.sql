ALTER TABLE flyway.hospital ADD CONSTRAINT xpk_flyway_hospital PRIMARY KEY (hospital_id);

CREATE UNIQUE INDEX idx_flyway_hospital_hospital_id ON flyway.hospital (hospital_id ASC);
