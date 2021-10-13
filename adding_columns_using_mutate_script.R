#Adding new columns to our dataset
mpg %>%
  group_by(manufacturer) %>%
  #Adding the mean and sd of hwy
  mutate(mean_hwy = mean(hwy), sd_hwy = sd(hwy)) %>%
  #select_if(c(is.numeric())
  select(-class, -trans)

#Mapping onto a new dataframe
mpg_with_mean <- mpg %>%
  group_by(manufacturer) %>%
  #Removing the group we just created
  ungroup() %>%
  mutate(mean_hwy = mean(hwy), sd_hwy = sd(hwy)) %>%
  select(-class, -trans)