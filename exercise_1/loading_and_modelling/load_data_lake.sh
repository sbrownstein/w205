mv Timely\ and\ Effective\ Care\ -\ Hospital.csv effective_care.csv
mv hvbp_hcahps_05_28_2015.csv survey_responses.csv
mv hvbp_tps_05_28_2015.csv total_performance.csv

hdfs dfs -mkdir /user/w205/hospital_compare
hdfs dfs -put effective_care.csv /user/w205/hospital_compare
hdfs dfs -put survey_responses.csv /user/w205/hospital_compare
hdfs dfs -put total_performance.csv /user/w205/hospital_compare
