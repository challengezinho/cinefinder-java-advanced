ALTER TABLE cf_movie
    ADD COLUMN poster_url VARCHAR(500);

UPDATE cf_movie SET poster_url = 'https://image.tmdb.org/t/p/w500/qmDpIHrmpJINaRKAfWQfftjCdyi.jpg'
WHERE id = 1;

UPDATE cf_movie SET poster_url = 'https://image.tmdb.org/t/p/w500/rAiYTfKGqDCRIIqoNMq72g1XK8.jpg'
WHERE id = 2;

UPDATE cf_movie SET poster_url = 'https://image.tmdb.org/t/p/w500/f89U3ADr1oiB1s9GkdPOEpXUk5H.jpg'
WHERE id = 3;

UPDATE cf_movie SET poster_url = 'https://image.tmdb.org/t/p/w500/or06FN3Dka5tukK1e9sl16pB3iy.jpg'
WHERE id = 4;