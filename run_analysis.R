# read of the files
subject_test <- read.table("subject_test.txt")
subject_train <- read.table("subject_train.txt")

X_test <- read.table("X_test.txt")
X_train <- read.table("X_train.txt")

y_test <- read.table("y_test.txt")
y_train <- read.table("y_train.txt")

# a unique table for the training set
library(plyr)
library(dplyr)
subject_train_id <- mutate(subject_train, id=1:nrow(subject_train), type="training")
subject_train_id <- rename(subject_train_id, idsubject=V1)

y_train_id <- mutate(y_train, id=1:nrow(y_train))
y_train_id <- rename(y_train_id, activity=V1)

train_table <- merge(subject_train_id, y_train_id,by.x="id", by.y="id", all=TRUE)

X_train_id <- mutate(X_train, id=1:nrow(X_train))
train_table_fin <- merge(train_table, X_train_id,by.x="id", by.y="id", all=TRUE)

# a unique table for the test set
subject_test_id <- mutate(subject_test, id=1:nrow(subject_test), type="test")
subject_test_id <- rename(subject_test_id, idsubject=V1)

y_test_id <- mutate(y_test, id=1:nrow(y_test))
y_test_id <- rename(y_test_id, activity=V1)

test_table <- merge(subject_test_id, y_test_id,by.x="id", by.y="id", all=TRUE)

X_test_id <- mutate(X_test, id=1:nrow(X_test))
test_table_fin <- merge(test_table, X_test_id,by.x="id", by.y="id", all=TRUE)

# merge both test and training tables
global_table <- rbind(train_table_fin, test_table_fin)
dim(global_table)

# selection of column with mean and standart deviation
features <- read.table("features.txt")
features_list <- as.vector(features$V2)
features_list <- c("id","idsubject","type","activity",features_list)
names(global_table) <- features_list

mean_col <- grep("[Mm]ean",colnames(global_table))
std_col <- grep("std",colnames(global_table))
good_col <- c(2,3,4,mean_col,std_col)
good_col <- sort(good_col)

global_table_fin <- global_table[,good_col]
dim(global_table_fin) # to verify that all the variables were taking into account


# Names in the activity columns
activity_label <- read.table("activity_labels.txt")
activity_label$V2
activity_label$V2 <- tolower(activity_label$V2)
table(global_table_fin$activity)
str(global_table_fin)
datatidy <- global_table_fin
datatidy$activity <- as.factor(datatidy$activity)
levels(datatidy$activity) <- activity_label$V2

# descriptive variable names in tidy form
names(datatidy)
names(datatidy)<-nom

names(datatidy) <- gsub("^f","frequency",names(datatidy))
names(datatidy) <- gsub("^t","time",names(datatidy))
names(datatidy) <- gsub("),","and",names(datatidy))
names(datatidy) <- gsub(",","and",names(datatidy))
names(datatidy) <- gsub("angle.","anglebetween",names(datatidy))
names(datatidy) <- gsub("Mean)$","mean",names(datatidy))
names(datatidy) <- gsub("-meanFreq.*-","weightedfrequencemean",names(datatidy))
names(datatidy) <- gsub("-meanFreq.*$","weightedfrequencemean",names(datatidy))
names(datatidy) <- gsub("-mean.*-","mean",names(datatidy))
names(datatidy) <- gsub("-std.*-","std",names(datatidy))
names(datatidy) <- gsub("meanX","meaninx",names(datatidy))
names(datatidy) <- gsub("meanY","meaniny",names(datatidy))
names(datatidy) <- gsub("meanZ","meaninz",names(datatidy))
names(datatidy) <- gsub("stdX","stdinx",names(datatidy))
names(datatidy) <- gsub("stdY","stdiny",names(datatidy))
names(datatidy) <- gsub("stdZ","stdinz",names(datatidy))
names(datatidy) <- gsub("Acc","acceleration",names(datatidy))
names(datatidy) <- gsub("Gyro","gyroscope",names(datatidy))
names(datatidy) <- gsub("Mag","magnitude",names(datatidy))
names(datatidy) <- gsub("-mean.*$","mean",names(datatidy))
names(datatidy) <- gsub("-std.*$","std",names(datatidy))
names(datatidy) <- gsub("BodyBody","body",names(datatidy))
names(datatidy) <- tolower(names(datatidy))
names(datatidy)[2] <- "type"
names(datatidy) <- gsub("vity.$","vity",names(datatidy))
unique(names(datatidy)) # to verify that there is no repetition in the variable names


write.table(datatidy, file="tidydata.txt", row.name=FALSE)
