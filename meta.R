meta.data<-data.frame(study=c(1,2,3,4,5,6),mean.exp=c(52,1.97,3.38,10.58,14.67,24.8),sd.exp=c(10.32,0.59,1.53,3.41,2.06,6.1), 
            n.exp=c(44,87,21,41,60,577),mean.cont=c(49.63,1.95,2.82,7.67,14.66,23.4),sd.cont=c(9.81,0.54,1.59,5.87,2.14,5.6), n.cont=c(196,87,22,9,60,462)) 

meta.1<-metacont(n.e=n.exp,mean.e=mean.exp,sd.e=sd.exp, n.c=n.cont,mean.c=mean.cont,sd.c=sd.cont,sm="SMD",
                studlab=study,data=meta.data) 

forest(meta.1,digits.mean=2,digits.sd=2,comb.fixed=T,comb.random=F, leftcols=c("studlab","n.e","mean.e","sd.e","n.c","mean.c","sd.c"), 
       rightcols=c("effect","ci","w.fixed","w.random"), prediction = TRUE)

install.packages(“readxl”)
library(readxl)
data<-read_excel("C:/Users/seongjun/OneDrive/바탕 화면/Problem+set1+Problem+5.xlsx")
metacont(n.e=n1,mean.e=Mean1,sd.e=SD1, n.c=n2,mean.c=Mean2,sd.c=SD2,sm="SMD",studlab=Study,data=data)
