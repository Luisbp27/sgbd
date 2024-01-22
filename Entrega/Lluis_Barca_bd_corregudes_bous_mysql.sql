SET search_path TO SGBD;

CREATE TABLE PERSONA (
    ideper CHAR(10) NOT NULL,
    nom VARCHAR(255),
    co1 VARCHAR(255),
    co2 VARCHAR(255),
    mai VARCHAR(255),
    dir VARCHAR(255),
    ciu VARCHAR(255),
    pai VARCHAR(255),
    PRIMARY KEY (ideper)
) TABLESPACE tb1;

CREATE TABLE APODERAT (
    ideapo CHAR(10) NOT NULL,
    PRIMARY KEY (ideapo),
    FOREIGN KEY (ideapo) REFERENCES PERSONA(ideper)
) TABLESPACE tb1;

CREATE TABLE TORERO (
    idetor CHAR(10) NOT NULL,
    ideapo CHAR(10) NOT NULL,
    PRIMARY KEY (idetor),
    FOREIGN KEY (ideapo) REFERENCES APODERAT(ideapo),
    FOREIGN KEY (idetor) REFERENCES PERSONA(ideper)
) TABLESPACE tb1;

CREATE TABLE PLAÇA_DE_BOUS (
    nompla VARCHAR(255) NOT NULL,
    anypla DATE,
    locpla INT,
    tippla INT,
    ciupla VARCHAR(255),
    paipla VARCHAR(255),
    estpla TEXT NULL,
    muspla INT,
    PRIMARY KEY (nompla),
    CHECK (tippla IN (0, 1)),
    CHECK (muspla IN (0, 1))
) TABLESPACE tb1;

CREATE TABLE ACTUACIO (
    idact INT NOT NULL AUTO_INCREMENT,
    idetor CHAR(10) NOT NULL,
    datcor DATE,
    nompla VARCHAR(255) NOT NULL,
    PRIMARY KEY (idact),
    FOREIGN KEY (idetor) REFERENCES TORERO(idetor),
    FOREIGN KEY (nompla) REFERENCES PLAÇA_DE_BOUS(nompla)
) TABLESPACE tb1;

CREATE TABLE ESDEVENIMENT (
    idesd INT NOT NULL AUTO_INCREMENT,
    fircor VARCHAR(255),
    datcor DATE,
    nompla VARCHAR(255),
    nombou VARCHAR(255),
    anybou DATE,
    pesbou FLOAT(5, 2),
    cifram INT,
    nomram VARCHAR(255),
    PRIMARY KEY (idesd)
) TABLESPACE tb1;