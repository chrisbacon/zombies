DROP TABLE attacks;
DROP TABLE zombies;
DROP TABLE victims;


CREATE TABLE zombies (
    name VARCHAR(255),
    type VARCHAR(255),
    zombie_id SERIAL8 primary key
);

CREATE TABLE victims (
    name VARCHAR(255),
    run_speed INT2,
    victim_id SERIAL8 primary key
);

CREATE TABLE attacks (
    attack_id SERIAL8 primary key,
    zombie INT8 references zombies(zombie_id),
    victim INT8 references victims(victim_id)
);

INSERT INTO zombies (name, type) VALUES ('Bert', 'Bearded');
INSERT INTO zombies (name, type) VALUES ('Count von Count', 'Walker');
INSERT INTO zombies (name, type) VALUES ('Cookie Monster', 'Drooler');

INSERT INTO victims (name, run_speed) VALUES ('Ernie', 10);
INSERT INTO victims (name, run_speed) VALUES ('Grover', 8);
INSERT INTO victims (name, run_speed) VALUES ('Kermit the Frog', 9);

SELECT * FROM zombies;
SELECT * FROM victims;

INSERT INTO attacks (zombie, victim) VALUES (1, 1);
INSERT INTO attacks (zombie, victim) VALUES (1, 2);
INSERT INTO attacks (zombie, victim) VALUES (1, 3);
INSERT INTO attacks (zombie, victim) VALUES (2, 1);
INSERT INTO attacks (zombie, victim) VALUES (2, 2);
INSERT INTO attacks (zombie, victim) VALUES (2, 3);
INSERT INTO attacks (zombie, victim) VALUES (3, 1);
INSERT INTO attacks (zombie, victim) VALUES (3, 2);
INSERT INTO attacks (zombie, victim) VALUES (3, 3);

SELECT * FROM attacks;