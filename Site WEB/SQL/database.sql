CREATE DATABASE LES_ROUSSES;
USE LES_ROUSSES;

CREATE TABLE USER(
	id_user INTEGER AUTO_INCREMENT,
	email VARCHAR(100),
	mdp VARCHAR(200),
	nom VARCHAR(50),
	prenom VARCHAR(50),
	entreprise VARCHAR(50),
	telephone CHAR(10),
	PRIMARY KEY(id_user)
);

CREATE TABLE SEJOUR(
	id_sejour INTEGER AUTO_INCREMENT,
	id_user INTEGER,
	nb_adulte INTEGER,
	nb_enfant INTEGER,
	nb_bebe INTEGER,
	pension VARCHAR(12),
	semaine INTEGER,
	quotient_familial FLOAT,
	menage INTEGER,
	reservation BOOLEAN,
	PRIMARY KEY(id_sejour)
);

CREATE TABLE LOGEMENT(
	id_logement INTEGER,
	id_user INTEGER,
	type_logement VARCHAR,
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
	pension VARCHAR(12),
	date_debut DATE,
	date_fin DATE,
	reservation BOOLEAN,
	PRIMARY KEY (id_colloque)
);

CREATE TABLE SALLE(
	id_salle INTEGER,
	id_user INTEGER, 
	conference_196 DATE,
	commission_50 DATE,
	commission_25 DATE,
	commission_10 DATE,
	reservation BOOLEAN,
	PRIMARY KEY(id_salle)
);

CREATE TABLE CHAMBRE(
	id_chambre INTEGER,
	id_user INTEGER,
	deux DATE,
	trois DATE,
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

CREATE TABLE PAIEMENT(
	id_paiement INTEGER AUTO_INCREMENT,
	date_paiement DATE,
	mode_paiement VARCHAR(15),
	accompte INTEGER,
	solde INTEGER,
	PRIMARY KEY(id_paiement)
);