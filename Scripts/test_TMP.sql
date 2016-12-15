--liquibase formatted sql
--changeset dgradkiewicz:1

CREATE TABLE tmp
  (
    id    NUMBER(9),
    nazwa VARCHAR2(100),
    opis  VARCHAR2(255)
  )
