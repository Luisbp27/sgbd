SET search_path TO sgbd;

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
);

CREATE TABLE APODERAT (
    ideapo CHAR(10) NOT NULL,
    PRIMARY KEY (ideapo),
    FOREIGN KEY (ideapo) REFERENCES PERSONA(ideper)
);

CREATE TABLE TORERO (
    idetor CHAR(10) NOT NULL,
    ideapo CHAR(10) NOT NULL,
    PRIMARY KEY (idetor),
    FOREIGN KEY (ideapo) REFERENCES APODERAT(ideapo),
    FOREIGN KEY (idetor) REFERENCES PERSONA(ideper)
);

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
);

CREATE TABLE ACTUACIO (
    idact SERIAL,
    idetor CHAR(10) NOT NULL,
    datcor DATE,
    nompla VARCHAR(255) NOT NULL,
    PRIMARY KEY (idact),
    FOREIGN KEY (idetor) REFERENCES TORERO(idetor),
    FOREIGN KEY (nompla) REFERENCES PLAÇA_DE_BOUS(nompla)
);

CREATE TABLE ESDEVENIMENT (
    idesd SERIAL,
    fircor VARCHAR(255),
    datcor DATE,
    nompla VARCHAR(255),
    nombou VARCHAR(255),
    anybou DATE,
    pesbou NUMERIC(5, 2),
    cifram INT,
    nomram VARCHAR(255),
    PRIMARY KEY (idesd)
);

-- Inserts from migbd to defbd
INSERT INTO defbd.fed.PERSONA (ideper, nom, co1, co2, mai, dir, ciu, pai)
SELECT columnas FROM migbd.sgbd.PERSONA;

INSERT INTO defbd.fed.APODERAT (ideapo)
SELECT columnas FROM migbd.sgbd.APODERAT;

INSERT INTO defbd.fed.TORERO (idetor, ideapo)
SELECT columnas FROM migbd.sgbd.TORERO;

INSERT INTO defbd.fed.PLAÇA_DE_BOUS (nompla, anypla, locpla, tippla, ciupla, paipla, estpla, muspla)
SELECT columnas FROM migbd.sgbd.PLAÇA_DE_BOUS;

INSERT INTO defbd.fed.ACTUACIO (idetor, datcor, nompla)
SELECT columnas FROM migbd.sgbd.ACTUACIO;

INSERT INTO defbd.fed.ESDEVENIMENT (fircor, datcor, nompla, nombou, anybou, pesbou, cifram, nomram)
SELECT columnas FROM migbd.sgbd.ESDEVENIMENT;


