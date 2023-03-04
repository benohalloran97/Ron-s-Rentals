CREATE TABLE customers (
    cID SERIAL PRIMARY KEY,
    cfirst VARCHAR(15) NOT NULL,
    clast VARCHAR(15) NOT NULL,
    cemail VARCHAR(50) NOT NULL
);