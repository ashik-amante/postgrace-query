SELECT * FROM posts

SELECT * FROM allusers

SELECT * FROM posts
INNER JOIN allusers
on posts.user_id = allusers.id

SELECT * FROM posts
left JOIN allusers
on posts.user_id = allusers.id

SELECT * FROM allusers
LEFT JOIN posts
on allusers.id = posts.user_id

SELECT * FROM posts
RIGHT JOIN allusers
on posts.user_id = allusers.id