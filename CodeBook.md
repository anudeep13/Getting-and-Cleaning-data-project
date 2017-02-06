Getting and Cleaning Data Course Project
Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Data downloaded from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


Original Source for data:
http://archive.ics.uci.edu/ml/machine-learning-databases/00240/

Original feature variables:
Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


Sequence of data cleaning done on the dataset include:
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement.
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names.
5.From the data set in step 4, creates a second, independent tidy data set,"Avg_df.txt" with the average of each variable for each activity and each subject.


The R script file for the project is "run_analysis.R",which contains the sequence of operations performed on the dataset with comments for explanation.

The observations in the tidy datset "Avg_df.csv" and "Avg_df.txt" corresponds to variable values for each activity for each sbject.
The variables for tidy datset,"Avg_df.csv" and "Avg_df.txt" are the average of the variables from the original dataset which are mean and standard deviation each measuremnt.

The variables are:

1	activity
2	subject
3	avg_tBodyAcc-mean()-X
4	avg_tBodyAcc-mean()-Y
5	avg_tBodyAcc-mean()-Z
6	avg_tBodyAcc-std()-X
7	avg_tBodyAcc-std()-Y
8	avg_tBodyAcc-std()-Z
9	avg_tGravityAcc-mean()-X
10	avg_tGravityAcc-mean()-Y
11	avg_tGravityAcc-mean()-Z
12	avg_tGravityAcc-std()-X
13	avg_tGravityAcc-std()-Y
14	avg_tGravityAcc-std()-Z
15	avg_tBodyAccJerk-mean()-X
16	avg_tBodyAccJerk-mean()-Y
17	avg_tBodyAccJerk-mean()-Z
18	avg_tBodyAccJerk-std()-X
19	avg_tBodyAccJerk-std()-Y
20	avg_tBodyAccJerk-std()-Z
21	avg_tBodyGyro-mean()-X
22	avg_tBodyGyro-mean()-Y
23	avg_tBodyGyro-mean()-Z
24	avg_tBodyGyro-std()-X
25	avg_tBodyGyro-std()-Y
26	avg_tBodyGyro-std()-Z
27	avg_tBodyGyroJerk-mean()-X
28	avg_tBodyGyroJerk-mean()-Y
29	avg_tBodyGyroJerk-mean()-Z
30	avg_tBodyGyroJerk-std()-X
31	avg_tBodyGyroJerk-std()-Y
32	avg_tBodyGyroJerk-std()-Z
33	avg_tBodyAccMag-mean()
34	avg_tBodyAccMag-std()
35	avg_tGravityAccMag-mean()
36	avg_tGravityAccMag-std()
37	avg_tBodyAccJerkMag-mean()
38	avg_tBodyAccJerkMag-std()
39	avg_tBodyGyroMag-mean()
40	avg_tBodyGyroMag-std()
41	avg_tBodyGyroJerkMag-mean()
42	avg_tBodyGyroJerkMag-std()
43	avg_fBodyAcc-mean()-X
44	avg_fBodyAcc-mean()-Y
45	avg_fBodyAcc-mean()-Z
46	avg_fBodyAcc-std()-X
47	avg_fBodyAcc-std()-Y
48	avg_fBodyAcc-std()-Z
49	avg_fBodyAccJerk-mean()-X
50	avg_fBodyAccJerk-mean()-Y
51	avg_fBodyAccJerk-mean()-Z
52	avg_fBodyAccJerk-std()-X
53	avg_fBodyAccJerk-std()-Y
54	avg_fBodyAccJerk-std()-Z
55	avg_fBodyGyro-mean()-X
56	avg_fBodyGyro-mean()-Y
57	avg_fBodyGyro-mean()-Z
58	avg_fBodyGyro-std()-X
59	avg_fBodyGyro-std()-Y
60	avg_fBodyGyro-std()-Z
61	avg_fBodyAccMag-mean()
62	avg_fBodyAccMag-std()
63	avg_fBodyBodyAccJerkMag-mean()
64	avg_fBodyBodyAccJerkMag-std()
65	avg_fBodyBodyGyroMag-mean()
66	avg_fBodyBodyGyroMag-std()
67	avg_fBodyBodyGyroJerkMag-mean()
68	avg_fBodyBodyGyroJerkMag-std()


