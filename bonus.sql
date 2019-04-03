CREATE DATABASE News;

CREATE TABLE News
	(
		newsId INT(11) NOT NULL AUTO_INCREMENT,
		text VARCHAR(255) NOT NULL,
		news_date TIMESTAMP DEFAULT NOW(),
		PRIMARY KEY (newsId)
	);
	
CREATE TABLE Comments
	(
		commentId INT(11) NOT NULL AUTO_INCREMENT,
		text VARCHAR(255) NOT NULL,
		comment_date TIMESTAMP DEFAULT NOW(),
		newsId INT(11) NOT NULL,
		PRIMARY KEY (commentId)
	);
	
INSERT INTO News
	    (text) 
VALUES      ('news1'), 
            ('news2'),
			('news3'),
			('news4'),
			('news5'),
			('news6'),
			('news7'),
			('news8'),
			('news9'),
			('news10'),
			('news11');
			
INSERT INTO Comments
		(text, newsId)
VALUES  ('comment1', 1),
		('comment2', 1),
		('comment1', 2),
		('comment2', 2),	
			
SELECT 
	news.newsId,
	news.news_date AS newsDate,
	news.text AS newsText,
	comments.comment_date AS commentDate,
	comments.text AS commentText
FROM news
INNER JOIN comments
ON news.newsId = comments.newsId
WHERE comment_date IN (
	 SELECT MAX(comment_date)
	 FROM comments
	 GROUP BY newsId
	)
GROUP BY news.newsId
ORDER BY news.news_date DESC LIMIT 10;
	
			
	
