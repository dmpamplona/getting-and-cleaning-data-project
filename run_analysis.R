###########################################################################################
# Part 1 Getting the Data
###########################################################################################

# Download Unzip and Load UCI HAR dataset
datafile <- "getdata_dataset.zip"
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL,datafile)
unzip(datafile)

# If the data has been donwloaded normally. 
# Set the working directory where the datafile is located (in this case \\Desktop)
setwd("C:\\Users\\Asus\\Desktop")


###########################################################################################
# Part 2 Loading the Variable Names and Factor Levels that will later be used for the merged data
###########################################################################################

# Load activity labels and measures
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
activities[,2] <- as.character(activities[,2])
measures <- read.table("UCI HAR Dataset/features.txt")
measures[,2] <- as.character(measures[,2]) 


###########################################################################################
# Part 3 Specifying the measures to be extracted (by matching) from the train and test data
###########################################################################################

# Extract only the data on mean and standard deviation
measuresExtracted <- grep(".*std.*|.*mean.*", measures[,2]) 

# Change the variable names to be more readable/understandable
measuresExtracted.names <- measures[measuresExtracted,2]
measuresExtracted.names = gsub('-mean', 'Mean', measuresExtracted.names) # replaces the first letter with upper case
measuresExtracted.names = gsub('-std', 'StdDev', measuresExtracted.names) # replaces the first letter with upper case
measuresExtracted.names <- gsub('[-()]', '', measuresExtracted.names) # removes the excess char [-()]


###########################################################################################
# Part 4 Loading the train and test data sets and Merging them to create final data
###########################################################################################

# Load the datasets
train <- read.table("UCI HAR Dataset/train/X_train.txt")[measuresExtracted]
activities.train <- read.table("UCI HAR Dataset/train/Y_train.txt")
subjects.train <- read.table("UCI HAR Dataset/train/subject_train.txt")
train1 <- cbind(subjects.train, activities.train, train)

test <- read.table("UCI HAR Dataset/test/X_test.txt")[measuresExtracted]
activities.test <- read.table("UCI HAR Dataset/test/Y_test.txt")
subjects.test <- read.table("UCI HAR Dataset/test/subject_test.txt")
test1 <- cbind(subjects.test, activities.test, test)

# Merge datasets and add labels
finaldata <- rbind(train1, test1)
colnames(finaldata) <- c("subject", "activity", measuresExtracted.names)



###########################################################################################
# Part 5 Final preparations to compute mean per subsets
###########################################################################################

# Convert activities & subjects into factors
finaldata$activity <- factor(finaldata$activity, levels = activities[,1], labels = activities[,2])
finaldata$subject <- as.factor(finaldata$subject)

library(reshape2) # to enable "melt" function
finaldata.melt <- melt(finaldata, id = c("subject", "activity"))
finaldata.mean <- dcast(finaldata.melt, subject + activity ~ variable, mean)


###########################################################################################
# Part 6 Create Tidy Data
###########################################################################################

write.table(finaldata.mean, "tidy.txt", row.names = FALSE, quote = FALSE)
