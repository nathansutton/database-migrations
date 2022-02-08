TRUNCATE flyway.price;

COPY flyway.price FROM PROGRAM 'cat /opt/transformed/*.csv' WITH CSV;

ANALYZE flyway.price;