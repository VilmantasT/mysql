CREATE TABLE mult_authors
	(	
		id INT AUTO_INCREMENT PRIMARY KEY,
		bookId INT(11),
		authorId INT(11)
	);
	
INSERT INTO mult_authors
	(bookId, authorId)
VALUES
	(1, 1),
	(2, 2),
	(3, 4),
	(4, 7),
	(5, 7),
	(9, 1),
	(5, 4),
	(3, 1);
	
SELECT 
	books.title,
	GROUP_CONCAT(DISTINCT authors.name SEPARATOR ', ') AS authors
FROM mult_authors
INNER JOIN books
ON mult_authors.bookId = books.bookId
INNER JOIN authors
ON mult_authors.authorId = authors.authorId
GROUP BY mult_authors.bookId;


ALTER TABLE `books` CHANGE `title` `title` VARCHAR(255) CHARACTER SET utf16 COLLATE utf16_lithuanian_ci

