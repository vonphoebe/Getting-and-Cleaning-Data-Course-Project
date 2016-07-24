## Create one R script called run_analysis.R that does the following
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(data.table)
library(plyr)

#load all the data 
featureNames <- read.table("./features.txt")
activity_labels <-read.table("./activity_labels.txt", header = FALSE)[,2]

subjectTest <- read.table("./test/subject_test.txt", header = FALSE)
activityTest <- read.table("./test/y_test.txt", header = FALSE)
featuresTest <- read.table("./test/X_test.txt", header = FALSE)

subjectTrain <- read.table("./train/subject_train.txt", header = FALSE)
activityTrain <- read.table("./train/y_train.txt", header = FALSE)
featuresTrain <- read.table("./train/X_train.txt", header = FALSE)
 
#process test data sets, subjectTest, activityTest, featuresTest
table(subjectTest$V1) ## 9 subjects in subjectTest 
names(subjectTest) <- "Subject"
names(activityTest) <- "Activity"
##3. Use descriptive activity names to name the activities in the activityTest data set
activityTest[,2] <- activity_labels[activityTest[,1]] ## activityTest has 2 variables now 
##label columns of featuresTest with featureNames 
names(featuresTest) <- t(featureNames[2])

TestData <- cbind(activityTest, subjectTest, featuresTest)

#process train data sets , subjectTrain, activityTrain, featuresTrain
table(subjectTrain$V1) ## 21 subjects in subjectTrain
names(subjectTrain) <- "Subject"
names(activityTrain) <- "Activity"
##3. Use descriptive activity names to name the activities in the activityTrain data set
activityTrain[,2] <- activity_labels[activityTrain[,1]] ## activityTrain has 2 variables now 
##label columns of featureTrain with featureNames 
names(featuresTrain) <- t(featureNames[2])

TrainData <- cbind(activityTrain, subjectTrain, featuresTrain)

##1. Merge the traing and the test sets to create one data set 
CompleteData <- rbind(TestData, TrainData)
##rename column V2 to Activity_label 
setnames(CompleteData,"V2","Activity_label")

##2. Extract only the measurements on the mean and SD for each measurement. 
columnsWithMeanSTD <- grep("mean|std", names(CompleteData), ignore.case=TRUE) ##86 
requiredColumns <- c(1, 2, 3, columnsWithMeanSTD) #89 
dim(CompleteData)
## [1] 10299   564
meanstd <- CompleteData[,requiredColumns]
dim(meanstd)
##[1] 10299    89

##4. Appropriately labels the data set with descriptive variable names 
names(meanstd)

names(meanstd)<-gsub("Acc", "Accelerometer", names(meanstd))
names(meanstd)<-gsub("Gyro", "Gyroscope", names(meanstd))
names(meanstd)<-gsub("BodyBody", "Body", names(meanstd))
names(meanstd)<-gsub("Mag", "Magnitude", names(meanstd))
names(meanstd)<-gsub("^t", "Time", names(meanstd))
names(meanstd)<-gsub("^f", "Frequency", names(meanstd))
names(meanstd)<-gsub("tBody", "TimeBody", names(meanstd))
names(meanstd)<-gsub("angle", "Angle", names(meanstd))
names(meanstd)<-gsub("-mean()", "Mean", names(meanstd), ignore.case = TRUE)
names(meanstd)<-gsub("-std()", "STD", names(meanstd), ignore.case = TRUE)
names(meanstd)


##From the data set in step 4, created a second, independent tidy data set with the average 
##of each variable for each activity and each subject 
tidyData <- aggregate(. ~Subject + Activity, meanstd, mean)##180 obs, 89 var 
tidyData <- tidyData[order(tidyData$Subject,tidyData$Activity),]
##3. Use descriptive activity names to name the activities in the data set again 
tidyData[,3] <- activity_labels[tidyData[,2]] 
write.table(tidyData, file = "Tidy.txt", row.names = FALSE)


