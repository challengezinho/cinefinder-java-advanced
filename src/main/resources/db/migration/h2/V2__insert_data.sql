-- =========================
-- USERS
-- =========================
INSERT INTO cf_user (id, name, email, password, age, is_admin) VALUES
                                                                   (1, 'Jon', 'jon@email.com', '123456', 20, TRUE),
                                                                   (2, 'Maria', 'maria@email.com', '123456', 22, FALSE),
                                                                   (3, 'Carlos', 'carlos@email.com', '123456', 30, FALSE);

-- =========================
-- MOVIES
-- =========================
INSERT INTO cf_movie (id, title, description, release_date, average_rating) VALUES
                                                                                (1, 'Inception', 'Dreams inside dreams', '2010-07-16', 4.8),
                                                                                (2, 'Interstellar', 'Space exploration and time', '2014-11-07', 4.7),
                                                                                (3, 'The Matrix', 'Simulation reality', '1999-03-31', 4.9),
                                                                                (4, 'Avengers: Endgame', 'Final battle', '2019-04-26', 4.5);

-- =========================
-- MOVIE GENRES
-- =========================
INSERT INTO cf_movie_genres (movie_id, genre) VALUES
                                                  (1, 'SCI_FI'),
                                                  (1, 'ACTION'),
                                                  (2, 'SCI_FI'),
                                                  (2, 'DRAMA'),
                                                  (3, 'SCI_FI'),
                                                  (3, 'ACTION'),
                                                  (4, 'ACTION'),
                                                  (4, 'ADVENTURE');

-- =========================
-- MOVIE LISTS
-- =========================
INSERT INTO cf_movie_list (id, name, user_id) VALUES
                                                  (1, 'Favoritos do Jon', 1),
                                                  (2, 'Filmes para assistir', 2);

-- =========================
-- MOVIE LIST MOVIES
-- =========================
INSERT INTO cf_movie_list_movies (movie_id, movie_list_id) VALUES
                                                               (1, 1),
                                                               (3, 1),
                                                               (2, 2),
                                                               (4, 2);

-- =========================
-- REVIEWS
-- =========================
INSERT INTO cf_review (id, user_id, movie_id, rating, comments) VALUES
                                                                    (1, 1, 1, 5.0, 'Mind blowing!'),
                                                                    (2, 2, 1, 4.5, 'Very good'),
                                                                    (3, 3, 2, 4.7, 'Amazing visuals'),
                                                                    (4, 1, 3, 5.0, 'Classic!'),
                                                                    (5, 2, 4, 4.0, 'Great ending');