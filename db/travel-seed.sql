DROP DATABASE IF EXISTS explore_the_world;
CREATE DATABASE explore_the_world;

\c explore_the_world

CREATE TABLE continents
(
    continent_id SERIAL PRIMARY KEY,
    continent VARCHAR(20)
);

INSERT INTO continents
    (continent)
VALUES
    ('Europe'),
    --1 
    ('Asia'),
    --2
    ('N.America'),
    --3
    ('S.America'),
    --4 
    ('Africa'),
    --5
    ('Oceania');
--6

CREATE TABLE countries
(
    country_id SERIAL PRIMARY KEY,
    country VARCHAR(40),
    continent_id INT REFERENCES continents(continent_id)
);

INSERT INTO countries
    (country, continent_id)
VALUES
    ('England', 1),
    ('Spain', 1),
    ('Portugal', 1),
    ('Austria', 1),
    ('Switzerland', 1),
    ('Germany', 1),
    ('Italy', 1),
    ('Netherlands', 1),
    ('Belgium', 1),
    ('Japan', 2),
    ('China', 2),
    ('Malaysia', 2),
    ('Thailand', 2),
    ('Vietnam', 2),
    ('Canada', 3),
    ('USA', 3),
    ('Peru', 4),
    ('Malawi', 5),
    ('Australia', 6);

CREATE TABLE cities
(
    cities_id SERIAL PRIMARY KEY,
    city VARCHAR(50),
    country_id INT REFERENCES countries(country_id)
);

INSERT INTO cities
    (city, country_id)
VALUES
    ('London', 1),
    ('Manchester', 1),
    ('Barcelona', 2),
    ('Santiago de Campostela', 2),
    ('Faro', 3),
    ('Lagos', 3),
    ('Graz', 4),
    ('Vienna', 4),
    ('Interlaken', 5),
    ('Lucerne', 5),
    ('Berlin', 6),
    ('Frankfurt', 6),
    ('Venice', 7),
    ('Florence', 7),
    ('Amsterdam', 8),
    ('Rotterdam', 8),
    ('Brussels', 9),
    ('Tokyo', 10),
    ('Kyoto', 10),
    ('Beijing', 11),
    ('Dalian', 11),
    ('Kuala Lumpur', 12),
    ('Chiang Mai', 13),
    ('Koh Samui', 13),
    ('Ho Chi Minh', 14),
    ('Toronto', 15),
    ('Vancouver', 15),
    ('New York', 16),
    ('Las Vegas', 16),
    ('Lima', 17),
    ('Lilongwe', 18),
    ('Sydney', 19),
    ('Melbourne', 19);

CREATE TABLE categories
(
    category_id SERIAL PRIMARY KEY,
    category VARCHAR(50)
);

INSERT INTO categories
    (category)
VALUES
    ('adventure'),
    ('museums'),
    ('foodie'),
    ('cultural');

CREATE TABLE activities
(
    activity_id SERIAL PRIMARY KEY,
    activity VARCHAR(70),
    category_id INT REFERENCES categories(category_id),
    country_id INT REFERENCES countries(country_id)
);

INSERT INTO activities
    (activity, category_id, country_id)
VALUES
    ('skydiving', 1, 5);

SELECT *
FROM continents;
-- SELECT *
-- FROM countries;
-- SELECT *
-- FROM cities;
SELECT *
FROM categories;
SELECT *
FROM activities;