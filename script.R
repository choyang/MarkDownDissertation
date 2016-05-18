

setwd("C:/Users/TEMP/Documents/MarkDownDissertation") # first set your working directory to dissertation folder


library("foreign")	 # foreign library needed in order to read spss data
fm1=read.spss("Data/Winter16_FM1.sav", to.data.frame=TRUE)


#-----------------------------FM1---------------------------#
dim(fm1) 					# return dimension of dataset1
summary(fm1$nation) 			# summary of nation
summary(fm1$nation)[["american"]] 	# number of americans
summary(fm1$nation)[["japanese"]]	# number of japanese

# Welch's two Sample t-test
t.test(fm1$h_dialmean ~ fm1$nation)
t.test(fm1$a_dialmean ~ fm1$nation)


# Levene-type test
install.packages("lawstat")
library("lawstat") 
levene.test(y= fm1$h_dialmean, group= fm1$nation) 
levene.test(y= fm1$a_dialmean, group= fm1$nation) 






d1_hmean_t$p.value
d1_hmean_t$parameter
d1_hmean_t$estimate

d1_amean_t <- t.test(fm1$a_dialmean~fm1$nation)
d2_hmean_t <- t.test(fm2$h_dialmean~fm2$nation)
d2_amean_t <- t.test(fm2$a_dialmean~fm2$nation)