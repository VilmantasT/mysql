SELECT authors.name, COUNT(*)
FROM authors, books
WHERE authors.authorId = books.authorId
GROUP BY authors.authorId;

SELECT authors.name,
COUNT(books.bookId)
FROM authors
LEFT JOIN books ON
authors.authorId = books.authorId
GROUP BY authors.authorId


DELETE FROM authors
WHERE NOT EXISTS 
(SELECT books.authorId FROM books WHERE books.authorId = authors.authorId);

