CREATE TABLE languages(
  id serial UNIQUE,
  code VARCHAR(5) UNIQUE NOT NULL, -- eg: fi
  name VARCHAR(50), -- eg: Finnish
  target_code VARCHAR(5) UNIQUE NOT NULL -- in English
);

CREATE TABLE countries(
  id serial UNIQUE,
  code VARCHAR(5), -- country code. needed because there should be unique id independent of the language
  name VARCHAR(25),
  language_code VARCHAR(5)
);

CREATE TABLE cities(
  id serial UNIQUE,
  country_code VARCHAR(5),
  name VARCHAR(25),
  language_code VARCHAR(5)
);