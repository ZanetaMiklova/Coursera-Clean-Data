# Start script
# Author: Zaneta Miklova

#load data to workspace
source("load_data.R")

#step 1)
#merges train and test data into the one data set (name: data)
source("merge_data.R")

#step 2) and 4)
#select only columns with mean() and std() - also rename the columns according the select features (step 4.)
source("select_mean_std.R")

#step 3)
#join variable subject and activity to the data set
#rename activity according activity labels (discrete name)
source("join_sub_act.R")

#step 5)
#new data set average of measurements for every subject and its activity
#name: data2
source("new_set.R")

#remove every unnecessarily variables
rm(activity_labels, average, features, subdata, test_sub, test_X, test_y, train_sub, train_X, train_y, activity, activity_names, features_name, i, index, index_mean, index_std, j, subject, which_mean)

write.table(data2, "final_data.txt", row.names = FALSE)