# my first github synced script
# want to be able to completely reproduce the script, also 10 years in the future. You can store the
# versions of the library you use when developing the project
library(renv) 

# you do renv::init() once, so you do it in the console once and don't put it in the script
# now you made a lock file (renv.lock), this stores all the verisons of the libraries. 
# now restore the versions of the packages used to develop this project:
renv::restore()

x <- c(1,2,3,4,5)
y <- c(1,4,3,6,9)
data <- data.frame(x,y)
data
