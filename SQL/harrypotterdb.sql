DROP DATABASE IF EXISTS harrypotterdb;
CREATE DATABASE harrypotterdb;
USE harrypotterdb;

CREATE TABLE Book (
	id INT UNSIGNED NOT NULL,
    image  VARCHAR(500) NOT NULL, 
    title VARCHAR(50) NOT NULL,
    bookDescription VARCHAR(500) NOT NULL,
    author VARCHAR(25) NOT NULL,
    theme VARCHAR(25) NOT NULL,
    gender VARCHAR(25) NOT NULL,
    country VARCHAR (25) NOT NULL,
    releaseYear INT UNSIGNED NOT NULL,
    CONSTRAINT book_pk PRIMARY KEY (id)
);
CREATE TABLE Wand(
	id INT UNSIGNED NOT NULL,
    image  VARCHAR(500) NOT NULL,
    wandDescription VARCHAR(500) NOT NULL,
	CONSTRAINT wand_pk PRIMARY KEY (id)
);
CREATE TABLE Funko(
	id INT UNSIGNED NOT NULL,
    image  VARCHAR(500) NOT NULL,
    funkoDescription VARCHAR(500) NOT NULL,
	CONSTRAINT Funko_pk PRIMARY KEY (id)
);