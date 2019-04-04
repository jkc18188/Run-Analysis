# Merges the training and the test sets to create one data set

x_train<-read.table("X_train.txt")
x_test<-read.table("X_test.txt")

y_train<-read.table("y_train.txt")
y_test<-read.table("y_test.txt")

sub_train<-read.table("subject_train.txt")
sub_test<-read.table("subject_test.txt")

x_data<-rbind(x_train,x_test)
y_data<-rbind(y_train,y_test)

sub_data<-rbind(sub_train,sub_test)

all_data<-cbind(sub_data,y_data,x_data)

# Extracts only the measurements for mean and standard

avg_sd<-read.table("features.txt")
avg_sd<-as.character(avg_sd$V2)
avg_sd<-gsub(".[Mm]ean\\()","Avg",avg_sd)
avg_sd<-gsub(".[Ss]td\\()","Sd",avg_sd)
avg_sd<-gsub("tB|fB","B",avg_sd)
avg_sd<-gsub("tG","G",avg_sd)
ext<-grep(".Avg|.Sd",avg_sd)
ext_avg_sd<-all_data[,c(1,2,ext+2)]


# Uses descriptive activity names to name the activities and 
# appropriately label the data set

names(ext_avg_sd)[3:68]<-avg_sd[ext]
colnames(ext_avg_sd)[1:2]<-c("Subject","Activity")
act<-read.table("activity_labels.txt")
ext_avg_sd[,2]<-act[ext_avg_sd[,2],2]


# From the data set in step 4, creates a second, independent tidy data 
# set with the average of each variable for each activity and each subject

melt_data<-melt(ext_avg_sd, id = c("Subject", "Activity"))
cast_data <- dcast(melt_data, Subject + Activity ~ variable, mean)
write.table(cast_data, "tidy.txt", row.names = FALSE, quote = FALSE)




