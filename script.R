library("foreign")
dataset1=read.spss("Data/Winter16_FM1.sav", to.data.frame=TRUE)
dataset2=read.spss("Data/Winter16_FM2.sav", to.data.frame=TRUE)

d1_hmean_t <- t.test(dataset1$h_dialmean ~ dataset1$nation)
d1_hmean_t$p.value
d1_hmean_t$parameter
d1_hmean_t$estimate

d1_amean_t <- t.test(dataset1$a_dialmean~dataset1$nation)
d2_hmean_t <- t.test(dataset2$h_dialmean~dataset2$nation)
d2_amean_t <- t.test(dataset2$a_dialmean~dataset2$nation)