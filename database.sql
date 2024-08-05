CREATE DATABASE belajar_spring_restful-api;

USE belajar_spring_restful;

CREATE TABLE users (
    username VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    token VARCHAR(100),
    token_expired_at BIGINT,
    PRIMARY KEY (username),
    UNIQUE (token)
) ENGINE InnoDB;

CREATE TABLE contacts (
    id VARCHAR(100) NOT NULL,
    contact_id VARCHAR(100) NOT NULL,
    phone VARCHAR(50)
)