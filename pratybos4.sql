--BOOKS COUNT NO AUTHORS WITHOUT BOOKS
SELECT 
	authors.name,
	COUNT(books.authorId) AS 'books'
FROM authors
INNER JOIN books
ON authors.authorId = books.authorId
GROUP BY authors.authorId
ORDER BY COUNT(books.authorId) DESC;

--BOOKS COUNT INCLUDE AUTHORS WITHOUT BOOKS
SELECT
	authors.name,
	COUNT(books.authorId) AS 'books'
FROM authors
LEFT JOIN books
ON authors.authorId = books.authorId
GROUP BY authors.authorId
ORDER BY COUNT(books.authorId) DESC;

--DELETE authors who dont have books

DELETE FROM authors
WHERE authors.authorId NOT IN
(SELECT books.authorId
FROM books
WHERE books.authorId IS NOT null
GROUP BY authorId
);


