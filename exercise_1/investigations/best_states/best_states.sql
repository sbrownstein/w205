SELECT avg(score) AS avgscore,
state
FROM scores
WHERE cast(score as BIGINT) IS NOT NULL
JOIN hospital ON scores.providerid = hospital.providerid
GROUP BY state
ORDER BY avgscore DESC
LIMIT 10;
