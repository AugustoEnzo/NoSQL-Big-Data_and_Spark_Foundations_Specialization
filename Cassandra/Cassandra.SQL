CREATE KEYSPACE training
WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 3};

describe keyspaces

describe training

ALTER KEYSPACE training
WITH replication = {'class': 'NetworkTopologyStrategy'};

describe training

use training;

describe tables

drop keyspace training;

use system;
describe keyspaces

use training;
CREATE TABLE movies(
movie_id int PRIMARY KEY,
movie_name text,
year_of_release int
);

describe tables;

describe movies;

ALTER TABLE movies
ADD genre text;

describe movies;

drop table movies;

describe movies;

INSERT into movies(
movie_id, movie_name, year_of_release)
VALUES (1,'Toy Story',1995);

select * from movies;

select * from movies;

select movie_name from movies where movie_id = 1;

UPDATE movies
SET year_of_release = 1996
WHERE movie_id = 4;

select * from movies where movie_id = 4;

DELETE from movies
WHERE movie_id = 5;

select * from movies;

