TRUNCATE flyway.concept;

COPY flyway.concept FROM PROGRAM 'gunzip -c /opt/dim/CONCEPT.csv.gz' WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b' ;

ANALYZE flyway.concept;