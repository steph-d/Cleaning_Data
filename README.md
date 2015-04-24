### Reading the files

The txt files from samsung were read using read.table(). They were 3 files from a training-set of persons participating to the experiment and 3 files from a test-set of persons. 
1) 'subject_train.txt' and 'subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
2) 'y_train.txt' and 'y_test.txt': each row identifies the activity performed by the subject
3) X_train.txt' and 'X_test.txt': with 561 columns corresponding to the features measured on each suject and each experiment

### Merge of the 3 files from the training set in order to have a unique table named train_table_fin
- used of the ply and dplyr packages
- in each file was added a column named "id" in order to merge them 
- a column with "training" in each row was added to subject_train, to identify the origin of the persons 
- the column named V1 in subject_train was renamed as "idsubject"
- the column named V1 in y_train was renamed as "activity"
The 3 tables were merged together as "train_table_fin"

### Merge of the 3 files from the test set in order to have a unique table named test_table_fin
- in each file was added a column named "id" in order to merge them 
- a column with "test" in each row was added to subject_test, to identify the origin of the persons 
- the column named V1 in subject_test was renamed as "idsubject"
- the column named V1 in y_test was renamed as "activity"
The 3 tables were merged together as "test_table_fin"

## A unique table for both training and test set
with the rbind function, both tables "test_table_fin" and "training_table_fin" were merged together. 
The new table was named "global_table"

## Selection of columns of interest
We are interesting in the features corresponding to the mean and the standard deviation of the measurements, and also corresponding to the use of the mean vectors in angle() results.

- read of the "features.txt", table from Samsung where the 561 names of the features which were measured and named as V1 to V561 in "X_train" and "X_test" tables
- columns of the "global_table" were renamed thanks to the names of the features contained in "features.txt" 
- selection of the columns containing "[Mm]ean" and "std"
- new data set with only the columns of interest, dataset called global_table_fin

## Rename of the activity levels (numbers to text)
- read of the "activity_labels.txt" from samsung, which give us the name of the 6 activities realized by the subjects
- A table constructed from the global_table_fin$activity allows us to verify that only 6 activities were registered in the table
- the activity levels were renamed using a vector from "activity_labels.txt" and the function "level"

## Tidy names for the variables 
Goals in order to have no problem in analysis:
- no duplicate names
- no upper case
- only letters used (no space or _ or - etc)
- descriptive
So the resulting names are long but explicit. "Mean" and "std" allow to separate the 2 kind of variables. "Std" was keep because it is a common abbreviation.
Full description of the variables can be read in CodeBook.




