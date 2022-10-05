## setting up your work space 
install.packages("tidyverse")
install.packeges("palmerpenguins")
library(tidyverse)
library(palmerpenguins)
## filter for body mass and flipper length group by species 
penguins %>% filter_peng<-filter(penguins, body_mass_g, flipper_length_mm, species) %>% group_by(species)
## create simple plots with ggplot2
ggplot(data=penguins) + geom_point(mapping=aes,x=flipper_length_mm,y=body_mass_g,color=species))+facet_wrap(~species)
