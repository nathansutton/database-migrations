TRUNCATE flyway.hospital;

COPY flyway.hospital FROM '/opt/dim/hospital.csv' WITH CSV HEADER;

ANALYZE flyway.hospital;