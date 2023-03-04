CREATE TABLE cars (
    caID SERIAL PRIMARY KEY,
    camake VARCHAR(15) NOT NULL,
    camodel VARCHAR(15) NOT NULL,
    cafuel VARCHAR (1) NOT NULL,
    caseats INT NOT NULL
);