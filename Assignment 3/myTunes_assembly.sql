DROP TABLE IF EXISTS cds;
DROP TABLE IF EXISTS songs;
DROP TABLE IF EXISTS variableCDS;
DROP TABLE IF EXISTS variableSONGS;

CREATE TABLE variableCDS (
    cd_id text primary key not null, --cd unique id
    title text NOT NULL, --title of CD
    artist text NOT NULL, --artist whose CD it is or "various artists"
    producer text default NULL,
    year integer,
    contributer text --student number who contirbuted the data
);

CREATE TABLE variableSONGS (
    song_id integer primary key not null, --auto incrementing key
    title text NOT NULL, --title of song
    composer text NOT NULL, --person or persons who wrote the song
    cd_id text NOT NULL, --cd this song appears on
    track integer NOT NULL, --track number of the song
    contributer text --student number who contirbuted the data
);

--First table
.read myTunes_Abdelghny.sql
INSERT INTO variableCDS SELECT * FROM cds;
INSERT INTO variableSONGS (title, composer, cd_id, track, contributer) SELECT title, composer, cd_id, track, contributer FROM songs;

DROP TABLE IF EXISTS cds;
DROP TABLE IF EXISTS songs;

--Second table
.read myTunes_Ali.sql
INSERT INTO variableCDS SELECT * FROM cds;
INSERT INTO variableSONGS (title, composer, cd_id, track, contributer) SELECT title, composer, cd_id, track, contributer FROM songs;

DROP TABLE IF EXISTS cds;
DROP TABLE IF EXISTS songs;

--Third table
.read myTunes_Fatemeh.sql
INSERT INTO variableCDS SELECT * FROM cds;
INSERT INTO variableSONGS (title, composer, cd_id, track, contributer) SELECT title, composer, cd_id, track, contributer FROM songs;

DROP TABLE IF EXISTS cds;
DROP TABLE IF EXISTS songs;

--Fourth table
.read myTunes_Monica.sql
INSERT INTO variableCDS SELECT * FROM cds;
INSERT INTO variableSONGS (title, composer, cd_id, track, contributer) SELECT title, composer, cd_id, track, contributer FROM songs;

DROP TABLE IF EXISTS cds;
DROP TABLE IF EXISTS songs;

--Fifth table
.read myTunes_Rezieh.sql
INSERT INTO variableCDS SELECT * FROM cds;
INSERT INTO variableSONGS (title, composer, cd_id, track, contributer) SELECT title, composer, cd_id, track, contributer FROM songs;

DROP TABLE IF EXISTS cds;
DROP TABLE IF EXISTS songs;

--Sixth table
.read myTunes_Saman.sql
INSERT INTO variableCDS SELECT * FROM cds;
INSERT INTO variableSONGS (title, composer, cd_id, track, contributer) SELECT title, composer, cd_id, track, contributer FROM songs;

DROP TABLE IF EXISTS cds;
DROP TABLE IF EXISTS songs;

CREATE TABLE cds (
    cd_id text primary key not null, --cd unique id
    title text NOT NULL, --title of CD
    artist text NOT NULL, --artist whose CD it is or "various artists"
    producer text default NULL,
    year integer,
    contributer text --student number who contirbuted the data
);

CREATE TABLE songs (
    song_id integer primary key not null, --auto incrementing key
    title text NOT NULL, --title of song
    composer text NOT NULL, --person or persons who wrote the song
    cd_id text NOT NULL, --cd this song appears on
    track integer NOT NULL, --track number of the song
    contributer text --student number who contirbuted the data
);

INSERT INTO cds SELECT * FROM variableCDS;
INSERT INTO songs (title, composer, cd_id, track, contributer) SELECT title, composer, cd_id, track, contributer FROM variableSONGS;

DROP TABLE IF EXISTS variableCDS;
DROP TABLE IF EXISTS variableSONGS;