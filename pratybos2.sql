INSERT INTO authors
		(name)
VALUES	('Biliūnas'),
		('Šatrijos Ragana')
		
INSERT INTO books
	(authorId, title, year)
VALUES (10, 'Kliudžiau', 1900),
		(10, 'Brisiaus galas', 1900),
		(11, 'Sename Dvare', 1900);
		
UPDATE books SET authorId = 10 WHERE authorId = 11 LIMIT 1;
		
