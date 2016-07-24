#CodeBook

This is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.

##The data source

Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##the data files 

- ‘features.txt’: raw data list of all features of measurement, including 561 feature vectors. The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix ’t’ to denote time) were captured. And the acceleration was separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ). More details refer to ‘features_info.txt’ in UCI HAR Dataset. 
For this course project, only measurement of Mean and STD are needed. 
- ‘activity_labels.txt’: Links the 6 class labels with their activity name (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING). 
- ‘train/X_train.txt’: raw data of training set. 
- ‘train/y_train.txt’: training labels 	
- ‘test/X_train.txt’: raw data of test set. 
- ‘test/y_test.txt’: test labels. 
- ‘subject_train.txt’: raw data of 21 volunteer subjects in training group. 
- ‘subject_test.txt’: raw data of 9 volunteer subjects in test group. in total, 30 volunteers were participated in the experiments and has been randomly partitioned into training and test group. each row of the text file identifies the subject who performed the activity for each window sample. 

##Tidy

A data.table named **tidy** is set with the following columns. A file named **tidy.txt** is written from **run_analysis.R**.

| COLUMN NAME	| ORIGINAL COLUMN NAME | 
| --- | --- |
| Activity	   | Activity |
|Activity_label	|Activity_label                         |
|Subject	|Subject                                     |
|TimeBodyAccelerometerMean()-X	|tBodyAcc-mean()-X                |
|TimeBodyAccelerometerMean()-Y	|tBodyAcc-mean()-Y                |
|TimeBodyAccelerometerMean()-Z	|tBodyAcc-mean()-Z                 |
|TimeBodyAccelerometerSTD()-X	|tBodyAcc-std()-X                       |
|TimeBodyAccelerometerSTD()-Y	|tBodyAcc-std()-Y                      |
|TimeBodyAccelerometerSTD()-Z	|tBodyAcc-std()-Z                      |
|TimeGravityAccelerometerMean()-X	|tGravityAcc-mean()-X              |
|TimeGravityAccelerometerMean()-Y	|tGravityAcc-mean()-Y               |
|TimeGravityAccelerometerMean()-Z	|tGravityAcc-mean()-Z                 |
|TimeGravityAccelerometerSTD()-X	|tGravityAcc-std()-X                      |
|TimeGravityAccelerometerSTD()-Y	|tGravityAcc-std()-Y                      |
|TimeGravityAccelerometerSTD()-Z	|tGravityAcc-std()-Z                      |
|TimeBodyAccelerometerJerkMean()-X	|tBodyAccJerk-mean()-X              |
|TimeBodyAccelerometerJerkMean()-Y	|tBodyAccJerk-mean()-Y              |
|TimeBodyAccelerometerJerkMean()-Z	|tBodyAccJerk-mean()-Z            |
|TimeBodyAccelerometerJerkSTD()-X	|tBodyAccJerk-std()-X                 |
|TimeBodyAccelerometerJerkSTD()-Y	|tBodyAccJerk-std()-Y                 |
|TimeBodyAccelerometerJerkSTD()-Z	|tBodyAccJerk-std()-Z                 |
|TimeBodyGyroscopeMean()-X	|tBodyGyro-mean()-X                 |
|TimeBodyGyroscopeMean()-Y	|tBodyGyro-mean()-Y                |
|TimeBodyGyroscopeMean()-Z	|tBodyGyro-mean()-Z                |
|TimeBodyGyroscopeSTD()-X	|tBodyGyro-std()-X                    |
|TimeBodyGyroscopeSTD()-Y	|tBodyGyro-std()-Y                    |
|TimeBodyGyroscopeSTD()-Z	|tBodyGyro-std()-Z                    |
|TimeBodyGyroscopeJerkMean()-X	|tBodyGyroJerk-mean()-X         |
|TimeBodyGyroscopeJerkMean()-Y	|tBodyGyroJerk-mean()-Y         |
|TimeBodyGyroscopeJerkMean()-Z	|tBodyGyroJerk-mean()-Z         |
|TimeBodyGyroscopeJerkSTD()-X	|tBodyGyroJerk-std()-X              |
|TimeBodyGyroscopeJerkSTD()-Y	|tBodyGyroJerk-std()-Y              |  
|TimeBodyGyroscopeJerkSTD()-Z	|tBodyGyroJerk-std()-Z              |
|TimeBodyAccelerometerMagnitudeMean()	|tBodyAccMag-mean()               |
|TimeBodyAccelerometerMagnitudeSTD()	|tBodyAccMag-std()                   |
|TimeGravityAccelerometerMagnitudeMean()	|tGravityAccMag-mean()           |
|TimeGravityAccelerometerMagnitudeSTD()	|tGravityAccMag-std()                |
|TimeBodyAccelerometerJerkMagnitudeMean()	|tBodyAccJerkMag-mean()        |    
|TimeBodyAccelerometerJerkMagnitudeSTD()	|tBodyAccJerkMag-std()            |
|TimeBodyGyroscopeMagnitudeMean()	|tBodyGyroMag-mean()            |
|TimeBodyGyroscopeMagnitudeSTD()	|tBodyGyroMag-std()                 |
|TimeBodyGyroscopeJerkMagnitudeMean()	|tBodyGyroJerkMag-mean()      |
|TimeBodyGyroscopeJerkMagnitudeSTD()	|tBodyGyroJerkMag-std()      |
|FrequencyBodyAccelerometerMean()-X	|fBodyAcc-mean()-X                |
|FrequencyBodyAccelerometerMean()-Y	|fBodyAcc-mean()-Y                |  
|FrequencyBodyAccelerometerMean()-Z	|fBodyAcc-mean()-Z                |
|FrequencyBodyAccelerometerSTD()-X	|fBodyAcc-std()-X                    |
|FrequencyBodyAccelerometerSTD()-Y	|fBodyAcc-std()-Y                     |
|FrequencyBodyAccelerometerSTD()-Z	|fBodyAcc-std()-Z                     |
|FrequencyBodyAccelerometerMeanFreq()-X	|fBodyAcc-meanFreq()-X        |
|FrequencyBodyAccelerometerMeanFreq()-Y	|fBodyAcc-meanFreq()-Y        |
|FrequencyBodyAccelerometerMeanFreq()-Z	|fBodyAcc-meanFreq()-Z        |
|FrequencyBodyAccelerometerJerkMean()-X	|fBodyAccJerk-mean()-X         |
|FrequencyBodyAccelerometerJerkMean()-Y	|fBodyAccJerk-mean()-Y         |
|FrequencyBodyAccelerometerJerkMean()-Z	|fBodyAccJerk-mean()-Z          |
|FrequencyBodyAccelerometerJerkSTD()-X	|fBodyAccJerk-std()-X               |
|FrequencyBodyAccelerometerJerkSTD()-Y	|fBodyAccJerk-std()-Y                |
|FrequencyBodyAccelerometerJerkSTD()-Z	|fBodyAccJerk-std()-Z                |
|FrequencyBodyAccelerometerJerkMeanFreq()-X	|fBodyAccJerk-meanFreq()-X   |
|FrequencyBodyAccelerometerJerkMeanFreq()-Y	|fBodyAccJerk-meanFreq()-Y    |
|FrequencyBodyAccelerometerJerkMeanFreq()-Z	|fBodyAccJerk-meanFreq()-Z     |
|FrequencyBodyGyroscopeMean()-X	|fBodyGyro-mean()-X                 |
|FrequencyBodyGyroscopeMean()-Y	|fBodyGyro-mean()-Y                 |
|FrequencyBodyGyroscopeMean()-Z	|fBodyGyro-mean()-Z                  |
|FrequencyBodyGyroscopeSTD()-X	|fBodyGyro-std()-X                      |
|FrequencyBodyGyroscopeSTD()-Y	|fBodyGyro-std()-Y                      |
|FrequencyBodyGyroscopeSTD()-Z	|fBodyGyro-std()-Z                      | 
|FrequencyBodyGyroscopeMeanFreq()-X	|fBodyGyro-meanFreq()-X         |
|FrequencyBodyGyroscopeMeanFreq()-Y	|fBodyGyro-meanFreq()-Y          |
|FrequencyBodyGyroscopeMeanFreq()-Z	|fBodyGyro-meanFreq()-Z          |
|FrequencyBodyAccelerometerMagnitudeMean()	|fBodyAccMag-mean()                |
|FrequencyBodyAccelerometerMagnitudeSTD()	|fBodyAccMag-std()                     |
|FrequencyBodyAccelerometerMagnitudeMeanFreq()	|fBodyAccMag-meanFreq()         |
|FrequencyBodyAccelerometerJerkMagnitudeMean()	|fBodyBodyAccJerkMag-mean() |
|FrequencyBodyAccelerometerJerkMagnitudeSTD()	|fBodyBodyAccJerkMag-std()      |  
|FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()	|fBodyBodyAccJerkMag-meanFreq()|
|FrequencyBodyGyroscopeMagnitudeMean()	|fBodyBodyGyroMag-mean()             |
|FrequencyBodyGyroscopeMagnitudeSTD()	|fBodyBodyGyroMag-std()                  |
|FrequencyBodyGyroscopeMagnitudeMeanFreq()	|fBodyBodyGyroMag-meanFreq()     |
|FrequencyBodyGyroscopeJerkMagnitudeMean()	|fBodyBodyGyroJerkMag-mean()      |
|FrequencyBodyGyroscopeJerkMagnitudeSTD()	|fBodyBodyGyroJerkMag-std()           | 
|FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()	|fBodyBodyGyroJerkMag-meanFreq()|
|Angle(TimeBodyAccelerometerMean,gravity)	|angle(tBodyAccMean,gravity)            |
|Angle(TimeBodyAccelerometerJerkMean),gravityMean)	|angle(tBodyAccJerkMean),gravityMean) |
|Angle(TimeBodyGyroscopeMean,gravityMean)	|angle(tBodyGyroMean,gravityMean) |
|Angle(TimeBodyGyroscopeJerkMean,gravityMean)	|angle(tBodyGyroJerkMean,gravityMean) |
|Angle(X,gravityMean)	|angle(X,gravityMean)                     |
|Angle(Y,gravityMean)	|angle(Y,gravityMean)                    |
|Angle(Z,gravityMean)	|angle(Z,gravityMean)                     |

##How run_analysis.R implements:

- Require plyr and data.table packages.
- Load both test and train data
- Load the features and activity labels.
- Merge data set.
- Extract the mean and standard deviation column names and data.
- Process the data. 





