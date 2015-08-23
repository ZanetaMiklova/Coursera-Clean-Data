
#merge train subject and test subject
subject<-rbind(train_sub, test_sub)


#merge train activity and test activity
activity<-rbind(train_y, test_y)


#join variables subject and activitis to the merge data set
data<-cbind(activity, data)
data<-cbind(subject, data)

colnames(data)[1]<-"subject"
colnames(data)[2]<-"activity"

#decrypt the activity
activity_names<-vector()

for(i in activity$V1){
     activity_names<-append(activity_names, as.character(activity_labels$V2[i]))

}

data$activity<-activity_names