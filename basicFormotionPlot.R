#scartch for moton

library(ggplot2)
library(gganimate)
library(tidyverse)

#loaddata

war <- read_csv("NMS_dataset.csv")
summary(war)
glimpse(war)

library(ggrepel)
p <- ggplot(war, aes(log(Military_size), log(Population), size = Military_size, color = stateabb, frame = year, label=stateabb)) +
  geom_point() +  guides(color=FALSE) +
  geom_text_repel(aes(label=ifelse(Military_size > 449999,(stateabb),'')))


gganimate(p, interval =.2, "outputMotion.gif")

gganimate(p, interval = .2)


p <- ggplot(war, aes(log(Military_size), log(Population), size = Military_size, color = stateabb, frame = year, label=stateabb)) +
  geom_point() +  guides(color=FALSE) +
  geom_text_repel(aes(label=ifelse(Military_size > 449999,(stateabb),''))) + theme(text = element_text(size = 12))
p
