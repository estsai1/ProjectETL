-- Join Test1 and Test21
CREATE TABLE Test3 AS
SELECT t2.youtube_id, t2.video_id, t1.title, t1.bias
FROM Test21 AS t2
INNER JOIN Test1 AS t1 ON
t2.youtube_id = t1.youtube_id;

-- Join Test3 and USVideos
CREATE TABLE Test4 AS
SELECT t3.title, t3.bias, t3.video_id, us.yt_views, us.likes
FROM Test3 AS t3
INNER JOIN USVideos AS us ON
t3.video_id = us.video_id;

-- Find the total number of videos in the political bias data
SELECT COUNT(*) FROM Test3;

SELECT * FROM Test4;