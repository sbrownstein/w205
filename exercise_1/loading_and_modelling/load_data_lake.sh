mv ~/Downloads/Hospital_Revised_Flatfiles/Timely\ and\ Effective\ Care\ -\ Hospital.csv ~/W205/exercise_1/loading_and_modelling/dataset/effective_care.csv
mv ~/Downloads/Hospital_Revised_Flatfiles/hvbp_hcahps_05_28_2015.csv ~/W205/exercise_1/loading_and_modelling/dataset/survey_responses.csv
mv ~/Downloads/Hospital_Revised_Flatfiles/Readmissions\ and\ Deaths\ -\ Hospital.csv ~/W205/exercise_1/loading_and_modelling/dataset/readmissions.csv
mv ~/Downloads/Hospital_Revised_Flatfiles/Hospital\ General\ Information.csv ~/W205/exercise_1/loading_and_modelling/dataset/hospitals.csv
mv ~/Downloads/Hospital_Revised_Flatfiles/Measure\ Dates.csv ~/W205/exercise_1/loading_and_modelling/dataset/measures.csv

hdfs dfs -mkdir /user/w205/hospital_compare

hdfs dfs -put effective_care.csv /user/w205/hospital_compare
hdfs dfs -put survey_responses.csv /user/w205/hospital_compare
hdfs dfs -put readmissions.csv /user/w205/hospital_compare
hdfs dfs -put hospitals.csv /user/w205/hospital_compare
hdfs dfs -put measures.csv /user/w205/hospital_compare

