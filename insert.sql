-- #1
INSERT INTO Player (pnr, name, age)
VALUES ('810101-9876','Johan Andersson','25');

INSERT INTO Player VALUES
('860101-1234','Nicklas Jansson','35'),
('760101-1234','Annika Persson','45');

-- #2
INSERT INTO Competition (competition_name, date)
VALUES ('Big Golf Cup Skövde','2021-10-06');

INSERT INTO Competition_Players (pnr, competition_name)
VALUES
( ( SELECT pnr FROM Player WHERE name='Johan Andersson' ), ( SELECT competition_name FROM Competition WHERE date='2021-10-06' ) ),
( ( SELECT pnr FROM Player WHERE name='Nicklas Jansson' ), ( SELECT competition_name FROM Competition WHERE date='2021-10-06' ) ),
( ( SELECT pnr FROM Player WHERE name='Annika Persson' ), ( SELECT competition_name FROM Competition WHERE date='2021-10-06' ) );

-- #3
INSERT INTO Rain ( type,wind_strength)
VALUES ('Hail','10m/s');

INSERT INTO Competition_Rain (time, type, competition_name)
VALUES
( '12:30', ( SELECT type FROM Rain WHERE wind_strength='10m/s' ), ( SELECT competition_name FROM Competition WHERE date='2021-10-06' ) );

-- #4

INSERT INTO Jacket (initials, size, material, pnr)
VALUES
( 'J.A', 'Large', 'Fleece', ( SELECT pnr FROM Player WHERE name='Johan Andersson' ) ),
( 'Fel', 'Medium', 'Gore-Tex', ( SELECT pnr FROM Player WHERE name='Johan Andersson' ) );

-- #5

INSERT INTO Construction (hardness)
VALUES
('10'),
('5'),
('7');

INSERT INTO Club (material, pnr, serial_nr)
VALUES
( 'Wood', ( SELECT pnr FROM Player WHERE name='Nicklas Jansson' ), ( SELECT serial_nr FROM Construction WHERE hardness='10' ) ),
( 'Wood', ( SELECT pnr FROM Player WHERE name='Annika Persson' ), ( SELECT serial_nr FROM Construction WHERE hardness='5' ) ),
( 'Iron', ( SELECT pnr FROM Player WHERE name='Johan Andersson' ), ( SELECT serial_nr FROM Construction WHERE hardness='7' ) );

