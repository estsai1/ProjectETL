DROP TABLE IF EXISTS Test21;
DROP TABLE IF EXISTS Test1;
DROP TABLE IF EXISTS USVideos;

CREATE TABLE Test21 (
	id SERIAL,
	youtube_id VARCHAR(255) NOT NULL,
	video_id VARCHAR(255) NOT NULL
);

CREATE TABLE Test1 (
	id SERIAL,
	title VARCHAR(255) NOT NULL,
	description VARCHAR,
	published_at TIMESTAMP,
	country VARCHAR(255),
	youtube_id VARCHAR(255),
	bias VARCHAR(255)
);

CREATE TABLE USVideos (
	video_id VARCHAR(255) NOT NULL,
	trending_date VARCHAR(255),
	title VARCHAR NOT NULL,
	channel_title VARCHAR NOT NULL,
	category_id INT,
	publish_time TIMESTAMP,
	yt_views INT,
	likes INT,
	dislikes INT,
	comment_count INT,
	thumbnail_link VARCHAR,
	comments_disabled BOOLEAN,
	ratings_disabled BOOLEAN,
	video_error_or_removed BOOLEAN
);