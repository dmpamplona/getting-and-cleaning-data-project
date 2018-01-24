# Codebook

This file contains information about the variables in the tidy data. 
The detailed process is explained in the README file. 

## Summary of Experiment
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

## Variables in the Datafile
To save space in writing the variable names, the terms of measurements are abbreviated/shortened based on the ff: t(time-domain), f(frequency-domain), Acc(Accelerometer), Gyro(Gyroscope), Jerk(derivation of accelaration in time), Mag(Magnittude), Freq(Frequency),StdDev(Standard Deviation), XYZ refers to X,Y, and Z directions. 
* subject - identifier of the subject in the experiment
* activity - type of activity performed ((WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
* tBodyAccMeanX
* tBodyAccMeanY
* tBodyAccMeanZ
* tBodyAccStdDevX
* tBodyAccStdDevY
* tBodyAccStdDevZ
* tGravityAccMeanX
* tGravityAccMeanY
* tGravityAccMeanZ
* tGravityAccStdDevX
* tGravityAccStdDevY
* tGravityAccStdDevZ
* tBodyAccJerkMeanX
* tBodyAccJerkMeanY
* tBodyAccJerkMeanZ
* tBodyAccJerkStdDevX
* tBodyAccJerkStdDevY
* tBodyAccJerkStdDevZ
* tBodyGyroMeanX
* tBodyGyroMeanY
* tBodyGyroMeanZ
* tBodyGyroStdDevX
* tBodyGyroStdDevY
* tBodyGyroStdDevZ
* tBodyGyroJerkMeanX
* tBodyGyroJerkMeanY
* tBodyGyroJerkMeanZ
* tBodyGyroJerkStdDevX
* tBodyGyroJerkStdDevY
* tBodyGyroJerkStdDevZ
* tBodyAccMagMean
* tBodyAccMagStdDev
* tGravityAccMagMean
* tGravityAccMagStdDev
* tBodyAccJerkMagMean
* tBodyAccJerkMagStdDev
* tBodyGyroMagMean
* tBodyGyroMagStdDev
* tBodyGyroJerkMagMean
* tBodyGyroJerkMagStdDev
* fBodyAccMeanX
* fBodyAccMeanY
* fBodyAccMeanZ
* fBodyAccStdX
* fBodyAccStdY
* fBodyAccStdZ
* fBodyAccMeanFreqX
* fBodyAccMeanFreqY
* fBodyAccMeanFreqZ
* fBodyAccJerkMeanX
* fBodyAccJerkMeanY
* fBodyAccJerkMeanZ
* fBodyAccJerkStdDevX
* fBodyAccJerkStdDevY
* fBodyAccJerkStdDevZ
* fBodyAccJerkMeanFreqX
* fBodyAccJerkMeanFreqY
* fBodyAccJerkMeanFreqZ
* fBodyGyroMeanX
* fBodyGyroMeanY
* fBodyGyroMeanZ
* fBodyGyroStdDevX
* fBodyGyroStdDevY
* fBodyGyroStdDevZ
* fBodyGyroMeanFreqX
* fBodyGyroMeanFreqY
* fBodyGyroMeanFreqZ
* fBodyAccMagMean
* fBodyAccMagStdDev
* fBodyAccMagMeanFreq
* fBodyBodyAccJerkMagMean
* fBodyBodyAccJerkMagStdDev
* fBodyBodyAccJerkMagMeanFreq
* fBodyBodyGyroMagMean
* fBodyBodyGyroMagStdDev
* fBodyBodyGyroMagMeanFreq
* fBodyBodyGyroJerkMagMean
* fBodyBodyGyroJerkMagStdDev
* fBodyBodyGyroJerkMagMeanFreq

## Activity Labels
* WALKING (value 1): subject was walking during the test
* WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
* WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
* SITTING (value 4): subject was sitting during the test
* STANDING (value 5): subject was standing during the test
* LAYING (value 6): subject was laying down during the test