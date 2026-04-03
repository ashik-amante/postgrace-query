SELECT * FROM person2

INSERT INTO person2 (id,user_name, age)
VALUES (3, 'kallu mama', 40);

ALTER TABLE person2
ADD COLUMN email VARCHAR(25) DEFAULT 'kallu@.com' not NULL;

INSERT INTO person2 (id,user_name, age,email)
VALUES (4, 'dholu mama', 40,'j0x4Q@example.com');

ALTER Table person2
DROP COLUMN email;

ALTER table person2
 add constraint unique_person2_age unique(age);

 ALTER table person2
 DROP constraint unique_person2_age