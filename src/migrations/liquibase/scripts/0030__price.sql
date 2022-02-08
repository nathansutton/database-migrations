--liquibase formatted sql
--changeset nsutton:price
CREATE TABLE liquibase.price
(
  hospital_id           BIGINT NOT NULL,
  concept_id            INTEGER NOT NULL,
  price                 VARCHAR(20) NOT NULL,
  amount                FLOAT NOT NULL
);

COPY liquibase.price FROM PROGRAM 'cat /opt/transformed/*.csv' WITH CSV;

ANALYZE liquibase.price;

--rollback DROP TABLE liquibase.price;
