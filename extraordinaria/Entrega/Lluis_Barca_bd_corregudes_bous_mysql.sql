CREATE TABLE APODERAT (
    ideapo VARCHAR(10) NOT NULL,
    nomapo VARCHAR(255) NOT NULL,
    co1apo VARCHAR(255) NOT NULL,
    co2apo VARCHAR(255),
    maiapo VARCHAR(255),
    dirapo VARCHAR(255),
    ciuapo VARCHAR(255) NOT NULL,
    paiapo VARCHAR(255) NOT NULL,
    PRIMARY KEY (ideapo)
) TABLESPACE tb_1;

CREATE TABLE TORERO (
    idetor VARCHAR(10) NOT NULL,
    nomtor VARCHAR(255) NOT NULL,
    co1tor VARCHAR(255) NOT NULL,
    co2tor VARCHAR(255),
    maitor VARCHAR(255),
    dirtor VARCHAR(255) NOT NULL,
    ciutor VARCHAR(255) NOT NULL,
    paitor VARCHAR(255) NOT NULL,
    ideapo VARCHAR(10) NOT NULL,
    PRIMARY KEY (idetor)
) TABLESPACE tb_1;

CREATE TABLE PLAÇA_DE_BOUS (
    nompla VARCHAR(255) NOT NULL,
    anypla DATE NOT NULL,
    locpla INT NOT NULL,
    tippla BOOLEAN NOT NULL,
    ciupla VARCHAR(255) NOT NULL,
    paipla VARCHAR(255) NOT NULL,
    estpla TEXT,
    muspla BOOLEAN NOT NULL,
    PRIMARY KEY (nompla)
) TABLESPACE tb_1;

CREATE TABLE ESDEVENIMENT (
    fircor VARCHAR(255) NOT NULL,
    datcor DATE NOT NULL,
    nompla VARCHAR(255) NOT NULL,
    nombou VARCHAR(255) NOT NULL,
    anybou DATE NOT NULL,
    pesbou NUMERIC(5, 2) NOT NULL,
    cifram INT NOT NULL,
    nomram VARCHAR(255) NOT NULL,
    PRIMARY KEY (fircor, datcor)
) TABLESPACE tb_1;

CREATE TABLE ACTUACIO (
    idetor VARCHAR(10) NOT NULL,
    datcor DATE NOT NULL,
    nompla VARCHAR(255) NOT NULL,
    PRIMARY KEY (idetor, datcor, nompla)
) TABLESPACE tb_1;