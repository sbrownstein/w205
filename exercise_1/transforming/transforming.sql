DROP TABLE procedure;
CREATE TABLE procedure AS
SELECT measureID, measureName, condition
FROM effective_care;

DROP TABLE hospital;
CREATE TABLE hospital AS SELECT
providerID, hospitalName, state, baseScore, consistencyScore
FROM survey_responses;

DROP TABLE scores;
CREATE TABLE scores AS
SELECT procedure.measureid, hospital.providerid, effective_care.score
FROM effective_care
JOIN hospital ON effective_care.providerid = hospital.providerid
JOIN procedure ON effective_care.measureid = procedure.measureid;
