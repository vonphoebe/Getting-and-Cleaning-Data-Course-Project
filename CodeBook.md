CodeBook

This is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.

The data source

Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

the data files: 
- ‘features.txt’: raw data list of all features of measurement, including 561 feature vectors. The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix ’t’ to denote time) were captured. And the acceleration was separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ). More details refer to ‘features_info.txt’ in UCI HAR Dataset. 
For this course project, only measurement of Mean and STD are needed. 

‘activity_labels.txt’: Links the 6 class labels with their activity name (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING). 
 
‘train/X_train.txt’: raw data of training set. 
‘train/y_train.txt’: training labels 	
 ‘test/X_train.txt’: raw data of test set. 
‘test/y_test.txt’: test labels. 
‘subject_train.txt’: raw data of 21 volunteer subjects in training group. 
‘subject_test.txt’: raw data of 9 volunteer subjects in test group. in total, 30 volunteers were participated in the experiments and has been randomly partitioned into training and test group. each row of the text file identifies the subject who performed the activity for each window sample. 

Tidy

A data.table named tidy is set with the following columns. A file named tidy.txt is written from run_analysis.R.
| COLUMN NAME	| ORIGINAL COLUMN NAME | 
| --- | --- |
| Activity	    | Activity |


