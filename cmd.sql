-- #1
SELECT age from Player where name='Johan Andersson';

-- #2
SELECT date from Competition where competition_name='Big Golf Cup Skövde';

-- #3
SELECT material from Club where pnr=( SELECT pnr FROM Player WHERE name='Johan Andersson' ) ;

-- #4
SELECT * from Jacket where pnr=( SELECT pnr FROM Player WHERE name='Johan Andersson' ) ;

-- #5
SELECT p.name, cp.competition_name 
FROM Competition_Players cp
JOIN Player p ON cp.pnr = p.pnr;

-- #6
SELECT r.wind_strength, cr.competition_name 
FROM Competition_Rain cr
JOIN Rain r ON cr.type = r.type;

-- #7
SELECT * from Player where age < 30;

-- #8
DELETE from Jacket where pnr=( SELECT pnr FROM Player WHERE name='Johan Andersson' AND age=25 ) ;

-- #9
DELETE FROM Player 
WHERE name = 'Nicklas Jansson'  AND age=35;

-- #10
SELECT AVG(age)
FROM Player;

