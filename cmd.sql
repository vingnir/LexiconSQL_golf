-- #1
SELECT age from player where name='Johan Andersson';

-- #2
SELECT date from competition where competition_name='Big Golf Cup Skövde';

-- #3
SELECT material from club where pnr=( SELECT pnr FROM player WHERE name='Johan Andersson' ) ;


-- #4


-- #5
-- #6
-- #7
-- #8
-- #9
-- #10

