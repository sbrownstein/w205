SELECT avg(score)
AS avgscore
FROM scores
WHERE cast(score as BIGINT) IS NOT NULL
ORDER BY avgscore DESC
LIMIT 10;


