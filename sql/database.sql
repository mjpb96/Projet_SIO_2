CREATE DATABASE LES_ROUSSES;
USE LES_ROUSSES;

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

CREATE TABLE LOGEMENT(
	id_logement INTEGER AUTO_INCREMENT NOT NULL,
	type_logement VARCHAR(70) COMMENT 'Décrit le type de logement',
	nb_place INTEGER,
	PRIMARY KEY(id_logement)
) COMMENT = 'Logement pour agents adhérents';

CREATE TABLE SALLE( 
	id_salle INTEGER AUTO_INCREMENT,
	type_salle VARCHAR(70),
	nb_place INTEGER,
	PRIMARY KEY(id_salle)
) COMMENT = 'Salle de colloque';

CREATE TABLE CHAMBRE(
	id_chambre INTEGER AUTO_INCREMENT,
	type_chambre VARCHAR(50),
	nb_place INTEGER,
	PRIMARY KEY(id_chambre)
) COMMENT = 'Chambre de colloque';

CREATE TABLE MATERIEL(
	id_materiel INTEGER AUTO_INCREMENT NOT NULL,
	nom_materiel VARCHAR(50),
	PRIMARY KEY(id_materiel)
) COMMENT = 'Matériel pour colloque';

CREATE TABLE SEJOUR(
	id_sejour INTEGER AUTO_INCREMENT NOT NULL,
	nb_adulte INTEGER,
	nb_enfant INTEGER,
	nb_bebe INTEGER,
	pension INTEGER,
	demi_pension INTEGER,
	quotient_familial FLOAT,
	PRIMARY KEY(id_sejour)
) COMMENT = 'Sejour des agents adhérents';

DROP TABLE IF EXISTS RESERVATION_SEJ;
CREATE TABLE RESERVATION_SEJ(
	id_reservation_sej INTEGER NOT NULL AUTO_INCREMENT,
	id_client INTEGER NOT NULL,
	id_sejour INTEGER NOT NULL,
	date_debut DATE,
	date_fin DATE,
	PRIMARY KEY (id_reservation_sej),
	FOREIGN KEY (id_client) REFERENCES CLIENT(id_client),
	FOREIGN KEY (id_sejour) REFERENCES SEJOUR(id_sejour)
);



CREATE TABLE COLLOQUE(
	id_colloque INTEGER AUTO_INCREMENT,
	id_client INTEGER NOT NULL,
	nom VARCHAR(40),
	nb_chambre INTEGER,
	aperitif INTEGER,
	pauses INTEGER,
	pension INTEGER,
	demi_pension INTEGER,
	PRIMARY KEY (id_colloque),
	FOREIGN KEY (id_client) REFERENCES CLIENT(id_client),
);

DROP TABLE IF EXISTS RESERVATION_COL;
CREATE TABLE RESERVATION_COL(
	id INTEGER NOT NULL AUTO_INCREMENT,
	id_colloque INTEGER NOT NULL,
	date_debut DATE,
	date_fin DATE,
	PRIMARY KEY(id),
	FOREIGN KEY (id_colloque) REFERENCES COLLOQUE(id_colloque)
);

-- Proposition de structure de données numéro 1
DROP TABLE IF EXISTS RESA_SALLE;
CREATE TABLE RESA_SALLE(
	id INTEGER NOT NULL AUTO_INCREMENT,
	id_salle INTEGER NOT NULL,
	date_debut DATE,
	date_fin DATE,
	PRIMARY KEY(id),
	FOREIGN KEY (id_salle) REFERENCES SALLE(id_salle)
);
CREATE INDEX i_date_debut ON RESA_SALLE(date_debut);
CREATE INDEX i_date_fin ON RESA_SALLE(date_fin);

-- Proposition de structure de données numéro 2
CREATE TABLE RESA_SALLE(
	id INTEGER NOT NULL AUTO_INCREMENT,
	id_salle INTEGER NOT NULL,
	date_resa DATE,
	PRIMARY KEY(id),
	FOREIGN KEY (id_salle) REFERENCES SALLE(id_salle)
);
CREATE INDEX i_date_resa ON RESA_SALLE(date_resa);

DROP TABLE IF EXISTS RESERVATION_MAT;
CREATE TABLE RESERVATION_MAT(
	id INTEGER NOT NULL AUTO_INCREMENT,
	id_client INTEGER NOT NULL,
	id_materiel INTEGER NOT NULL,
	date_debut DATE,
	date_fin DATE,
	PRIMARY KEY (id),
	FOREIGN KEY(id_client) REFERENCES CLIENT(id_client),
	FOREIGN KEY(id_materiel) REFERENCES MATERIEL(id_materiel)
);

CREATE TABLE PAIEMENT(
	id_paiement INTEGER AUTO_INCREMENT NOT NULL,
	id_client INTEGER NOT NULL,
	date_paiement DATE,
	accompte FLOAT,
	solde FLOAT,
	PRIMARY KEY(id_paiement)
);