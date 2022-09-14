-- Active: 1663174284164@@SG-free-sql-thanks-6708-mysql-master.servers.mongodirector.com@3306@freebie


CREATE TABLE ninjas(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name TEXT NOT NULL,
  weapon VARCHAR(255) NOT NULL DEFAULT "silence",
  confirmedKills INT NOT NULL DEFAULT 0,
  certified BOOLEAN NOT NULL DEFAULT false,
  color VARCHAR(50)
) default charset utf8;

-- ADD TO TABLE AFTER THE FACT
ALTER TABLE ninjas
  add COLUMN money INT NOT NULL DEFAULT 0;

-- ERASE WHOLE TABLE
DROP TABLE ninjas;

-- ERAESE ENTRIES FROM TABLE
DELETE FROM ninjas;


-- CREATE DATA IN TABLE
INSERT INTO ninjas
(name, weapon, certified, color)
VALUES
("Jackie Chan", "Nun-chucks", true, "white robe");

INSERT INTO ninjas
(name, weapon, certified, color)
VALUES
("Scorpion", "Spear", true, "Yellow");

INSERT INTO ninjas
(name, weapon, certified, color)
VALUES
("Snake Eyes", "Hands", false, "Black");

INSERT INTO ninjas
(name, weapon, certified, color)
VALUES
("Zane", "Top", false, "Green");

INSERT INTO ninjas
(name, weapon, certified, color)
VALUES
("Donnatello", "Staff", false, "Purple");

INSERT INTO ninjas
(name, weapon, certified, color)
VALUES
("Naruto", "10,000 years of death", false, "Orange");

INSERT INTO ninjas
(name, weapon, certified, color)
VALUES
("Chris Farley", "Ignorance", false, "Blonde");

INSERT INTO ninjas
(name, weapon, certified, color)
VALUES
("Reptile", "Claws", false, "Green");
INSERT INTO ninjas
(name, weapon, certified, color)
VALUES
("Gray Fox", "Cyber Katana", false, "bronze");
INSERT INTO ninjas
(name, weapon, certified, color)
VALUES
("Casey", "Hockey stick", false, "jacket");

-- NOTE GET ALL ninjas
SELECT * from ninjas;

-- SEARCH NINJAS
SELECT * from ninjas WHERE name Like "s%";

-- GET ONE NINJA by id
SELECT * FROM ninjas WHERE id =3;


-- UPDATE NINJA by id
UPDATE ninjas 
  SET confirmedKills = 1
WHERE id = 7;

-- DELETE a NINJA
DELETE FROM ninjas WHERE id = 6;

-- CERTIFY THE NINJAS WHO HAVE ACTUALLY DONE THEIR JOB AT LEAST ONCE
UPDATE ninjas
  SET certified = true
WHERE confirmedKills > 0;

