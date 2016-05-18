
# first set your working directory to dissertation folder
setwd()

# foreign library needed in order to read spss data
library("foreign")
fm1=read.spss("Data/Winter16_FM1.sav", to.data.frame=TRUE)

# return dimension of dataset1
dim(fm1)


summary(fm1$nation) # summary of nation


summary(fm1$nation)[["american"]] # number of americans

# number of japanese
summary(fm1$nation)[["japanese"]]

# Welch's two Sample t-test
d1_hmean_t <- t.test(fm1$h_dialmean ~ fm1$nation)

d1_hmean_t$p.value
d1_hmean_t$parameter
d1_hmean_t$estimate

d1_amean_t <- t.test(dataset1$a_dialmean~dataset1$nation)
d2_hmean_t <- t.test(dataset2$h_dialmean~dataset2$nation)
d2_amean_t <- t.test(dataset2$a_dialmean~dataset2$nation)