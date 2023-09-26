# salt center
# april 27, 2023

library(tidyverse)

salt_ctr <- read_csv("~/Documents/Trellis/list loader/April26_2023_requests/nationwide_hcsm_counselor_april2023.csv")

index <- seq.int(nrow(salt_ctr) / 2)

salt_ctrA<- salt_ctr[index, ]
salt_ctrB <- salt_ctr[-index, ]

write.csv(salt_ctrA, "~/Documents/Trellis/list loader/April26_2023_requests/salt_ctrA.csv")
write.csv(salt_ctrB, "~/Documents/Trellis/list loader/April26_2023_requests/salt_ctrB.csv")
