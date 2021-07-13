#Prime number sieve
primes <- function(max) {
  #Create a boolean vector of candidate primes, where index is the prime number
  primeIndex <- rep(TRUE, length(seq(2, max)))
  #loop over each multiple in the vector and mark as non-prime
  for (i in seq(2, floor(sqrt(max))+1)) {
    primeIndex[seq(i*2, max, i)] <- FALSE
  }
  #return the numbers left which are our primes.
  which(primeIndex == TRUE)[-1]
}
microbenchmark::microbenchmark(primes(1000000))
