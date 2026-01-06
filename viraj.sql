SELECT * FROM `ytcomparison-483311.viraj.viraj` LIMIT 1000;

SELECT 
    content_type,
    COUNT(video_id) AS video_numbers,
    SUM(likes) AS total_likes,
    AVG(likes) AS avg_likes_per_video,
    AVG(likes) * LOG(1 + COUNT(video_id)) AS performance_score
FROM `ytcomparison-483311.viraj.viraj`
GROUP BY content_type
HAVING COUNT(video_id) >= 3  -- ignore categories with too few videos
ORDER BY performance_score DESC;

