CREATE DATABASE books;

CREATE TABLE authors
	(
		authorId INT(11) NOT NULL AUTO_INCREMENT,
		name VARCHAR(255) NOT NULL,
		PRIMARY KEY (authorId)
	);
	
CREATE TABLE books
	(
		bookId INT(11) NOT NULL AUTO_INCREMENT,
		authorId INT(11),
		title VARCHAR(255) NOT NULL,
		year YEAR(4) NOT NULL,
		PRIMARY KEY (bookId)
	);
		
CREATE TABLE mult_authors
	(
		bookId INT(11) NOT NULL,
		authorId INT(11),
		title VARCHAR(255) NOT NULL,
		year YEAR(4)
	);
	
ALTER TABLE books CONVERT TO CHARACTER SET utf16_lithuanian_ci;