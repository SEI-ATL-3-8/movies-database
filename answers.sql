INSERT INTO movies
(title, releaseDate, synopsis)
VALUES
('Office Space', 1999, 'why work hard if you don''t have to');
-- id 31

INSERT INTO directors
(name)
VALUES
('Mike Judge');
-- id 19

UPDATE movies
SET directorId = 19
WHERE id = 31;

INSERT INTO users
(name)
VALUES
('testing pete');
-- id 5

INSERT INTO usersMovies
(userId, movieId)
VALUES
(5, 31);


SELECT movies.title FROM
directors JOIN movies ON directors.id = movies.directorId
WHERE directors.name = 'Alex Garland';


SELECT directors.name FROM
movies JOIN directors ON directors.id = movies.directorId
WHERE movies.title = 'There Will Be Blood';


SELECT movies.title FROM
users JOIN usersMovies ON users.id = usersMovies.userId
JOIN movies ON movies.id = usersMovies.movieId
WHERE users.name = 'Ryan';



SELECT users.name FROM
movies JOIN usersMovies ON movies.id = usersMovies.movieId
JOIN users ON users.id = usersMovies.userId
WHERE movies.title = 'The Lobster';


