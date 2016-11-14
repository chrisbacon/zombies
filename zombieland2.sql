DROP TABLE victims;
DROP TABLE zombies;


CREATE TABLE zombies (
    name VARCHAR(255),
    type VARCHAR(255),
    zombie_id SERIAL8 primary key
);

CREATE TABLE victims (
    name VARCHAR(255),
    run_speed INT2,
    victim_id SERIAL8 primary key,
    attacker INT8 references zombies(zombie_id) unique
);

INSERT INTO zombies (name, type) VALUES ('Bert', 'Bearded');
INSERT INTO zombies (name, type) VALUES ('Count von Count', 'Walker');
INSERT INTO zombies (name, type) VALUES ('Cookie Monster', 'Drooler');

INSERT INTO victims (name, run_speed, attacker) VALUES ('Ernie', 10, 1);
INSERT INTO victims (name, run_speed, attacker) VALUES ('Grover', 8, 2);
INSERT INTO victims (name, run_speed, attacker) VALUES ('Kermit the Frog', 9, 3);

UPDATE victims
SET attacker = 3
WHERE victim_id = 2; 

SELECT * FROM zombies;
SELECT * FROM victims;