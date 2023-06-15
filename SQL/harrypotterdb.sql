DROP DATABASE IF EXISTS harrypotterdb;
CREATE DATABASE harrypotterdb;
USE harrypotterdb;

CREATE TABLE House(
	id INT UNSIGNED NOT NULL,
    houseName VARCHAR (25) NOT NULL,
    houseDescription VARCHAR (500) NOT NULL,
	image BLOB,
	CONSTRAINT house_pk PRIMARY KEY (id)
);

CREATE TABLE MainCharacter (
	id INT UNSIGNED NOT NULL,
    firstName VARCHAR(25) NOT NULL,
    secondName VARCHAR(25) NOT NULL,
    house INT UNSIGNED NOT NULL,
	image BLOB,
    CONSTRAINT mainCharacter_house_fk FOREIGN KEY (house) REFERENCES House(id),
	CONSTRAINT mainCharacter_pk PRIMARY KEY (id)
);

CREATE TABLE Book (
	id INT UNSIGNED NOT NULL,
    image BLOB,
    title VARCHAR(50) NOT NULL,
    bookDescription VARCHAR(500) NOT NULL,
    author VARCHAR(25) NOT NULL,
    theme VARCHAR(25) NOT NULL,
    gender VARCHAR(25) NOT NULL,
    country VARCHAR (25) NOT NULL,
    releaseYear INT UNSIGNED NOT NULL,
    price FLOAT UNSIGNED NOT NULL,
    mainCharacter INT UNSIGNED NOT NULL,
    CONSTRAINT book_mainCharacter_fk FOREIGN KEY(mainCharacter) REFERENCES MainCharacter(id), 
    CONSTRAINT book_pk PRIMARY KEY (id)
);

CREATE TABLE Wand(
	id INT UNSIGNED NOT NULL,
    image BLOB,
    wandDescription VARCHAR(500) NOT NULL,
	price FLOAT UNSIGNED NOT NULL,
    belongTo INT UNSIGNED NOT NULL,
    CONSTRAINT wand_belongTo_fk FOREIGN KEY (belongTo) REFERENCES mainCharacter(id),
	CONSTRAINT wand_pk PRIMARY KEY (id)
);

CREATE TABLE Funko(
	id INT UNSIGNED NOT NULL,
    image BLOB,
    funkoDescription VARCHAR(500) NOT NULL,
	price FLOAT UNSIGNED NOT NULL,
    aboutCharacter INT UNSIGNED NOT NULL,
	CONSTRAINT funko_aboutCharacter_fk FOREIGN KEY (aboutCharacter) REFERENCES MainCharacter(id),
	CONSTRAINT funko_pk PRIMARY KEY (id)
);

CREATE TABLE product(
	id INT UNSIGNED NOT NULL,
	book INT UNSIGNED,
    wand INT UNSIGNED,
    funko INT UNSIGNED,
    CONSTRAINT product_book_fk FOREIGN KEY (book) REFERENCES Book(id),
    CONSTRAINT product_wand_fk FOREIGN KEY (wand) REFERENCES Wand(id),
    CONSTRAINT product_funko_fk FOREIGN KEY (funko) REFERENCES Funko(id),
    CONSTRAINT product_pk PRIMARY KEY (id)
);