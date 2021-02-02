# LiRE
LiRE (List Regression Error-correction) is an algorithm designed to efficiently correct errors made by any given baseline compressed-sensing support recovery algorithm.  LiRE  takes  as  input  an estimatesin of the true supports of an m-sparse d-dimensional signal x observed through n linear measurements, and outputs are fined support estimate s_{out} of size m.
# Usage
Please refer to LiRE_example.R for basic usage. It is a simple example with feature dimension d=1600 and sparsity value m=35 with a sequence number of samples values n={120,130,140,150,160,170,180,190,200,210}. For each value of n ( number of samples), initial estimate for support is chosen uniformly random from {1,...,d} and the reported recovery rates are averaged out over 50 experiments with one run of LiRE. In each experiment, entries of the n by d design matrix phi has iid entries from normal(0,1/n) and non-zero entries of the original vector x are chosen iid from normal(0,1).

Implementation of LiRE algorithm is in LiRE_main.R.
### Input arguments:
     Phi       :  A design matrix consisting of n d-dimensional samples.
     y         :  Response vector ( an n-dimensional vector)
     ell       :  List size ( suggested default value is 0.5*m)
     S_start   :  Initial estimation for the support ( an m-dimensional vector with entries from 1:d)
     rounds    :  Number of rounds to run LiRE ( suggested default value is one round)

  
 ### Returns:
    S         : Estimated support S
