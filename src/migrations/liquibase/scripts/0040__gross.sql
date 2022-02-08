--liquibase formatted sql
--changeset nsutton:gross
CREATE TABLE liquibase.gross
(
  concept_id            INTEGER NOT NULL,
  atrium_health         FLOAT,
  novant_health         FLOAT,
  first_health          FLOAT,
  unc_health            FLOAT,
  caromont_health       FLOAT,
  arhs_health           FLOAT,
  vidant_health         FLOAT,
  duke_health           FLOAT,
  hca_health            FLOAT
);

INSERT INTO liquibase.gross
SELECT DISTINCT
    concept_id
  , CEILING(CASE WHEN price = 'gross' AND affiliation = 'Atrium Health' THEN amount ELSE NULL END) AS atrium_health
  , CEILING(CASE WHEN price = 'gross' AND affiliation = 'Novant Health' THEN amount ELSE NULL END) AS novant_health
  , CEILING(CASE WHEN price = 'gross' AND affiliation = 'FirstHealth' THEN amount ELSE NULL END) AS first_health
  , CEILING(CASE WHEN price = 'gross' AND affiliation = 'UNC Health' THEN amount ELSE NULL END) AS unc_health
  , CEILING(CASE WHEN price = 'gross' AND affiliation = 'CaroMont Health' THEN amount ELSE NULL END) AS caromont_health
  , CEILING(CASE WHEN price = 'gross' AND affiliation = 'Appalachian Regional Healthcare System' THEN amount ELSE NULL END) AS arhs_health
  , CEILING(CASE WHEN price = 'gross' AND affiliation = 'Vidant' THEN amount ELSE NULL END) AS vidant_health
  , CEILING(CASE WHEN price = 'gross' AND affiliation = 'Duke Health' THEN amount ELSE NULL END) AS duke_health
  , CEILING(CASE WHEN price = 'gross' AND affiliation = 'HCA' THEN amount ELSE NULL END) AS hca_health
FROM liquibase.price
JOIN liquibase.hospital
  USING(hospital_id)
;

ANALYZE liquibase.gross;

--rollback DROP TABLE liquibase.gross;
