DROP DATABASE IF EXISTS explore_the_world;
CREATE DATABASE explore_the_world;

c\ explore_the_world

CREATE TABLE continents
(
    continent_id SERIAL PRIMARY KEY,
    continent VARCHAR(20),
);

INSERT INTO continents
    (continent)
VALUES
    ('Europe'),
    ('Asia'),
    ('N.America'),
    ('S.America'),
    ('Africa'),
    ('Oceania');

SELECT *
FROM continents;