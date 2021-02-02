# LiRE
LiRE is an algorithm designed to efficiently correct errors made by any given baseline compressed-sensing support recovery algorithm.  LiRE  takes  as  input  an estimatesin of the true supports of an m-sparse d-dimensional signal x observed through n linear measurements, and outputs are fined support estimate s_{out} of size m.
# Usage
Please refer to LiRE_example.R for basic usage. Implementation of LiRE algorithm is in LiRE_main.R.
# Input Arguments:
     Phi       :  A design matrix consisting of n d-dimensional samples.
     y         :  Response vector
     ell       :  List size ( suggested default value is 0.5*m)
     S_start   :  Initial estimation for the support ( m-dimensional vector with entries from {1,2,...,d})
     rounds    :  Number of rounds to run LiRE

  
 # Returns:
    S         : Estimated support S
