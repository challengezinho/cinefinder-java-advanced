-- V2__insert_initial_data.sql

-- GENRES
INSERT INTO cf_genre (name)
VALUES ('Action'),
       ('Comedy'),
       ('Drama'),
       ('Sci-Fi'),
       ('Horror');

-- USERS
INSERT INTO cf_user (name, email, password, age, is_admin)
VALUES ('Jon', 'jon@email.com', '123456', 20, true),
       ('Maria', 'maria@email.com', '123456', 25, false),
       ('Carlos', 'carlos@email.com', '123456', 30, false);

-- MOVIES
INSERT INTO cf_movie (title, description, release_date, average_rating)
VALUES ('Inception', 'A thief who steals corporate secrets through dream-sharing technology.', '2010-07-16', 4.8),
       ('The Dark Knight', 'Batman faces the Joker in Gotham City.', '2008-07-18', 4.9),
       ('Interstellar', 'A team of explorers travel through a wormhole in space.', '2014-11-07', 4.7),
       ('The Matrix', 'A hacker discovers reality is a simulation.', '1999-03-31', 4.8),
       ('Titanic', 'A love story during the sinking of the Titanic.', '1997-12-19', 4.5);

-- MOVIE_GENRES
INSERT INTO cf_movie_genres (movie_id, genre_id)
VALUES (1, 4),
       (1, 1),
       (2, 1),
       (2, 3),
       (3, 4),
       (3, 3),
       (4, 4),
       (4, 1),
       (5, 3);

-- REVIEWS
INSERT INTO cf_review (user_id, movie_id, rating, comment)
VALUES (1, 1, 5.0, 'Amazing movie!'),
       (2, 1, 4.5, 'Very good concept.'),
       (3, 2, 5.0, 'Best Batman movie ever.'),
       (2, 3, 4.8, 'Great sci-fi experience.'),
       (1, 5, 4.0, 'Classic romance.');

-- MOVIE LISTS
INSERT INTO cf_movie_list (name, user_id)
VALUES ('Favorite Movies', 1),
       ('Sci-Fi Collection', 2),
       ('Weekend Watchlist', 3);

-- MOVIE_LIST_MOVIES
INSERT INTO cf_movie_list_movies (movie_list_id, movie_id)
VALUES (1, 1),
       (1, 2),
       (1, 4),
       (2, 3),
       (2, 4),
       (3, 5),
       (3, 1);