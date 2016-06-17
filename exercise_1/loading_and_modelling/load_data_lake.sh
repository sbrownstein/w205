mv Hospital\ General\ Information.csv hospitals.csv
mv Timely\ and\ Effective\ Care\ -\ Hospital.csv effective_care.csv
mv Readmissions\ and\ Deaths\ -\ Hospital.csv readmissions.csv
mv Measure\ Dates.csv Measures.csv
mv hvbp_hcahps_05_28_2015.csv surveys_responses.csv


hdfs dfs -mkdir /user/w205/hospital_compare
hdfs dfs -put effective_care.csv /user/w205/hospital_compare
hdfs dfs -put hospitals.csv /user/w205/hospital_compare
hdfs dfs -put measures.csv /user/w205/hospital_compare
hdfs dfs -put readmissions.csv /user/w205/hospital_compare
hdfs dfs -put surveys_responses.csv /user/w205/hospital_compare
