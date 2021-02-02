# LiRE
LiRE is an algorithm designed to efficiently correct errors made by any given baseline compressed-sensing support recovery algorithm.  LiRE  takes  as  input  an estimatesin of the true supports of an m-sparse d-dimensional signal x observed through n linear measurements, and outputs are fined support estimate s_{out} of size m.
# Arguments:
    Phi        :  A design matrix consisting of n d-dimensional samples.
     y         :  Response vector
     ell       :  List size
     S_start   :  Initial estimation for the support
     rounds    :  Number of rounds of LiRE

  
 # Returns:
    S         : Estimated support S
