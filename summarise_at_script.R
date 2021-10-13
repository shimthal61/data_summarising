#summarising across multiple columns
mpg %>%
  group_by(manufacturer) %>%
  #Add what columns we want to summarise
  summarise_at(c("displ", "cty", "hwy"),
               #What function we want
               mean,
               #remove missing data points
               na.rm = TRUE)