-- INSERT INTO roles VALUES ('expert', TRUE);
-- INSERT INTO roles VALUES ('junior', TRUE);
--
-- INSERT INTO users VALUES ('Hannah', '12345', 'junior', TRUE);
-- INSERT INTO users VALUES ('Yahweh', '54321', 'expert', TRUE);


INSERT INTO users VALUES ('Hannah', '{noop}12345', TRUE);
INSERT INTO users VALUES ('Yahweh', '{noop}54321',  TRUE);

INSERT INTO authorities VALUES ('Yahweh', 'expert');
INSERT INTO authorities VALUES ('Hannah', 'junior');