BEGIN TRANSACTION;

DELETE FROM cds WHERE cd_id LIKE "101098993CD%";
DELETE FROM songs WHERE cd_id LIKE "101098993CD%";

INSERT INTO cds VALUES ("101098993CD1", "An Evening with Silk Sonic", "Bruno Mars, Anderson .Paak & Silk Sonic", "Bruno Mars", 2021, "101098993");
INSERT INTO cds VALUES ("101098993CD2", "Welcome Home", "Zac Brown Band", "Dave Cobb", 2017, "101098993");

/* An Evening with Silk Sonic */
INSERT INTO songs (title, composer, cd_id, track, contributor) VALUES ("Silk Sonic Intro", "Bruno Mars", "101098993CD1", 1, "101098993");
INSERT INTO songs (title, composer, cd_id, track, contributor) VALUES ("Leave The Door Open", "Bruno Mars", "101098993CD1", 2, "101098993");
INSERT INTO songs (title, composer, cd_id, track, contributor) VALUES ("Fly as Me", "Bruno Mars", "101098993CD1", 3, "101098993");
INSERT INTO songs (title, composer, cd_id, track, contributor) VALUES ("After Last Night (with Thundercat & Bootsy Collins", "Bruno Mars", "101098993CD1", 4, "101098993");
INSERT INTO songs (title, composer, cd_id, track, contributor) VALUES ("Smokin Out The Window", "Bruno Mars", "101098993CD1", 5, "101098993");
INSERT INTO songs (title, composer, cd_id, track, contributor) VALUES ("Put On A Smile", "Bruno Mars", "101098993CD1", 6, "101098993");
INSERT INTO songs (title, composer, cd_id, track, contributor) VALUES ("777", "Bruno Mars", "101098993CD1", 7, "101098993");
INSERT INTO songs (title, composer, cd_id, track, contributor) VALUES ("Skate", "Bruno Mars", "101098993CD1", 8, "101098993");
INSERT INTO songs (title, composer, cd_id, track, contributor) VALUES ("Blast Off", "Bruno Mars", "101098993CD1", 9, "101098993");

/* Welcome Home */
INSERT INTO songs (title, composer, cd_id, track, contributor) VALUES ("Roots", "Dave Cobb", "101098993CD2", 1, "101098993");
INSERT INTO songs (title, composer, cd_id, track, contributor) VALUES ("Real Thing", "Dave Cobb", "101098993CD2", 2, "101098993");
INSERT INTO songs (title, composer, cd_id, track, contributor) VALUES ("Long Haul", "Dave Cobb", "101098993CD2", 3, "101098993");
INSERT INTO songs (title, composer, cd_id, track, contributor) VALUES ("2 Places at 1 Time", "Dave Cobb", "101098993CD2", 4, "101098993");
INSERT INTO songs (title, composer, cd_id, track, contributor) VALUES ("Family Table", "Dave Cobb", "101098993CD2", 5, "101098993");
INSERT INTO songs (title, composer, cd_id, track, contributor) VALUES ("My Old Man", "Dave Cobb", "101098993CD2", 6, "101098993");
INSERT INTO songs (title, composer, cd_id, track, contributor) VALUES ("Start Over", "Dave Cobb", "101098993CD2", 7, "101098993");
INSERT INTO songs (title, composer, cd_id, track, contributor) VALUES ("Your Majesty", "Dave Cobb", "101098993CD2", 8, "101098993");
INSERT INTO songs (title, composer, cd_id, track, contributor) VALUES ("Trying to Drive", "Dave Cobb", "101098993CD2", 9, "101098993");
INSERT INTO songs (title, composer, cd_id, track, contributor) VALUES ("All the Best", "Dave Cobb", "101098993CD2", 10, "101098993");

COMMIT;