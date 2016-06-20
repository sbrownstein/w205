SELECT variance(avgscore) AS varscore,
providerid
FROM (
SELECT avg(score)
AS avgscore
FROM scores
WHERE cast(score as BIGINT) IS NOT NULL
ORDER BY avgscore DESC
)
GROUP BY providerid
ORDER BY varscore DESC
LIMIT 10;


