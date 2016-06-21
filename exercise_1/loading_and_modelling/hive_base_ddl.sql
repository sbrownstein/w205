DROP TABLE effective_care;
CREATE EXTERNAL TABLE effective_care (
providerID string,
hospitalName string,
address string,
city string,
state string,
zip string,
county string,
phone string,
condition string,
measureID string,
measureName string,
score int,
sample int,
footnote string,
measureStart string,
measureEnd string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = "'",
"escapeChar" = "\\"
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/effective';

DROP TABLE survey_responses;
CREATE EXTERNAL TABLE survey_responses (
providerID string,
hospitalName string,
address string,
city string,
state string,
zip string,
county string,
commNurseAchieve string,
commNurseImprove string,
commNurseDimScore string,
commDocAchieve string,
commDocImprove string,
commDocDimScore string,
responsivenessAchieve string,
responsivenessImprove string,
responsivenessDimScore string,
painMgmtAchieve string,
painMgmtImprove string,
painMgmtDimScore string,
commMedsAchieve string,
commMedsImprove string,
commMedsDimScore string,
cleanAchieve string,
cleanImprove string,
cleanDimScore string,
dischargeAchieve string,
dischargeImprove string,
dischargeDimScore string,
overallAchieve string,
overallImprove string,
overallDimScore string,
baseScore int,
consistencyScore int
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = "'",
"escapeChar" = "\\"
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/surveys';

DROP TABLE hospitals;
CREATE EXTERNAL TABLE hospitals (
providerID string,
hospitalName string,
address string,
city string,
state string,
zip string,
county string,
phone string,
hospitalType string,
ownership string,
emergency string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = "'",
"escapeChar" = "\\"
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/hospital';

DROP TABLE measures;
CREATE EXTERNAL TABLE measures (
measureName string,
measureID string,
measureStartQ string,
measureStart string,
measureEndQ string,
measureEnd string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = "'",
"escapeChar" = "\\"
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/measures';

DROP TABLE readmissions;
CREATE EXTERNAL TABLE readmissions (
providerID string,
hospitalName string,
address string,
city string,
state string,
zip string,
county string,
phone string,
measureName string,
measureID string,
comparedToNational string,
denominator int,
score int,
lowEst int,
highEst int,
footnote string,
measureStart string,
measureEnd string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = "'",
"escapeChar" = "\\"
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/readmissions';
