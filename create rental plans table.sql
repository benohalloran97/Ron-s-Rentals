CREATE TABLE rental_plans (
    rpID SERIAL PRIMARY KEY,
    rpplan VARCHAR(10) NOT NULL,
    rpprice MONEY NOT NULL,
    caID INT REFERENCES cars(caID)
);
