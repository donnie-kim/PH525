dat <- read.csv("msleep_ggplot2.csv")
library(dplyr)
class(dat)

primates <- filter(dat, order =="Primates")
nrow(primates)
class(primates)

dat3 <- filter(dat,order=="Primates") %>% 
  select(sleep_total) %>% unlist
class(dat3)

mean(dat3)

filter(dat,order=="Primates") %>%
  summarize(mean(sleep_total))
