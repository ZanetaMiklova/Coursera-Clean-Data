


##### load train data ################################################
train_sub<-read.table("train/subject_train.txt")
train_X<-read.table("train/X_train.txt")
train_y<-read.table("train/y_train.txt")
# names_files<-list.files("train/Inertial Signals")
# 
# for(name in names_files){
#      assign(gsub(".txt","", name), read.table(paste("train/Inertial Signals/", name, sep = "")))
# }

features<-read.table("features.txt")
activity_labels<-read.table("activity_labels.txt")

##### load test data ################################################
test_sub<-read.table("test/subject_test.txt")
test_X<-read.table("test/X_test.txt")
test_y<-read.table("test/y_test.txt")
# names_files<-list.files("test/Inertial Signals")
# 
# for(name in names_files){
#      assign(gsub(".txt","", name), read.table(paste("test/Inertial Signals/", name, sep = "")))
# }


#####################################################################