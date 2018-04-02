CREATE TABLE languages(
  id serial UNIQUE,
  code VARCHAR(5) NOT NULL, -- eg: fi
  name VARCHAR(50) NOT NULL, -- eg: Finnish
  target_code VARCHAR(5) NOT NULL -- in English
);

CREATE TABLE countries(
  id serial UNIQUE,
  code VARCHAR(5) NOT NULL, -- country code. needed because there should be unique id independent of the language
  name VARCHAR(25) NOT NULL,
  language_code VARCHAR(5) NOT NULL
);

CREATE TABLE cities(
  id serial UNIQUE,
  country_code VARCHAR(5) NOT NULL,
  name VARCHAR(25) NOT NULL,
  language_code VARCHAR(5) NOT NULL
);

create table users (
  id serial UNIQUE,
  username VARCHAR(30),
  password VARCHAR(256),
  name VARCHAR(50),
  surname VARCHAR(60),
  role VARCHAR(20),
  country_code VARCHAR(5),
  language_code VARCHAR(5),
  mobile_phone VARCHAR(20),
  email VARCHAR(250),
  address VARCHAR(250)
);

CREATE TABLE user_roles (
  id serial UNIQUE,
  code VARCHAR(5),
  name VARCHAR(50),
  language_code VARCHAR(5)
);

CREATE TABLE children (
  id serial UNIQUE,
  name VARCHAR(50),
  surname VARCHAR(60),
  country_code VARCHAR(5),
  language_code VARCHAR(5),
  address VARCHAR(250),
  national_id VARCHAR(50), -- this still wasn't agreed
  family_status_id INTEGER, -- this still wasn't agreed
  diagnostics_status_id INTEGER , -- this still wasn't agreed
  asd_features integer[], -- this still wasn't agreed
  needs integer[], -- this still wasn't agreed
  description text,
  user_id INTEGER REFERENCES users(id), -- person who added the child into system
  dtstamp TIMESTAMP DEFAULT NOW()
);

CREATE TABLE facilities (
  id serial UNIQUE,
  code VARCHAR(5), -- this is because facilities are offered in different languages. there should be a unifying code
  name VARCHAR(50),
  type INTEGER , -- this still wasn't agreed
  city_code VARCHAR(5),
  country_code VARCHAR(5),
  address text,
  language_code VARCHAR(5)
);

CREATE TABLE provider_roles (
  id serial UNIQUE,
  code VARCHAR(5),
  name VARCHAR(50),
  language_code VARCHAR(5)
);

CREATE TABLE providers (
  id serial UNIQUE,
  user_id INTEGER REFERENCES users(id),
  facilities INTEGER[],
  role VARCHAR[]
);

CREATE TABLE child_relations( -- children assigned to provider by their parents/caregivers. or children assigned to other family members
  id serial UNIQUE,
  assigned_by INTEGER REFERENCES users(id), -- who assigned
  child_id INTEGER REFERENCES children(id), -- child id
  assign_to INTEGER REFERENCES users(id) -- new person's id (can be new family member or provider)
);

CREATE TABLE videos (
  id serial UNIQUE,
  video bytea,
  date_uploaded TIMESTAMP DEFAULT NOW()
);

CREATE TABLE pictures(
  id serial UNIQUE,
  picture bytea,
  date_uploaded TIMESTAMP DEFAULT NOW()
);

CREATE TABLE domains (
  id serial UNIQUE,
  code VARCHAR(5),
  name VARCHAR(50),
  language_code VARCHAR(5)
);

CREATE TABLE modules (
  id serial UNIQUE,
  code VARCHAR(5),
  domain_code VARCHAR(5),
  name VARCHAR(50),
  language_code VARCHAR(5),
  description text
);

CREATE TABLE courses (
  id serial UNIQUE,
  code VARCHAR(5),
  module_code VARCHAR(5),
  name VARCHAR(50),
  language_code VARCHAR(5),
  description text
);

CREATE TABLE skills (
  id serial UNIQUE,
  code VARCHAR(5),
  module_code VARCHAR(5),
  name VARCHAR(50),
  language_code VARCHAR(5),
  description text
);

CREATE TABLE tasks (
  id serial UNIQUE,
  code VARCHAR(5),
  skill_code VARCHAR(5),
  name VARCHAR(50),
  language_code VARCHAR(5),
  content_text text,
  videos INTEGER[], -- array of video id-s
  pictures INTEGER[] -- array of picture id-s
);

CREATE TABLE tools (
  id serial UNIQUE,
  code VARCHAR(5),
  skill_code VARCHAR(5),
  name VARCHAR(50),
  language_code VARCHAR(5),
  content_text text,
  videos INTEGER[], -- array of video id-s
  pictures INTEGER[] -- array of picture id-s
);

CREATE TABLE user_task_progress (
  id serial UNIQUE,
  user_id INTEGER,
  task_code VARCHAR(5),
  status INTEGER,
  video_id INTEGER REFERENCES videos(id)
);



