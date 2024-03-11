CREATE TABLE `wild_db_quest`.`wizard`
(
    `id`          INT          NOT NULL AUTO_INCREMENT,
    `firstname`   VARCHAR(100) NOT NULL,
    `lastname`    VARCHAR(100) NOT NULL,
    `birthday`    DATE         NOT NULL,
    `birth_place` VARCHAR(255) NULL,
    `biography`   TEXT         NULL,
    `is_muggle`   BOOL         NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `wild_db_quest`.`school`
(
    `id`          INT          NOT NULL AUTO_INCREMENT,
    `name`        VARCHAR(100) NOT NULL,
    `capacity`    INT          NULL,
    `country`     VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`)
);

ALTER TABLE `wild_db_quest`.`school` add `school_name` VARCHAR(100) NOT NULL;
ALTER TABLE `wild_db_quest`.`school` DROP `name`;

use `wild_db_quest`; 
show tables ;
DESCRIBE `school`;
describe `wizard`;
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('harry', 'potter', '1980-07-31', 'london', '', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('hermione', 'granger', '1979-09-19', '', 'Friend of Harry Potter', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('lily', 'potter', '1960-01-30', '', 'mother of Harry Potter', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('ron', 'weasley', '1980-03-01', '', 'Best friend of Harry', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('ginny', 'weasley', '1981-08-11', '', 'Sister of Ron and girlfriend of Harry', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('fred', 'weasley', '1978-04-01', '', '', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('george', 'weasley', '1978-04-01', '', '', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('arthur', 'weasley', '1950-02-06', '', '', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('molly', 'weasley', ' 1949-01-01', '', '', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('drago', 'malefoy', '1980-06-05', '', '', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('albus', 'dumbledore', '1881-07-01', '', '', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('severus', 'rogue', '1960-01-09', '', '', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('tom', 'jédusor', '1926-12-31', '', 'Celui-Dont-On-Ne-Doit-Pas-Prononcer-Le-Nom alias Voldermort', '0');
INSERT INTO `wild_db_quest`.`wizard` (`firstname`, `lastname`, `birthday`, `birth_place`, `biography`, `is_muggle`) VALUES ('dudley', 'dursley', '1980-06-23', '', 'Cousin d\'Harry', '1');

select * from `wizard` where birthday between '1975-01-01' and '1985-12-31';
select firstname from `wizard` where firstname like 'h%';
select firstname, lastname from `wizard` where lastname='potter' order by lastname asc;
select firstname, lastname, birthday from `wizard` order by birthday asc limit 1;
INSERT INTO `wild_db_quest`.`school` (name, country, capacity) VALUES ('Hogwarts School of Witchcraft and Wizardry', 'United Kingdom', 400);
select * from `school`;
INSERT INTO `school` (school_name, country, capacity) 
VALUES ('Beauxbatons Academy of Magic', 'France', 550), 
('Castelobruxo', 'Brazil', 380), 
('Durmstrang Institute', 'Norway', 570);
select * from `school`;
select * from `wizard`;
UPDATE `school`
SET capacity = 450
WHERE id = 1;
select * from `school`;
DELETE FROM school
WHERE id = 3;
select * from `school`;
TRUNCATE `school`;
select * from `school`;
INSERT INTO `school` (school_name, country, capacity) 
VALUES ('Beauxbatons Academy of Magic', 'France',	550),
('Castelobruxo', 'Brazil',380),
('Durmstrang Institute', 'Norway',570),
('Hogwarts School of Witchcraft and Wizardry','United Kingdom',	450),
('Ilvermorny School of Witchcraft and Wizardry', 'USA',	300),
('Koldovstoretz', 'Russia',	125),
('Mahoutokoro School of Magic', 'Japan', 800),
('Uagadou School of Magic', 'Uganda', 350);
select * from `school`;
UPDATE school
SET country = 'Sweden'
WHERE id = 3;
use `wild_db_quest`;
UPDATE school
SET capacity = 700
WHERE id = 7;
DELETE FROM school
WHERE school_name like '%Magic%';


