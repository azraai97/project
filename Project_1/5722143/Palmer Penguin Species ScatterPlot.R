install.packages("tidyverse")
library("ggplot2")
library("palmerpenguins")

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species, shape=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gormen")+
  annotate("text", x=220, y=3500, label="Gentoos are the largest")

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species, shape=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length on Different Island", subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kristen Gormen")+
  facet_wrap(~island)