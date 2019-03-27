SELECT books. * FROM books;

SELECT books.title FROM books ORDER BY title ASC;

SELECT books.authorId, COUNT(books.bookId) AS 'books_count' FROM books GROUP BY books.authorId;