CodeBook: Getting and Clean Data Course Project
===============================================

 

Background on dataset
---------------------

The experiments have been carried out with a group of 30 volunteers within an
age bracket of 19-48 years. Each person performed six activities (WALKING,
WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a
smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer
and gyroscope, we captured 3-axial linear acceleration and 3-axial angular
velocity at a constant rate of 50Hz. The experiments have been video-recorded to
label the data manually. The obtained dataset has been randomly partitioned into
two sets, where 70% of the volunteers was selected for generating the training
data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying
noise filters and then sampled in fixed-width sliding windows of 2.56 sec and
50% overlap (128 readings/window). The sensor acceleration signal, which has
gravitational and body motion components, was separated using a Butterworth
low-pass filter into body acceleration and gravity. The gravitational force is
assumed to have only low frequency components, therefore a filter with 0.3 Hz
cutoff frequency was used. From each window, a vector of features was obtained
by calculating variables from the time and frequency domain.

 

Feature selection
-----------------

The features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals
(prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they
were filtered using a median filter and a 3rd order low pass Butterworth filter
with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration
signal was then separated into body and gravity acceleration signals
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter
with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in
time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the
magnitude of these three-dimensional signals were calculated using the Euclidean
norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag,
tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals
producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag,
fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain
signals). 

These signals were used to estimate variables of the feature vector for each
pattern:  

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

 

Column description:
-------------------

Subject: A unique subject identifier (1 to 30)

Activity:  Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing or
Laying

The other columns names are combinations from the following names

First part: Time (Timed) or Fast Fourier Transformed (Fourier)

Second part: Body (BodyAcc) or Gravity (GravityAcc) acceleration signals, or the
angular velocity of the body (Bodygyro)

Third part: If present, Jerk signal (Jerk) or Magnitude using the Euclidean norm
(Mag)

Fourth part: Mean (mean) or standard deviation (std)

Fifth part: which axis (X, Y or Z)

 

For example: Fourier\_BodyAccJerk-std-Z column is the standard deviation (std)
of the Jerk signal (Jerk) from fast fourier transformed (Fourier\_) data of the
Body Acceleration (BodyAcc) in the Z-axis (Z)
