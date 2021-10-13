#How to summarise columns with certain parameters
mpg %>%
  group_by(manufacturer) %>%
  #Summarise if the columns contain numerical data
  summarise_if(is.numeric, 
               #what function do we want
               mean, 
               #Remove missing data points
               na.rm = TRUE)
