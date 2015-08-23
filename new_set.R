
subject<-unique(data$subject)
activity<-unique(data$activity)

data2<-data.frame(matrix(NA, nrow = 0, ncol = dim(data)[2]))
colnames(data2)<-colnames(data)

for(i in subject){
     for(j in activity){
          subdata<-subset(data, subject==i)
          subdata<-subset(subdata, activity==j)
          subdata<-subdata[,-c(1,2)]
          average<-lapply(subdata, mean)
          average<-as.data.frame(average)
          average<-cbind(j, average)
          average<-cbind(i, average)
          colnames(average)[1]<-"subject"
          colnames(average)[2]<-"activity"
          data2<-rbind(data2, average)
     }
}

#order rows by number of subject
data2<-data2[with(data2, order(subject)), ]