-- #1
INSERT INTO player (pnr, name, age)
VALUES ('810101-9876','Johan Andersson','25');

INSERT INTO player VALUES
('860101-1234','Nicklas Jansson','35'),
('760101-1234','Annika Persson','45');

-- #2
INSERT INTO competition (competition_name, date)
VALUES ('Big Golf Cup Skövde','2021-10-06');

INSERT INTO competition_players (pnr, competition_name)
VALUES
( ( SELECT pnr FROM player WHERE name='Johan Andersson' ), ( SELECT competition_name FROM competition WHERE date='2021-10-06' ) ),
( ( SELECT pnr FROM player WHERE name='Nicklas Jansson' ), ( SELECT competition_name FROM competition WHERE date='2021-10-06' ) ),
( ( SELECT pnr FROM player WHERE name='Annika Persson' ), ( SELECT competition_name FROM competition WHERE date='2021-10-06' ) );

-- #3
INSERT INTO rain ( type,wind_strength)
VALUES ('Hail','10m/s');

INSERT INTO competition_rain (time, type, competition_name)
VALUES
( '12:30', ( SELECT type FROM rain WHERE wind_strength='10m/s' ), ( SELECT competition_name FROM competition WHERE date='2021-10-06' ) ),
( '12:30', ( SELECT type FROM rain WHERE wind_strength='10m/s' ), ( SELECT competition_name FROM competition WHERE date='2021-10-06' ) ),
( '12:30', ( SELECT type FROM rain WHERE wind_strength='10m/s' ), ( SELECT competition_name FROM competition WHERE date='2021-10-06' ) );

-- #4

INSERT INTO jacket (initials, size, material, pnr)
VALUES
( 'J.A', 'Large', 'Fleece', ( SELECT pnr FROM player WHERE name='Johan Andersson' ) ),
( 'Fel', 'Medium', 'Gore-Tex', ( SELECT pnr FROM player WHERE name='Johan Andersson' ) );

-- #5

INSERT INTO construction (hardness)
VALUES
('10'),
('5'),
('7');

INSERT INTO club (material, pnr, serial_nr)
VALUES
( 'Wood', ( SELECT pnr FROM player WHERE name='Nicklas Jansson' ), ( SELECT serial_nr FROM construction WHERE hardness='10' ) ),
( 'Wood', ( SELECT pnr FROM player WHERE name='Annika Persson' ), ( SELECT serial_nr FROM construction WHERE hardness='5' ) ),
( 'Iron', ( SELECT pnr FROM player WHERE name='Johan Andersson' ), ( SELECT serial_nr FROM construction WHERE hardness='7' ) );

