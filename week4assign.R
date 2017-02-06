
## reading X_train,y_train,subject_train.
xtrain=read.table("D:/Data Science/FMS/JHspecilization/Getting and Cleaning Data/week4/UCI HAR Dataset/train/X_train.txt")
ytrain=read.table("D:/Data Science/FMS/JHspecilization/Getting and Cleaning Data/week4/UCI HAR Dataset/train/y_train.txt")
subtrain=read.table("D:/Data Science/FMS/JHspecilization/Getting and Cleaning Data/week4/UCI HAR Dataset/train/subject_train.txt")

## reading X_test,y_test,subject_test
xtest=read.table("D:/Data Science/FMS/JHspecilization/Getting and Cleaning Data/week4/UCI HAR Dataset/test/X_test.txt")
ytest=read.table("D:/Data Science/FMS/JHspecilization/Getting and Cleaning Data/week4/UCI HAR Dataset/test/y_test.txt")
subtest=read.table("D:/Data Science/FMS/JHspecilization/Getting and Cleaning Data/week4/UCI HAR Dataset/test/subject_test.txt")

## reading activity_labels and features
activitylabels=read.table("D:/Data Science/FMS/JHspecilization/Getting and Cleaning Data/week4/UCI HAR Dataset/activity_labels.txt")
features=read.table("D:/Data Science/FMS/JHspecilization/Getting and Cleaning Data/week4/UCI HAR Dataset/features.txt")

## merging X_train and X_test; merging y_train and y_test;subject_train and subject_test
xdata=rbind(xtrain,xtest)
ydata=rbind(ytrain,ytest)
subdata=rbind(subtrain,subtest)

## selecting columns with only mean and standard deviation for each measurement
xdata=xdata[,grep("-mean\\()|-std\\()",features[,2])]
featnames=features[grep("-mean\\()|-std\\()",features[,2]),2]

## adding labels to the activities in dataset
ydata=activitylabels[ydata[,1],2]

## labelling the variables with descriptive names for the data
colnames(xdata)=featnames

## adding subject and activity labels to the dataframe
xdata=cbind(subject=subdata[,1],xdata)
data=cbind(activity=ydata,xdata)

## creating a new tidy dataset with the average of each variable for each activity and each subject.
library(plyr)
newdataframe=ddply(data,.(activity,subject),function(x) colMeans(x[3:68]))
colnames(newdataframe)=paste0("avg_",colnames(newdataframe),"")
colnames(newdataframe)[1]="activity"
colnames(newdataframe)[2]="subject"

write.csv(newdataframe,"Avg_df.csv")


