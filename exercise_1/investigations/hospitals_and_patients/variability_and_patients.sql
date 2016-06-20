SELECT corr(avgscore, (basescore + consistencyscore)) AS correlation
FROM (
SELECT avg(score)
AS avgscore
FROM scores
WHERE cast(score as BIGINT) IS NOT NULL
ORDER BY avgscore DESC
)
AS averagetable
JOIN hospital ON averagetable.providerid = hospital.providerid
ORDER BY correlation DESC
LIMIT 10;
