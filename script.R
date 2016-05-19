

setwd("C:/TEMP/bcko/Documents/GitHub/MarkDownDissertation") # first set your working directory to dissertation folder


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


# variables into factors
fm1 <- within(fm1, {
nation <- factor(nation)
version <- factor(version)
gender <- factor(gender)
})


happy_fm1 <-data.frame(fm1$id, fm1$h_dialmean, rep(x="happy",times=150), fm1$nation, fm1$version, fm1$gender)
colnames(happy_fm1) <- c("id", "dialmean", "face", "nation", "version", "gender")

angry_fm1 <-data.frame(fm1$id, fm1$a_dialmean, rep(x="angry", times=150), fm1$nation, fm1$version, fm1$gender)
colnames(angry_fm1) <- c("id", "dialmean", "face", "nation", "version", "gender")

dialmean_fm1 <- rbind(happy_fm1, angry_fm1)
dialmean_fm1$face <- as.factor(dialmean_fm1$face)


# before we can run ANOVA, we need to find mean dialmean value for each participant for each combination of condition
dialmean_fm1.mean <- aggregate(dialmean_fm1$dialmean,
					by = list(dialmean_fm1$id, dialmean_fm1$face),
					FUN = 'mean')

colnames(dialmean_fm1.mean) <- c("id", "face", "dialmean")
head(dialmean_fm1.mean)
dialmean_fm1.mean <- dialmean_fm1.mean[order(dialmean_fm1.mean$id),]

# building the anova

dialmean.aov <- with(dialmean_fm1.mean, aov(dialmean ~ face) + Error( )
summary(dialmean.aov)

confint(dialmean.aov)

names(dialmean.aov)

d1_hmean_t$p.value
d1_hmean_t$parameter
d1_hmean_t$estimate

d1_amean_t <- t.test(fm1$a_dialmean~fm1$nation)
d2_hmean_t <- t.test(fm2$h_dialmean~fm2$nation)
d2_amean_t <- t.test(fm2$a_dialmean~fm2$nation)

