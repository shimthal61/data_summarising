#Finding the mean and standard deviation
mpg %>%
  #Group by manufacturer
  group_by(manufacturer) %>%
  #Add columns summarising the mean and sd of hwy
  summarise(mean_hwy = mean(hwy), sd_hwy = sd(hwy), number = n()) %>%
  #Ordering it from worst to best hwy
  arrange(mean_hwy) %>%
  #Ordering it from best to worst hwy
  arrange(-mean_hwy)