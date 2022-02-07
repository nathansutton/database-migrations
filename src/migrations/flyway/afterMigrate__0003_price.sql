TRUNCATE price;

COPY price FROM PROGRAM 'cat /opt/transformed/*.csv' WITH CSV;

ANALYZE flyway.price;