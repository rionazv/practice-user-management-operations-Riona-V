/* INSERT */ 
INSERT INTO users (username, firstName, lastName, age) VALUES ("jbourne", "Jason", "Bourne", 45);

/* UPDATE */
UPDATE users SET firstName="Jimothy" WHERE username="jbourne";

/* DELETE */
DELETE FROM users WHERE id=1;

/* SELECT with CONDITIONS */
SELECT username, firstName, lastName FROM users WHERE (id>=5 AND id<=10);

/* SELECT with ORDERING and LIMITS */
SELECT * FROM users ORDER BY lastName ASC LIMIT 10;
