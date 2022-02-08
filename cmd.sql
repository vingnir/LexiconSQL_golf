-- #1
SELECT age from player where name='Johan Andersson';

-- #2
SELECT date from competition where competition_name='Big Golf Cup Skövde';

-- #3
SELECT material from club where pnr=( SELECT pnr FROM player WHERE name='Johan Andersson' ) ;

-- #4
SELECT * from jacket where pnr=( SELECT pnr FROM player WHERE name='Johan Andersson' ) ;

-- #5
SELECT p.name, cp.competition_name 
FROM competition_players cp
JOIN player p ON cp.pnr = p.pnr;

-- #6
SELECT r.wind_strength, cr.competition_name 
FROM competition_rain cr
JOIN rain r ON cr.type = r.type;

-- #7
SELECT * from player where age < 30;

-- #8
DELETE from jacket where pnr=( SELECT pnr FROM player WHERE name='Johan Andersson' ) ;

-- #9
DELETE FROM player 
WHERE name = 'Nicklas Jansson';

-- #10
SELECT AVG(age)
FROM player;

