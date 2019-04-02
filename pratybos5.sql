SELECT 
	authors.authorId,
	authors.name
FROM authors
UNION
SELECT 
	books.bookId,
	books.title
FROM books;
