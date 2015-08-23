ReadMe:
The main Rfile is run_analysis.R. In this code the other parts of program are calling by source() function. 

There are five source() function which call this Rfile:
1.	load_data.R : loaded the data
2.	merge_data.R: provide 1) step from instruction on courser
3.	select_mean_std.R: provide 2) and 4) step from instruction. I select 30 variables from original dataset which I consider important… 15 variables are mean() measurements, 15 variables are std() measurements. Included this step I rename col names in new data.frame.
4.	join_sub_act.R : I join two new varibles into data set. Subject and Activity. Subject is the number of subject from test_sub and train_sub. Activity is from train_y and test_y. I uncoded the number of activity according the activity_label.
5.	new_set.R: create new data set called data2 from data set called data. It is provided the step 5) from the instruction. There are computed averages of measurements variables for each subject and its activities.  

At the last step I removed all variables witch are not necessary .

Thanks for reading. 
