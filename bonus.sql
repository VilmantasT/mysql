CREATE DATABASE News;

CREATE TABLE News
	(
		newsId INT(1) NOT NULL AUTO_INCREMENT,
		text VARCHAR(255) NOT NULL,
		date DATE,
		PRIMARY KEY (newsId)
	);
	
CREATE TABLE Comments
	(
		commentId INT(11) NOT NULL AUTO_INCREMENT,
		text VARCHAR(255) NOT NULL,
		date Date,
		newsId INT(11) NOT NULL,
		PRIMARY KEY (commentId)
	);
	
INSERT INTO News
	    (text, date) 
VALUES      (value, value), 
            (value, value);
	
SELECT news.newsId, news.date, news.text AS 'news', comments.date,
comments.text AS 'comment' FROM news, comments WHERE news.newsId = comments.newsId ORDER BY comments.date, news.date ASC LIMIT 2;