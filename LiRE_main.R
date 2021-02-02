my_LS=function(A,u){
   Omega=solve(t(A)%*%A)
    temp=t(A)%*%u
    beta=Omega%*%temp
return(beta)
}



my_LiRE=function(Phi,y,ell,S_start,rounds=1)
{
  
  # Compute an estimation for the support.
  #
  # Arguments:
  #   Phi      :  A design matrix consisting of n d dimensional samples.
  #   y        :  Response vector
  #   ell      :  List size
  #   S_start  :  Initial estimation for the support
  #   rounds   :  Number of rounds of LiRE

  
  # Returns:
  #   S         : Estimated support S

  
  n=dim(Phi)[1]
  d=dim(Phi)[2]
  S=S_start
  m=length(S)
  r=0
  j=1
  while (r<rounds){
    L=rep(0,ell)
    R=rep(0,m+ell-1)
    temp=my_LS(Phi[,S[-j]],y)
    y_j=y-Phi[,S[-j]]%*%temp
    cor_vec_j=abs(matrix(y_j,nrow=1)%*%Phi)
    L=as.vector(t(apply(-cor_vec_j,1, order)[ 1:ell, ]))
    R=c(S[-j],L)
    beta_hat=rep(0,d)
    beta_hat[R]=my_LS(Phi[,R],y)
    beta_hat[S[-j]]=rep(0,m-1)
    S[j]=which.max(abs(beta_hat))
    j=j+1
    if(j==(m+1)){
      r=r+1
      j=1 
    }
  }
  
  returnlist=list("Support"=S) 
  return(returnlist)
}