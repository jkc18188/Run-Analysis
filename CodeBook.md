## Code Book
This book summarizes the data in tidy.txt

## Identifiers

- Subject: the text subject
- Activity: the type of activity each test subject performed

## Variables

- BodyAccAvg-X; BodyAccAvg-Y; BodyAccAvg-Z
- BodyAccSd-X; BodyAccSd-Y; BodyAccSd-Z   

- GravityAccAvg-X; GravityAccAvg-Y; GravityAccAvg-Z
- GravityAccSd-X; GravityAccSd-Y; GravityAccSd-Z   

- BodyAccJerkAvg-X; BodyAccJerkAvg-Y; BodyAccJerkAvg-Z
- BodyAccJerkSd-X; BodyAccJerkSd-Y; BodyAccJerkSd-Z   

- BodyGyroAvg-X; BodyGyroAvg-Y; BodyGyroAvg-Z
- BodyGyroSd-X; BodyGyroSd-Y; BodyGyroSd-Z   

- BodyGyroJerkAvg-X; BodyGyroJerkAvg-Y; BodyGyroJerkAvg-Z
- BodyGyroJerkSd-X; BodyGyroJerkSd-Y; BodyGyroJerkSd-Z   

- BodyAccMagAvg; BodyAccMagSd   

- GravityAccMagAvg; GravityAccMagSd   

- BodyAccJerkMagAvg; BodyAccJerkMagSd   

- BodyGyroMagAvg; BodyGyroMagSd   

- BodyGyroJerkMagAvg; BodyGyroJerkMagSd   

- BodyBodyAccJerkMagAvg; BodyBodyAccJerkMagSd   

- BodyBodyGyroMagAvg; BodyBodyGyroMagSd   

- BodyBodyGyroJerkMagAvg; BodyBodyGyroJerkMagSd   

## Activity Labels

WALKING: each subject was walking during the test   
WALKING UPSTAIRS: each subject was walking up a staircase during test   
WALKING DOWNSTAIRS: each subject was walking down a staircase during test   
SITTING: each subject was sitting during the test   
STANDING: each subject was standing during the test   
LAYING: each subject was laying down during the test

## Transformations

1. The x train and x test text files were combined, as well as the y train and y test text files.
2. Subject data train and test text files were all combined.
3. All data was combined into a single data frame with a column order of subject data, activity data, and variable data.
4. The features text file was loaded and used to determine the columns containing avg and std.
5. The columns identified in step 4 was used to subset and name the data frame.
6. Activity labels were given to each row for each subject.
7. Using melt and dcast, the data frame reshaped and the mean was calculated for each subject and the activities they performed.
