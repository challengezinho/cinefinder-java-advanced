-- =========================
-- USUÁRIOS (10)
-- =========================
INSERT INTO cf_user (name, email, password, age, is_admin)
VALUES ('User1', 'user1@email.com', '123456', 20, 1);
INSERT INTO cf_user (name, email, password, age, is_admin)
VALUES ('User2', 'user2@email.com', '123456', 21, 0);
INSERT INTO cf_user (name, email, password, age, is_admin)
VALUES ('User3', 'user3@email.com', '123456', 22, 0);
INSERT INTO cf_user (name, email, password, age, is_admin)
VALUES ('User4', 'user4@email.com', '123456', 23, 0);
INSERT INTO cf_user (name, email, password, age, is_admin)
VALUES ('User5', 'user5@email.com', '123456', 24, 0);
INSERT INTO cf_user (name, email, password, age, is_admin)
VALUES ('User6', 'user6@email.com', '123456', 25, 0);
INSERT INTO cf_user (name, email, password, age, is_admin)
VALUES ('User7', 'user7@email.com', '123456', 26, 0);
INSERT INTO cf_user (name, email, password, age, is_admin)
VALUES ('User8', 'user8@email.com', '123456', 27, 0);
INSERT INTO cf_user (name, email, password, age, is_admin)
VALUES ('User9', 'user9@email.com', '123456', 28, 0);
INSERT INTO cf_user (name, email, password, age, is_admin)
VALUES ('User10', 'user10@email.com', '123456', 29, 0);

-- =========================
-- GÊNEROS (10)
-- =========================
INSERT INTO cf_genre (name)
VALUES ('Ação');
INSERT INTO cf_genre (name)
VALUES ('Comédia');
INSERT INTO cf_genre (name)
VALUES ('Drama');
INSERT INTO cf_genre (name)
VALUES ('Ficção Científica');
INSERT INTO cf_genre (name)
VALUES ('Terror');
INSERT INTO cf_genre (name)
VALUES ('Romance');
INSERT INTO cf_genre (name)
VALUES ('Aventura');
INSERT INTO cf_genre (name)
VALUES ('Animação');
INSERT INTO cf_genre (name)
VALUES ('Suspense');
INSERT INTO cf_genre (name)
VALUES ('Fantasia');

-- =========================
-- FILMES (10)
-- =========================
INSERT INTO cf_movie (title, description, release_date, average_rating)
VALUES ('Filme1', 'Descricao 1', TO_DATE('2001-01-01', 'YYYY-MM-DD'), 4.1);
INSERT INTO cf_movie (title, description, release_date, average_rating)
VALUES ('Filme2', 'Descricao 2', TO_DATE('2002-02-02', 'YYYY-MM-DD'), 4.2);
INSERT INTO cf_movie (title, description, release_date, average_rating)
VALUES ('Filme3', 'Descricao 3', TO_DATE('2003-03-03', 'YYYY-MM-DD'), 4.3);
INSERT INTO cf_movie (title, description, release_date, average_rating)
VALUES ('Filme4', 'Descricao 4', TO_DATE('2004-04-04', 'YYYY-MM-DD'), 4.4);
INSERT INTO cf_movie (title, description, release_date, average_rating)
VALUES ('Filme5', 'Descricao 5', TO_DATE('2005-05-05', 'YYYY-MM-DD'), 4.5);
INSERT INTO cf_movie (title, description, release_date, average_rating)
VALUES ('Filme6', 'Descricao 6', TO_DATE('2006-06-06', 'YYYY-MM-DD'), 4.6);
INSERT INTO cf_movie (title, description, release_date, average_rating)
VALUES ('Filme7', 'Descricao 7', TO_DATE('2007-07-07', 'YYYY-MM-DD'), 4.7);
INSERT INTO cf_movie (title, description, release_date, average_rating)
VALUES ('Filme8', 'Descricao 8', TO_DATE('2008-08-08', 'YYYY-MM-DD'), 4.8);
INSERT INTO cf_movie (title, description, release_date, average_rating)
VALUES ('Filme9', 'Descricao 9', TO_DATE('2009-09-09', 'YYYY-MM-DD'), 4.9);
INSERT INTO cf_movie (title, description, release_date, average_rating)
VALUES ('Filme10', 'Descricao 10', TO_DATE('2010-10-10', 'YYYY-MM-DD'), 5.0);

-- =========================
-- FILME x GÊNERO (10)
-- =========================
INSERT INTO cf_movie_genres (genre_id, movie_id)
VALUES (1, 1);
INSERT INTO cf_movie_genres (genre_id, movie_id)
VALUES (2, 2);
INSERT INTO cf_movie_genres (genre_id, movie_id)
VALUES (3, 3);
INSERT INTO cf_movie_genres (genre_id, movie_id)
VALUES (4, 4);
INSERT INTO cf_movie_genres (genre_id, movie_id)
VALUES (5, 5);
INSERT INTO cf_movie_genres (genre_id, movie_id)
VALUES (6, 6);
INSERT INTO cf_movie_genres (genre_id, movie_id)
VALUES (7, 7);
INSERT INTO cf_movie_genres (genre_id, movie_id)
VALUES (8, 8);
INSERT INTO cf_movie_genres (genre_id, movie_id)
VALUES (9, 9);
INSERT INTO cf_movie_genres (genre_id, movie_id)
VALUES (10, 10);

-- =========================
-- LISTAS (10)
-- =========================
INSERT INTO cf_movie_list (name, user_id)
VALUES ('Lista1', 1);
INSERT INTO cf_movie_list (name, user_id)
VALUES ('Lista2', 2);
INSERT INTO cf_movie_list (name, user_id)
VALUES ('Lista3', 3);
INSERT INTO cf_movie_list (name, user_id)
VALUES ('Lista4', 4);
INSERT INTO cf_movie_list (name, user_id)
VALUES ('Lista5', 5);
INSERT INTO cf_movie_list (name, user_id)
VALUES ('Lista6', 6);
INSERT INTO cf_movie_list (name, user_id)
VALUES ('Lista7', 7);
INSERT INTO cf_movie_list (name, user_id)
VALUES ('Lista8', 8);
INSERT INTO cf_movie_list (name, user_id)
VALUES ('Lista9', 9);
INSERT INTO cf_movie_list (name, user_id)
VALUES ('Lista10', 10);

-- =========================
-- LISTA x FILMES (10)
-- =========================
INSERT INTO cf_movie_list_movies (movie_id, movie_list_id)
VALUES (1, 1);
INSERT INTO cf_movie_list_movies (movie_id, movie_list_id)
VALUES (2, 2);
INSERT INTO cf_movie_list_movies (movie_id, movie_list_id)
VALUES (3, 3);
INSERT INTO cf_movie_list_movies (movie_id, movie_list_id)
VALUES (4, 4);
INSERT INTO cf_movie_list_movies (movie_id, movie_list_id)
VALUES (5, 5);
INSERT INTO cf_movie_list_movies (movie_id, movie_list_id)
VALUES (6, 6);
INSERT INTO cf_movie_list_movies (movie_id, movie_list_id)
VALUES (7, 7);
INSERT INTO cf_movie_list_movies (movie_id, movie_list_id)
VALUES (8, 8);
INSERT INTO cf_movie_list_movies (movie_id, movie_list_id)
VALUES (9, 9);
INSERT INTO cf_movie_list_movies (movie_id, movie_list_id)
VALUES (10, 10);

-- =========================
-- REVIEWS (10)
-- =========================
INSERT INTO cf_review (user_id, movie_id, rating, comments)
VALUES (1, 1, 4.5, 'Muito bom');
INSERT INTO cf_review (user_id, movie_id, rating, comments)
VALUES (2, 2, 4.0, 'Bom');
INSERT INTO cf_review (user_id, movie_id, rating, comments)
VALUES (3, 3, 3.5, 'Ok');
INSERT INTO cf_review (user_id, movie_id, rating, comments)
VALUES (4, 4, 5.0, 'Excelente');
INSERT INTO cf_review (user_id, movie_id, rating, comments)
VALUES (5, 5, 4.2, 'Legal');
INSERT INTO cf_review (user_id, movie_id, rating, comments)
VALUES (6, 6, 3.8, 'Interessante');
INSERT INTO cf_review (user_id, movie_id, rating, comments)
VALUES (7, 7, 4.9, 'Top');
INSERT INTO cf_review (user_id, movie_id, rating, comments)
VALUES (8, 8, 2.5, 'Fraco');
INSERT INTO cf_review (user_id, movie_id, rating, comments)
VALUES (9, 9, 3.0, 'Medio');
INSERT INTO cf_review (user_id, movie_id, rating, comments)
VALUES (10, 10, 4.7, 'Muito bom mesmo');