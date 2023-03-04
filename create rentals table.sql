CREATE TABLE rentals (
    rID SERIAL PRIMARY KEY,
    cID INT REFERENCES customers(cID),
    caID INT REFERENCES cars(caID),
    rpID INT REFERENCES rental_plans(rpID),
    rstart DATE NOT NULL,
    rend DATE NOT NULL,
    rlength INT NOT NULL
);
