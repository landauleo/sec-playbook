-- CREATE TABLE roles
-- (
--     name varchar(50) NOT NULL PRIMARY KEY,
--     enabled  boolean
-- );
--
-- CREATE TABLE users
-- (
--     username varchar(50) NOT NULL PRIMARY KEY,
--     password varchar(50) NOT NULL,
--     role varchar    NOT NULL REFERENCES roles (name),
--     enabled  boolean
-- );

-- CREATE UNIQUE INDEX ix_auth_username ON users (username, role);

CREATE TABLE users
(
    username varchar(500) NOT NULL PRIMARY KEY,
    password varchar(500) NOT NULL,
    enabled  boolean     NOT NULL
);

CREATE TABLE authorities
(
    username  varchar(500) NOT NULL,
    authority varchar(500) NOT NULL,
    CONSTRAINT fk_authorities_users FOREIGN KEY (username) REFERENCES users (username)
);
CREATE UNIQUE INDEX ix_auth_username ON authorities (username, authority);