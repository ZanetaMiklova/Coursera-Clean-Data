####################fing column with mean########################
features_name<-features$V2

which_mean<-grepl("-mean()", features_name)

features_name<-features_name[which_mean]

#remove nameFreq
which_mean<-!grepl("-meanFreq()", features_name)
features_name<-features_name[which_mean]

#remove word with substring Jerk-mean
which_mean<-!grepl("Jerk", features_name)
features_name<-features_name[which_mean]

#remove word with substring Mag-mean
which_mean<-!grepl("Mag", features_name)
features_name<-features_name[which_mean]

index_mean<-match(features_name,features$V2)
#################################################################
####################fing column with std ########################
features_name<-features$V2

which_mean<-grepl("-std()", features_name)

features_name<-features_name[which_mean]

#remove word with substring Jerk-std
which_mean<-!grepl("Jerk", features_name)
features_name<-features_name[which_mean]

#remove word with substring Mag-std
which_mean<-!grepl("Mag", features_name)
features_name<-features_name[which_mean]

index_std<-match(features_name,features$V2)
#################################################################
####################select this row from data ###################

index<-append(index_mean, index_std)
data<-data[,index]
#name columns of this data set
colnames(data)<-features$V2[index]







