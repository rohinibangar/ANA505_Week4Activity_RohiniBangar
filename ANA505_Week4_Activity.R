#Task: Write the function to get a dataset from Base R: Titanic
#and give the dataframe a new name of your choice

data(Titanic)
Passengers <- as.data.frame(Titanic)

#TASK: Write the function to see the top rows of the data(viewing top 4 rows)
head(Passengers,4)

#Install and call the package dplyr
install.packages("dplyr")
library("dplyr")

#Task: Write the function to 'select' the Survived and Sex columns 
select(Passengers,Survived,Sex)

#TASK: Write the function to save the two columns as one new dataset
#and give it a name
PassengersNewData <- select(Passengers,Survived,Sex)

#TASK: Write the function that deselects the sex column
select(PassengersNewData,Survived,-Sex)

#TASK: Write the function that renames 'Sex' to 'Gender'
rename(PassengersNewData, gender=Sex)

#TASK: Write the function that names a new dataset that includes the 'gender' column
PassengersV1<-mutate(Passengers, gender=Sex)

#TASK: Write the function that includes only rows that are 'male'
males<-filter(PassengersV1, gender=="Male")

#TASK: Write the function to group the data by gender (hint: arrange())
arrange(males, Freq)
group_by(males, gender)

#TASK: Sum the Freq column
sum(Passengers$Freq)
#TASK: After you run it, write the total here: 2201

#TASK: Write the function that includes only rows that are 'female'
females<-filter(PassengersV1, gender=="Female")

#TASK: Write the function that joins the male and female rows 
union(males,females)

#Optional Task: add any of the other functions 
#you learned about from the dplyr package
setdiff(males,females)  # The setdiff() function is used to get the difference between two sets of values. It returns the values in the first set that are not present in the second set.
