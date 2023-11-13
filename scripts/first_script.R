# my first github synced script
# want to be able to completely reproduce the script, also 10 years in the future. You can store the
# versions of the library you use when developing the project
library(renv) 

# you do renv::init() once, so you do it in the console once and don't put it in the script
# now you made a lock file (renv.lock), this stores all the verisons of the libraries. 
# now restore the versions of the packages used to develop this project:
renv::restore()

# remember to pull in Git tab to get changes from github
# load libraries
library(tidyverse)
library(ggplot2)

x <- c(1,2,3,4,5)
y <- c(1,4,3,6,9)
data <- data.frame(x,y)
fig01 <- data |> ggplot(aes(x=x,y=y))+
  geom_point() +
  geom_smooth(method='lm')
fig01
# copying the figure is not the best way. It is better to write them into a file with known
# resolution 
# ggsave saves the last object into a file.
# a dot is the root of the porject 
ggsave("./figures/fig01.png",plot=fig01,width=1920,height=1068,units="px")
# those dimensions are used because its the resolution of a screen 

# we finished the job. Now save it into github. 