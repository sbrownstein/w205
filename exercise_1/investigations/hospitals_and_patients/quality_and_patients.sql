SELECT corr(varscore, (basescore + consistencyscore)) AS correlation
FROM (
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
)
AS variancetable
JOIN hospital ON variancetable.providerid = hospital.providerid
ORDER BY correlation DESC
LIMIT 10;
