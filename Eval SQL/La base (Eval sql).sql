DROP DATABASE if EXISTS évaluation;

CREATE DATABASE évaluation;

USE évaluation;

CREATE TABLE CLIENT (
cli_num INT NOT NULL,
cli_nom VARCHAR(50),
cli_adresse VARCHAR(50),
cli_tel VARCHAR(50),
PRIMARY KEY (cli_num)
);

CREATE TABLE commande (
com_num INT NOT NULL ,
cli_num INT NOT NULL ,
com_date DATETIME ,
com_obs VARCHAR(50),
PRIMARY KEY (com_num),
 FOREIGN KEY (cli_num) REFERENCES client (cli_num)
);

CREATE TABLE produit (
pro_num INT NOT NULL,
pro_libelle VARCHAR(50),
pro_description VARCHAR(50),
PRIMARY KEY (pro_num)
);

CREATE TABLE est_compose (
com_num INT NOT NULL,
pro_num INT NOT NULL,
est_qte INT ,
PRIMARY KEY (com_num, pro_num),
FOREIGN KEY (com_num) REFERENCES commande (com_num)northwindnorthwindnorthwind
FOREIGN KEY (pro_num) REFERENCES produit (pro_num)

);










