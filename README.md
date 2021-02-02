## LiRE
LiRE (List Regression Error-correction) is an algorithm designed to efficiently correct errors made by any given baseline compressed-sensing support recovery algorithm.  LiRE  takes  as  input  an estimatesin of the true supports of an m-sparse d-dimensional signal x observed through n linear measurements, and outputs are fined support estimate s_{out} of size m.
# Usage
Please refer to LiRE_example.R for basic usage. It is an example with feature dimension d=1600 and sparsity value m=35. Initial estimate for support is chosen uniformly random from {1,...,d} and LiRE is run only once. The reported recovery rates are averaged out over 50 experiments for sequence of number of samples n={120,130,140,150,160,170,180,190,200,210}. 

Implementation of LiRE algorithm is in LiRE_main.R.
# Input arguments:
     Phi       :  A design matrix consisting of n d-dimensional samples.
     y         :  Response vector ( an n-dimensional vector)
     ell       :  List size ( suggested default value is 0.5*m)
     S_start   :  Initial estimation for the support ( an m-dimensional vector with entries from 1:d)
     rounds    :  Number of rounds to run LiRE ( suggested default value is one round)

  
 # Returns:
    S         : Estimated support S
