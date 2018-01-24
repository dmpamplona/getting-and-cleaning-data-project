# Getting and Cleaning Data Course Project

This file contains the process followed in creating the `tidy data set`. 
The information on the variables are found in the Codebook file.

## R Script Explained

### Part 1
Downloads and unzips the datfile from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. If the data is already in the local computer we need only specify the directory where it is located.

### Part 2
Locates and loads the datafile containing the type of activities (activity_labels) and name of measurements (features). Both will be used as variable labels and variable names for the final data set. 

### Part 3
Extracts the necessary measures to be included in the final data set. Matching is excuted using the alternative literals (mean & std). Furthermore, the variable names were cleared by deletting unecessary characters, such as -,(,). 

### Part 4
Locates the train and test data set (See Codebook). Only the measures specified in Part 3 are loaded in R workspace. The two data sets are then merged using the columnwise to create the full data set. The first two variable names were unified and renamed as "subject" and "activity".

### Part 5
Prepares the final data set in Part 4 to create the `tidy.txt` file. Adjustments include convertion of variables "subject" and "activities" as factor variables. This is necessary to later melt the data by subject and activity. The final data is reduced to 180 observations by taking the mean for each type of activity.

### Part 6
Writes a new data set named `tidy.txt`.



