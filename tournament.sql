
DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament;

CREATE TABLE players (
	id serial primary key,
	name text
);

CREATE TABLE matches (
	id serial primary key,
	winner INT references players(id),
	loser INT references players(id)
);

CREATE VIEW totalmatches AS
	SELECT players.id, (SELECT COUNT(*) from matches WHERE players.id in (matches.winner, matches.loser)) as matches
	FROM players
	GROUP BY players.id;

CREATE VIEW wins AS
	SELECT players.id, COUNT(matches.winner) as win
	FROM players LEFT JOIN matches
	ON players.id = matches.winner
	GROUP BY players.id;

CREATE VIEW standings AS
	SELECT players.id, players.name, wins.win as wins, totalmatches.matches
	FROM players,totalmatches,wins
	WHERE players.id = wins.id and wins.id = totalmatches.id;

