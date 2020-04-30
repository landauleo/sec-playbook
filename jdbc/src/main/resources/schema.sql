CREATE TABLE IF NOT EXISTS roles
(
    name varchar(50) NOT NULL PRIMARY KEY,
    enabled  boolean
);

CREATE TABLE IF NOT EXISTS users
(
    username varchar(50) NOT NULL PRIMARY KEY,
    password varchar(50) NOT NULL,
    role varchar    NOT NULL REFERENCES roles (name),
    enabled  boolean
);

CREATE UNIQUE INDEX ix_auth_username ON users (username, role);
