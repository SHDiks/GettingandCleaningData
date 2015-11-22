# this script must be located in the same directory as "features.txt" and
# "activity_labels.txt" with subdirectories "test" and "train"

# Loading necessary libraries
library(dplyr)

# importing test dataset
testdata <- read.table("./test/X_test.txt")
testsubject <- read.table("./test/subject_test.txt")
testtype <- read.table("./test/y_test.txt")

# importing train dataset
traindata <- read.table("./train/X_train.txt")
trainsubject <- read.table("./train/subject_train.txt")
traintype <- read.table("./train/y_train.txt")

# importing column labels and activity labels
label <- read.table("features.txt")
labels <- label[,2]
activity <- read.table("activity_labels.txt")

#renaming the test and train dataset
names(testdata) <- labels
names(testsubject) <- "subject"
names(testtype) <- "activity"
names(traindata) <- labels
names(trainsubject) <- "subject"
names(traintype) <- "activity"

# merging the test and train dataset
completetestdata <- cbind(testsubject, testtype, testdata)
completetraindata <- cbind(trainsubject, traintype, traindata)
completedataset <- rbind(completetestdata, completetraindata)
completedataset <- completedataset[ , !duplicated(colnames(completedataset))]

# extract the means and standard deviation from the complete dataset
meanlist <- select(completedataset, contains("mean()", ignore.case = TRUE))
stdlist <- select(completedataset, contains("std()", ignore.case = TRUE))
dataset <- cbind(completedataset[,1:2], meanlist, stdlist)

# rename activities form numbers to activity
dataset$activity <- as.factor(dataset$activity)
levels(dataset$activity) <- activity[, 2]

# appropriately labeling the dataset
names <- names(dataset)
names <- gsub("BodyBody", "Body_", names)
names <- gsub("^t", "Time_", names)
names <- gsub("^f", "Fourier_", names)
names <- gsub("\\(\\)", "", names)
names(dataset) <- names

# create dataset with the average of each variable for each activity and each subject
grouped <- group_by(dataset, subject, activity)
tidydataset <- summarise_each(grouped, funs(mean))

write.table(tidydataset, 'tidydataset.txt', row.names=FALSE)
