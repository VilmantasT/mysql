CREATE TABLE mult_authors
	(
		bookId INT(11) NOT NULL,
		authorId INT(11)
	);
	
INSERT INTO mult_authors
	(bookId, authorId)
VALUES
	(1, 1),
	(1, 2),
	(5, 7),
	(2, 2),
	(4, 6);
	



ALTER TABLE `books` CHANGE `title` `title` VARCHAR(255) CHARACTER SET utf16 COLLATE utf16_lithuanian_ci

