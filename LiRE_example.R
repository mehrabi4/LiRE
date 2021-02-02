source("LiRE_main.R")
library(MASS)
library(ggplot2)
set.seed(1)
d=1600
NN=50
m=35
n_seq=seq(120,210,10)
result_vec=rep(0,length(n_seq))
counter=0
for( n in n_seq) { 
counter=counter+1
count_moduled=0
for (i in 1:NN){
  ell=ifelse(1.5*m > n, n-m, 0.5*m)
  rounds=1
  Phi=matrix(rnorm(n*d,0,1/sqrt(n)),ncol=d)
  x_star=rep(0,d)
  true_support=sample(1:d,m)
  x_star[true_support]= rnorm(m,0,1)
  y=Phi%*%x_star
S_initial=sample(1:d,m)
sparse_model=my_LiRE(Phi,y,ell,S_initial,rounds)
  count_moduled=count_moduled+ (length(setdiff(true_support,sparse_model$Support))==0) 
}
cat(paste(counter*floor(100/length(n_seq)),"% done",sep="","\n")) 
result_vec[counter]=count_moduled/NN
}
dev.new()
print(ggplot(data.frame(result_vec,n_seq),aes(y=result_vec,x=n_seq))+
  geom_point()+
  geom_line()+
  xlab("Number of samples")+
  ylab("Exact recovery rate")+
  theme_bw()+
  ggtitle("  Exact recovery rate for different number of measurments at sparsity level
  m=35 with feature dimension d=1600. 
  Each reported value is averaged out over 50 experiments."))
