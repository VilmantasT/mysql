CREATE TABLE authors_books
	(
		bookId INT(11) NOT NULL,
		authorId INT(11),
		title VARCHAR(255) NOT NULL,
		year YEAR(4)
	);