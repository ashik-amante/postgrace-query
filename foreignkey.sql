CREATE Table allUsers (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

-- CREATE Table posts (
--     id SERIAL PRIMARY KEY,
--     title TEXT NOT NULL,
--     user_id INTEGER NOT NULL,
--     FOREIGN KEY (user_id) REFERENCES allUsers(id)
-- );

CREATE Table posts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER NOT NULL REFERENCES allUsers(id) on delete cascade
);
DROP Table posts

DROP TABLE allusers

INSERT INTO allUsers (username)
VALUES ('kamrul brother');


INSERT INTO posts (title,user_id)
VALUES ('malik sara post',NULL)

INSERT INTO posts (title,user_id)
VALUES ('ami salauddin',6);

SELECT * FROM allUsers;
SELECT * FROM posts;


-- delete functionality

DELETE FROM allUsers
WHERE id = 4;

-- in the same process we can add constrain on delete set null, the foreign key will be null

-- in the same process we can add constrain on delete default , the foreign key will be default (what you provide as a default value in the column loke 2222,333,111 etc)