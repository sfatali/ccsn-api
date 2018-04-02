INSERT into languages(code, name, target_code) VALUES ('fi', 'Finnish', 'en');
INSERT into languages(code, name, target_code) VALUES ('fi', 'Suomea', 'fi');
INSERT into languages(code, name, target_code) VALUES ('fi', 'Финский', 'ru');
INSERT into languages(code, name, target_code) VALUES ('fi', 'Finnish', 'en');
INSERT into languages(code, name, target_code) VALUES ('fi', 'Suomea', 'fi');
INSERT into languages(code, name, target_code) VALUES ('en', 'English', 'en');
INSERT into languages(code, name, target_code) VALUES ('np', 'Nepalese', 'en');
INSERT into languages(code, name, target_code) VALUES ('spn', 'Spanish', 'en');

INSERT INTO countries(code, name, language_code) VALUES ('fi', 'Finland', 'en');
INSERT INTO countries(code, name, language_code) VALUES ('fi', 'Suomi', 'fi');
INSERT INTO countries(code, name, language_code) VALUES ('np', 'Nepal', 'en');
INSERT INTO countries(code, name, language_code) VALUES ('fi', 'Финляндия', 'ru');

INSERT INTO cities(country_code, name, language_code) ('fi', 'Helsinki', 'en');
INSERT INTO cities(country_code, name, language_code) VALUES ('fi', 'Oulu', 'en');
INSERT INTO cities(country_code, name, language_code) VALUES ('fi', 'Tampere', 'en');
INSERT INTO cities(country_code, name, language_code) VALUES ('fi', 'Rovaniemi', 'en');

