The code keeps into account only the processed data inside the project folder, the list of variables used in the script is the following:

-x_test: measurement of 561 variables for each volunteer (see label)
-y_test: activity of the volunteer (from 1 to 6, see label)
-subject_test: volunteer performing the experiment (from 1 to 30)
-x_train: measurement of 561 variables for each volunteer
-y_train: activity of the volunteer (from 1 to 6, see label)
-subject_train: subject performing the experiment (from 1 to 30)

New variables were created in order to perform all the operations:

-activity_labels: a table merging each activity code with its description
-variable_labels: a list of the variables in x-files
-test: data-frame with the test data merged (SubjectID, ActivityID, ActivityName, all the 561 variables)
-train:data-frame with the train data merged (SubjectID, ActivityID, ActivityName, all the 561 variables)
-dataMerged: test and train data merged in a unique data-frame
-dataFiltered: dataMarged filtered considering only the variables containing "mean" and "std" 
-dataMean: the final tidy data-set (180 observations)

Moreover, the function lookup was created to merge the activity names with thei IDs.




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