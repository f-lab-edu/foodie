DROP TABLE IF EXISTS USER;

CREATE TABLE if not exists USER
(
    ID           VARCHAR(20) UNIQUE NOT NULL,
    PASSWORD     VARCHAR(60)        NOT NULL,
    NAME         VARCHAR(60)        NOT NULL,
    PHONE_NUMBER VARCHAR(14)        NOT NULL,
    EMAIL        VARCHAR(60),
    PRIMARY KEY (`ID`)
);