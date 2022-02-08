-- #1
INSERT INTO player (pnr, name, age)
VALUES ('810101-xxxx','Johan Andersson','25');

-- #2
INSERT INTO competition (competition_name, date)
VALUES ('Big Golf Cup Skövde','2021-10-06');

INSERT INTO player VALUES
('860101-1234','Nicklas Jansson','35'),
('760101-1234','Annika Persson','45');

-- #3
INSERT INTO rain ( type,wind_strenght)
VALUES ('Hail','10m/s');
-- #4
INSERT INTO jacket
VALUES ('J.A','Large','Fleece','810101-xxxx'),
('J.A','Large','Gore-tex','810101-xxxx');
-- #5
-- #6
-- #7
-- #8
-- #9
-- #10


/*
INSERT INTO jacket ( initials= ,size,material,pnr) 
SELECT jacket.pnr FROM player player INNER JOIN jacket jacket ON  jacket.pnr = player.pnr 
WHERE player.name = 'Johan Andersson';
/*