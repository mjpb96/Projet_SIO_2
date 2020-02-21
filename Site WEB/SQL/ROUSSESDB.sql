CREATE DATABASE ROUSSES_DB;
USE ROUSSES_DB;


DROP TABLE IF EXISTS CLIENT;
CREATE TABLE CLIENT(
	id_client INTEGER AUTO_INCREMENT NOT NULL,
	email VARCHAR(100),
	mdp VARCHAR(200) NOT NULL,
	nom VARCHAR(50),
	prenom VARCHAR(50),
	entreprise VARCHAR(50),
	telephone CHAR(10),
	PRIMARY KEY(id_client)
);

INSERT INTO CLIENT(email, mdp, nom, prenom) VALUES ("marc.baribaud@gmail.com", "1234", "Baribaud", "Marc");
INSERT INTO CLIENT(email, mdp, nom, prenom) VALUES ("charles.baribaud@gmail.com", "1234", "Baribaud", "Charles");
INSERT INTO CLIENT(email, mdp, nom, prenom) VALUES ("ernest.baribaud@gmail.com", "1234", "Baribaud", "Ernesto");

DROP TABLE IF EXISTS SALLE;
CREATE TABLE SALLE( 
	id_salle INTEGER AUTO_INCREMENT,
	type_salle VARCHAR(70),
	nb_place INTEGER,
	PRIMARY KEY(id_salle)
) COMMENT = 'Salle de colloque';

INSERT INTO SALLE(type_salle, nb_place) VALUES("Salle de conférence", 196);
INSERT INTO SALLE(type_salle, nb_place) VALUES("Salle de commission", 50);

DROP TABLE IF EXISTS RESA_SALLE;
CREATE TABLE RESA_SALLE(
	id INTEGER NOT NULL AUTO_INCREMENT,
	id_salle INTEGER NOT NULL,
	date_resa DATE,
	PRIMARY KEY(id),
	FOREIGN KEY (id_salle) REFERENCES SALLE(id_salle)
);
CREATE INDEX i_date_resa ON RESA_SALLE(date_resa);