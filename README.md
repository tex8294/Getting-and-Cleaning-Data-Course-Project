The code is made by an only script: run_analysis.R

The script opens the files saved into the folder, processes the data and saves a new file called DataTidy.txt with the final set of tidy data.

For further details about the code steps, read the comments inside the scripts. For a description of variables see CodeBook.md

The final set of data is made with with 180 observation of 82 variables.

Each observation represents a different volunteer (ID 1 to 30) in a different activity (ID 1 to 6)

The variables in the final set of data are:
"x"
"SubjectID"
"ActivityID"
"ActivityName"
"tBodyAccmeanX"
"tBodyAccmeanY"
"tBodyAccmeanZ"
"tBodyAccstdX"
"tBodyAccstdY"
"tBodyAccstdZ"
"tGravityAccmeanX"
"tGravityAccmeanY"
"tGravityAccmeanZ"
"tGravityAccstdX"
"tGravityAccstdY"
"tGravityAccstdZ"
"tBodyAccJerkmeanX"
"tBodyAccJerkmeanY"
"tBodyAccJerkmeanZ"
"tBodyAccJerkstdX"
"tBodyAccJerkstdY"
"tBodyAccJerkstdZ"
"tBodyGyromeanX"
"tBodyGyromeanY"
"tBodyGyromeanZ"
"tBodyGyrostdX"
"tBodyGyrostdY"
"tBodyGyrostdZ"
"tBodyGyroJerkmeanX"
"tBodyGyroJerkmeanY"
"tBodyGyroJerkmeanZ"
"tBodyGyroJerkstdX"
"tBodyGyroJerkstdY"
"tBodyGyroJerkstdZ"
"tBodyAccMagmean"
"tBodyAccMagstd"
"tGravityAccMagmean"
"tGravityAccMagstd"
"tBodyAccJerkMagmean"
"tBodyAccJerkMagstd"
"tBodyGyroMagmean"
"tBodyGyroMagstd"
"tBodyGyroJerkMagmean"
"tBodyGyroJerkMagstd"
"fBodyAccmeanX"
"fBodyAccmeanY"
"fBodyAccmeanZ"
"fBodyAccstdX"
"fBodyAccstdY"
"fBodyAccstdZ"
"fBodyAccmeanFreqX"
"fBodyAccmeanFreqY"
"fBodyAccmeanFreqZ"
"fBodyAccJerkmeanX"
"fBodyAccJerkmeanY"
"fBodyAccJerkmeanZ"
"fBodyAccJerkstdX"
"fBodyAccJerkstdY"
"fBodyAccJerkstdZ"
"fBodyAccJerkmeanFreqX"
"fBodyAccJerkmeanFreqY"
"fBodyAccJerkmeanFreqZ"
"fBodyGyromeanX"
"fBodyGyromeanY"
"fBodyGyromeanZ"
"fBodyGyrostdX"
"fBodyGyrostdY"
"fBodyGyrostdZ"
"fBodyGyromeanFreqX"
"fBodyGyromeanFreqY"
"fBodyGyromeanFreqZ"
"fBodyAccMagmean"
"fBodyAccMagstd"
"fBodyAccMagmeanFreq"
"fBodyBodyAccJerkMagmean"
"fBodyBodyAccJerkMagstd"
"fBodyBodyAccJerkMagmeanFreq"
"fBodyBodyGyroMagmean"
"fBodyBodyGyroMagstd"
"fBodyBodyGyroMagmeanFreq"
"fBodyBodyGyroJerkMagmean"
"fBodyBodyGyroJerkMagstd"
"fBodyBodyGyroJerkMagmeanFreq"