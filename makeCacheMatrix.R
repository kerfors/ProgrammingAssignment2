makeCacheMatrix <- function(x = numeric()) {
 ## Creates a special "matrix" 
 ## (really a matrix containing a function) to
 ## 1. set the value of the matrix
 ## 2. get the value of the matrix
 ## 3. set the inverse of the matrix
 ## 4. get the inverse of the matrix

  # inv will store the cached inverse matrix
  inv <- NULL
 
  # set the matrix
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
  # get the matrix
  get <- function() x
  
  # set the inverse
  setsolve <- function(solve) inv <<- solve
  
  # get the inverse
  getsolve <- function() inv
  
  # Return the matrix with defined functions
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}