-- TODO: Write and run a query to add the first record to the table: Leonardo da Vinci
INSERT INTO artist (first_name, last_name) VALUES ("Leonardo", "da Vinci");
SELECT * FROM artist;

-- TODO: Write and run a query to add at least 9 more records to the table, for example: 
--  Johannes Vermeer, Claude Monet, Gustav Klimt, Salvador Dalí, Vincent Van Gogh, etc.
INSERT INTO artist (first_name, last_name) VALUES 
("Vincent", "van Gogh"),
("Claude", "Monet"),
("Gustav", "Klimt"),
("Johannes", "Vermeer"),
("Pablo", "Picasso"),
("Pierre-August", "Renoir"),
("Salvador", "Dali"),
("Diego", "Rivera"),
("Frida", "Kahlo"),
("Georgia", "O'Keeffe"),
("Edvard", "Munch"),
("Katsushika", "Hokusai"),
("Wassily", "Kandinsky");

-- TODO: Write a query to return results for all records and run it
SELECT * FROM artist;

-- TODO: Write and run a query to add a new column to the table: country (50 chars max)
ALTER TABLE artist
ADD country VARCHAR(50);

-- TODO: Write a query to change the country to the appropriate value for a single artist 
--  using a conditional clause. Re-run the query with new values for each record 
--  until they are all updated.
UPDATE artist SET country="Netherlands" WHERE id=1; 

-- TODO: Re-run the query you wrote above that shows results for all records
SELECT * FROM artist;

-- TODO: Write and run a query that returns only the last name and country for all records
SELECT last_name, country FROM artist;

-- TODO: Write and run a query that returns only records where the country is France 
--  (or Italy or Netherlands or whatever works for your data)
SELECT * FROM artist WHERE country="Netherlands";

-- TODO: Write and run a query that returns only records where the first name begins with an L
SELECT * FROM artist WHERE first_name LIKE "L%";

-- TODO: Write and run a query to view only the first 5 records
SELECT * FROM artist LIMIT 5;

-- TODO: Write and run a query to view only the next 5 records
SELECT * FROM artist LIMIT 5 OFFSET 5;

-- TODO: Write and run a query to delete one of the records
DELETE FROM artist WHERE id>15;

-- TODO: Write and run a query to produce all records sorted by last name
SELECT * FROM artist ORDER BY last_name ASC;

-- TODO: Write and run a query to produce all records sorted in reverse by country
SELECT * FROM artist ORDER BY country DESC;

-- TODO: Write and run a query that provides a new temporary column called full_name 
--  (instead of first and last names separately) along with country
SELECT concat(first_name, ' ', last_name) AS full_name FROM artist;