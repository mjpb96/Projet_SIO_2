CREATE DATABASE LES_ROUSSES;
USE LES_ROUSSES

CREATE TABLE USER(
id_user INTEGER AUTO_INCREMENT,
email VARCHAR(100),
password VARCHAR(100),
nom VARCHAR(200),
prenom VARCHAR(200),
entreprise VARCHAR(50),
telephone VARCHAR(10),
PRIMARY KEY(id_user)
);

CREATE TABLE SEJOUR(
	id_sejour INTEGER AUTO_INCREMENT,
	id_user INTEGER,
	nb_adulte INTEGER,
	nb_enfant INTEGER,
	nb_bebe INTEGER,
	pension VARCHAR(12), /*complete / semi_complete */
	semaine INTEGER,
	quotient_familial REAL, /*ajouter un tableau d'aider au calcul du quotient fam*/
	menage INTEGER,
	PRIMARY KEY(id_sejour)
);

CREATE TABLE LOGEMENT(
	id_logement INTEGER,
	id_user INTEGER,
	type_logement VARCHAR, /*logement / handicape*/
	semaine INTEGER,
	PRIMARY KEY(id_logement)
);

CREATE TABLE COLLOQUE(
	id_colloque INTEGER,
	id_user INTEGER,
	nb_personnes INTEGER,
	chambre_double INTEGER,
	chambre_triple INTEGER,
	chambre_quatre INTEGER,
	aperitif INTEGER,
	pauses INTEGER,
	pension VARCHAR(12) /*complete / semi_complete */
	date_debut DATE,
	date_fin DATE,
	PRIMARY KEY (id_colloque)
);

CREATE TABLE SALLE(
	id_salle INTEGER,
	id_user INTEGER, 
	conference_196 DATE,
	commission_50 DATE,
	commission_25 DATE,
	commission_10 DATE,
	PRIMARY KEY(id_salle)
);

CREATE TABLE CHAMBRE(
	id_chambre INTEGER,
	id_user INTEGER,
	double DATE,
	triple DATE,
	quatre DATE,
	PRIMARY KEY(id_chambre)
);

CREATE TABLE MATERIEL(
	id_materiel INTEGER,
	id_user INTEGER,
	video_projecteur DATE,
	lecteur_dvd DATE,
	retroprojecteur DATE,
	fleche_laser DATE,
	telecopieur DATE,
	photocopieur DATE,
	baladeur DATE,
	micro_cravatte DATE,
	PRIMARY KEY(id_materiel)
);