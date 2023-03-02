--QUERY 1 --
SELECT * 
FROM owners o
FULL JOIN vehicles v
ON o.id = v.owner_id;

--QUERY 2 -- 
SELECT first_name, last_name, COUNT(*) 
FROM owners o
RIGHT JOIN vehicles v
ON o.id = v.owner_id
GROUP BY o.id
ORDER BY COUNT(*), o.first_name;

--QUERY 3--
-- _used_solution_
SELECT first_name, last_name, ROUND(AVG(price)) as average_price, COUNT(owner_id)
FROM owners o
JOIN vehicles v
ON o.id = v.owner_id
GROUP BY (first_name, last_name)
HAVING 
COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000
ORDER BY first_name DESC;


-- SQL EXERCISES

--1
-- SELECT matchid, player FROM goal g
-- JOIN eteam e
-- ON e.id = g.teamid
-- WHERE g.teamid = 'GER';

--2
-- SELECT id, stadium, team1, team2
-- FROM game g
-- WHERE g.id = 1012;

--3
-- SELECT player, g.teamid, stadium, game.mdate
-- FROM game 
-- JOIN goal g 
-- ON (game.id=g.matchid)
-- WHERE g.teamid = 'GER';

--4
-- SELECT team1, team2, player
-- FROM game 
-- JOIN goal g 
-- ON (game.id=g.matchid)
-- WHERE player LIKE 'Mario%';

--5 FIRST TRY BABY!
-- SELECT player, teamid, coach, gtime
-- FROM goal g
-- JOIN eteam e
-- ON(g.teamid = e.id)
-- WHERE gtime<=10;

--6 SECOND TRY 
-- SELECT mdate, teamname
-- FROM game g
-- JOIN eteam e 
-- ON(g.team1 = e.id)
-- WHERE e.coach = 'Fernando Santos';

--7
-- SELECT go.player
-- FROM goal go
-- JOIN eteam e
-- ON (go.teamid = e.id)
-- JOIN game g
-- ON g.id = go.matchid
-- WHERE g.stadium = 'National Stadium, Warsaw';

--8
-- SELECT player
-- FROM game g 
-- JOIN goal
-- ON goal.matchid = g.id 
-- WHERE (team1='GER' OR team2='GER')
-- AND goal.teamid NOT LIKE('GER')
-- GROUP BY player;

--9
-- SELECT teamname, COUNT(*)
-- FROM eteam e
-- JOIN goal g
-- ON e.id= g.teamid
-- GROUP BY e.teamname;

--10
-- SELECT stadium, COUNT(*)
-- FROM game
-- JOIN goal
-- ON game.id= goal.matchid
-- GROUP BY stadium;

--11
-- SELECT matchid , mdate, COUNT(matchid)
-- FROM game
-- JOIN goal
-- ON game.id = goal.matchid
-- WHERE game.team1 = 'POL' OR game.team2 = 'POL'
-- GROUP BY mdate, matchid;

--12
-- SELECT matchid, mdate, COUNT(matchid)
-- FROM game
-- JOIN goal
-- ON game.id = goal.matchid
-- WHERE goal.teamid = 'GER'
-- GROUP BY mdate, matchid;

--13
