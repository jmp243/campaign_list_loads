# jung mee park
# campaign list loads, comparing lists
# 2023-04-25

getwd()
setwd("/Users/jungmeepark/Documents/Trellis/list loader/April25_2023_requests")
# install.packages("tidyverse")

library(tidyverse)

jan23 <- read.csv("Honors_coll_Jan_23.csv")
apr23 <- read.csv("HON_Alumni_Apr2023.csv")
sept22 <- read.csv("Honors_sept22.csv") 

# subset variables in April 23 data
apr23 <- apr23 %>% 
  select(First.Name, Last.Name, Primary.Email)

# merge jan and sept data
up2jan23 <- left_join(jan23, sept22)

# antijoin to see where there are list differences
anti_data <- anti_join(apr23, up2jan23)

anti_data2 <- anti_join(up2jan23, apr23)

write.csv(anti_data, "Apr-Jan_23.csv")
write.csv(anti_data2, "Jan-Apr_23.csv")
