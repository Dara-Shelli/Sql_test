
/* 1 */

SELECT mov_title, mov_year
FROM movie;

/* 2 */
SELECT mov_year
FROM movie
WHERE mov_title = 'American Beauty';

/* 3 */
SELECT mov_title
FROM movie
WHERE mov_year = 1999;

/* 4 */
SELECT mov_title, mov_year
FROM movie
WHERE mov_year < 1998;

/* 5 */
SELECT mov_title
FROM movie
UNION ALL
SELECT rev_name
FROM reviewer;

/* 6 */
SELECT movies.reviewer.rev_name
FROM reviewer
INNER JOIN rating r on reviewer.rev_id = r.rev_id
WHERE r.rev_stars >=7;


/* 7 */
SELECT mov_title
FROM movie
LEFT JOIN rating r on movie.mov_id = r.mov_id
WHERE r.num_o_ratings IS NULL;


/* 8 */

SELECT mov_title, mov_id
FROM movie
WHERE mov_id IN (5, 7, 9);

/* 9 */

SELECT act_id
FROM actor
WHERE act_fname LIKE 'Woody' AND act_lname LIKE 'Allen';


/* 10 */

SELECT *
FROM movie
WHERE mov_rel_country NOT LIKE 'UK';

/* 11 */

SELECT mov_year, mov_title
FROM movie
INNER JOIN rating r on movie.mov_id = r.mov_id
WHERE r.rev_stars > 3
ORDER BY mov_year ASC;

/* 12 */

SELECT mov_title, MAX(rev_stars)
FROM movie INNER JOIN rating r on movie.mov_id = r.mov_id
GROUP BY mov_title
ORDER BY mov_title ASC;
