This repo is for "Getting and Cleaning data Course project"

The dataset used is downloaded from 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Original Source for data: http://archive.ics.uci.edu/ml/machine-learning-databases/00240/

This repo consists of:
1. The tidy dataset "Avg_df.csv"
2. The Code book for th repo data in CodeBook.md
3. The R script file "week4assign.R" containing the scripts and detaioled explanations of the steps 
 performed on the dataset.

Sequence of data cleaning done on the dataset include: 
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement.
3.Uses descriptive activity names to name the activities in the data set 
4.Appropriately labels the data set with descriptive variable names.
5.From the data set in step 4, creates a second, independent tidy data set,"Avg_df.csv" with the average of each variable for each activity and each subject.