-- Deploy sqitch:price to pg

BEGIN;

CREATE TABLE sqitch.price
(
  hospital_id           BIGINT NOT NULL,
  concept_id            INTEGER NOT NULL,
  price                 VARCHAR(20) NOT NULL,
  amount                FLOAT NOT NULL
);

COPY sqitch.price FROM PROGRAM 'cat /opt/transformed/*.csv' WITH CSV;

ANALYZE sqitch.price;

COMMIT;
