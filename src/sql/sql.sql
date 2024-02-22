/*

CREATE TABLE IF NOT EXISTS public.users (
  id serial primary key,
  name CHARACTER VARYING(64) NOT NULL,
  username CHARACTER VARYING(64) NOT NULL unique,
  password CHARACTER VARYING(256) NOT NULL,
  admin BOOLEAN DEFAULT false
);

CREATE TABLE IF NOT EXISTS public.teams (
  id serial primary key,
  name varchar(64) not null unique
);

CREATE TABLE IF NOT EXISTS public.games (
  id serial primary key,
  date timestamp with time zone not null default current_timestamp,
  home INTEGER NOT NULL,
  away INTEGER NOT NULL,
  home_score INTEGER NOT NULL CHECK (home_score >= 0),
  away_score INTEGER NOT NULL CHECK (away_score >= 0),

  CONSTRAINT fk_teams_home FOREIGN KEY (home) REFERENCES teams (id),
  CONSTRAINT fk_teams_away FOREIGN KEY (away) REFERENCES teams (id)
);

*/

------------------------------------------------------------
/*

INSERT INTO teams VALUES (1, 'Boltaliðið');
INSERT INTO teams VALUES (2, 'Dripplararnir');
INSERT INTO teams VALUES (3, 'Skotföstu kempurnar');
INSERT INTO teams VALUES (4, 'Markaskorarnir');
INSERT INTO teams VALUES (5, 'Sigurliðið');
INSERT INTO teams VALUES (6, 'Risaeðlurnar');
INSERT INTO teams VALUES (7, 'Framherjarnir');
INSERT INTO teams VALUES (8, 'Fljótu fæturnir');
INSERT INTO teams VALUES (9, 'Vinningshópurinn');
INSERT INTO teams VALUES (10, 'Ósigrandi skotfólkið');
INSERT INTO teams VALUES (11, 'Óhemjurnar');
INSERT INTO teams VALUES (12, 'Hraðaliðið');

INSERT INTO users (id, name, username, password, admin) VALUES
(1, 'Lilja Örk Loftsdóttir', 'lilja', '$2a$11$pgj3.zySyFOvIQEpD7W6Aund1Tw.BFarXxgLJxLbrzIv/4Nteisii', true);

*/
--------------------------------------------------------------------

/*

INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-22T15:20:53.955Z', 3, 12, 5, 4);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-22T15:20:53.955Z', 8, 7, 1, 0);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-22T15:20:53.955Z', 4, 10, 2, 5);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-22T15:20:53.955Z', 1, 6, 5, 1);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-22T15:20:53.955Z', 2, 5, 5, 3);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-22T15:20:53.955Z', 9, 11, 3, 2);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-16T15:20:53.955Z', 5, 7, 2, 3);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-16T15:20:53.955Z', 9, 6, 5, 1);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-16T15:20:53.955Z', 1, 2, 5, 2);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-16T15:20:53.955Z', 8, 12, 3, 3);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-16T15:20:53.955Z', 3, 10, 1, 5);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-16T15:20:53.955Z', 11, 4, 2, 0);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-23T15:20:53.955Z', 2, 4, 0, 1);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-23T15:20:53.955Z', 8, 10, 1, 3);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-23T15:20:53.955Z', 12, 1, 4, 5);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-23T15:20:53.955Z', 3, 5, 1, 4);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-23T15:20:53.955Z', 6, 11, 1, 2);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-02T15:20:53.955Z', 10, 12, 0, 5);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-02T15:20:53.955Z', 11, 8, 0, 3);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-02T15:20:53.955Z', 5, 9, 0, 3);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-02T15:20:53.955Z', 7, 2, 5, 2);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-02T15:20:53.955Z', 1, 3, 3, 3);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-02T15:20:53.955Z', 4, 6, 5, 4);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-15T15:20:53.955Z', 10, 7, 0, 1);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-15T15:20:53.955Z', 5, 3, 3, 0);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-15T15:20:53.955Z', 6, 11, 4, 4);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-15T15:20:53.955Z', 9, 12, 4, 1);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-07T15:20:53.955Z', 11, 5, 0, 0);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-07T15:20:53.955Z', 3, 9, 0, 5); 
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-07T15:20:53.955Z', 7, 6, 0, 3); 
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-07T15:20:53.955Z', 10, 1, 0, 3);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-07T15:20:53.955Z', 8, 12, 1, 2);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-07T15:20:53.955Z', 4, 2, 2, 1);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-30T15:20:53.955Z', 10, 5, 2, 5);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-30T15:20:53.955Z', 11, 2, 4, 0);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-30T15:20:53.955Z', 6, 9, 1, 1);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-27T15:20:53.955Z', 4, 7, 4, 1);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-27T15:20:53.955Z', 6, 9, 2, 4);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-27T15:20:53.955Z', 11, 12, 5, 5);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-27T15:20:53.955Z', 3, 1, 0, 0);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-27T15:20:53.955Z', 5, 8, 1, 3);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-01-27T15:20:53.955Z', 2, 10, 2, 4);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-13T15:20:53.955Z', 2, 11, 0, 2);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-13T15:20:53.955Z', 3, 10, 0, 3);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-13T15:20:53.955Z', 9, 1, 2, 3);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-13T15:20:53.955Z', 6, 4, 2, 0);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-13T15:20:53.955Z', 5, 7, 5, 2);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-13T15:20:53.955Z', 12, 8, 2, 3);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-23T15:20:53.955Z', 11, 4, 4, 0);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-23T15:20:53.955Z', 1, 10, 4, 3);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-23T15:20:53.955Z', 2, 6, 4, 5);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-23T15:20:53.955Z', 3, 5, 1, 1);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-23T15:20:53.955Z', 8, 7, 1, 1);
INSERT INTO games (date, home, away, home_score, away_score) VALUES ('2024-02-23T15:20:53.955Z', 9, 12, 0, 4);

*/

--TRUNCATE TABLE games;
--DELETE 	FROM games;
SELECT * FROM teams;
