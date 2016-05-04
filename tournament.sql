-- Table definitions for the tournament project.
--
create table players(
id serial primary key,
name text NOT NULL
);

create table matches(
id serial primary key,
winner int references players(id),
loser int references players(id)
);

create view standings as
select players.id,players.name, 
(select count(*) from matches where players.id = matches.winner ) as wins ,
(select count(*) from matches where players.id = matches.winner or players.id = matches.loser) as matches 
from players
order by 
wins desc;

-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.


