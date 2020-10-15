
#Library for the code
library(dplyr)
library(tidyr)

#Access to the train and test files
#Content of the file:
#x_test: measurement of 561 variables for each volunteer (see label)
#y_test: activity of the volunteer (from 1 to 6, see label)
#subject_test: volunteer performing the experiment (from 1 to 30)
#x_train: measurement of 561 variables for each volunteer
#y_train: activity of the volunteer (from 1 to 6, see label)
#subject_train: subject performing the experiment (from 1 to 30)

path_test <- "UCI HAR Dataset/test/"
path_train <- "UCI HAR Dataset/train/"
x_test <- read.table(paste(path_test, "X_test.txt", sep =""))
y_test <- read.table(paste(path_test, "y_test.txt", sep =""))
subject_test <- read.table(paste(path_test, "subject_test.txt", sep =""))
x_train <- read.table(paste(path_train, "X_train.txt", sep =""))
y_train <- read.table(paste(path_train, "y_train.txt", sep =""))
subject_train <- read.table(paste(path_train, "subject_train.txt", sep =""))


#Labels describe activity and variables. Names are saved with only points(.) and variables without puntuaction

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
variables_labels <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- mutate(activity_labels, V2 = sub("_", ".", V2))
variables_labels <- mutate(variables_labels, V2 = gsub("[-)(,_]", "", V2))


#Creating a second column in tables y_train and y_test with the activity name
#The function lookup associates each number between 1 and 6 with the activity in the table activity_labels.
#The function lookup is applied to the vectors y_test and Y_train

# [3.Uses descriptive activity names to name the activities in the data set]

lookup <- function(x) activity_labels[,2][activity_labels[,1] == x]
y_train <- cbind(y_train, sapply(y_train$V1, lookup))
y_test <- cbind(y_test, sapply(y_test$V1, lookup))


#This part of the code attributes the variable labels to the variable names in x_train and x_test and add a variable name at the other variables

# [4.Appropriately labels the data set with descriptive variable names.]

names(x_test) <- variables_labels[,2]
names(x_train) <- variables_labels[,2]
names(subject_train)<-c("SubjectID")
names(subject_test)<-c("SubjectID")
names(y_train) <- (c("ActivityID", "ActivityName"))
names(y_test) <- (c("ActivityID", "ActivityName"))

#This part creates a global data frame for the train, one for the test and (at the end) a unique one (called dataMerged)

# [1.Merges the training and the test sets to create one data set]

train <- data.frame(subject_train, y_train, x_train)
test <- data.frame(subject_test, y_test, x_test)
dataMerged <- bind_rows(train, test)


#Extracting from the dataMerged only the column with a median or a standard deviation and save them i dataFiltered

# [2.Extracts only the measurements on the mean and standard deviation for each measurement]

dataFiltered <- dataMerged[,c(1,2,3,grep("mean|std",names(dataMerged)))]


#Data are grouped by User and activity, indeed the median of the differnt variables is calulated

# [5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.]

dataMean <- dataFiltered %>%
  group_by(SubjectID, ActivityID, ActivityName) %>%
  summarise(across(1:79, mean))
