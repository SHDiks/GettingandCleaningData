README: Getting and Cleaning Data Course Project
================================================

 

Introduction:

The script (run\_analysis.R) in this repository merges and cleans the raw
dataset available in the “test” and “train” subdirectory and generates the
output file “tidydataset.txt”.

 

The following operations are performed:

-   The test and training dataset are merged.

-   The measurements on the mean and standard deviation for each measurement are
    extracted.

-   The activities monitored are renamed to improve readability.

-   Column names are renamed to improve readability.

-   A second, independent tidy data set with the average of each variable for
    each activity and each subject is generated and saved as “tidydataset.txt”.

 

How to use:

The file available at
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>
is extracted and “run\_analysis.R” should be copied into the “UCI HAR Dataset”
directory. When the program is executed, the file “tidydataset.txt” is
generated.
