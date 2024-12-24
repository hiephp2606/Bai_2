USE test;

-- 1. Add a primary key to the id fields in the pets and people tables.
ALTER TABLE pets ADD PRIMARY KEY (id);
ALTER TABLE people ADD PRIMARY KEY (id);

-- 2. Add a foreign key to the owner_id field in the pets table referencing the id field 
-- in the people table.
ALTER TABLE pets 
ADD CONSTRAINT fk_owner_id 
FOREIGN KEY (owner_id) REFERENCES people(id);

-- 3. Add a column named email to the people table.
ALTER TABLE people ADD COLUMN email VARCHAR(255);

-- 4. Add a unique constraint to the email column in the people table.
ALTER TABLE people ADD CONSTRAINT unique_email UNIQUE (email);

-- 5. Rename the name column in the pets table to ‘first_name’.
ALTER TABLE pets RENAME COLUMN name TO first_name;

-- 6. Change the postcode data type to CHAR(7) in the addresses table.
ALTER TABLE addresses MODIFY COLUMN postcode CHAR(7);

-- 7. Add a table named countries with the following fields: id (int), name (varchar(20)), code (char(3)).
CREATE TABLE countries (
    id INT PRIMARY KEY,
    name VARCHAR(20),
    code CHAR(3)
);

-- 8. Rename the addresses table to locations.
RENAME TABLE addresses TO locations;

-- 9. Delete the countries table.
DROP TABLE countries;