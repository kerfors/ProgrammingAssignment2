cacheSolve <- <- function(x, ...) {
  ## Compoure the inverse of the matrix. 
  ## If the inverse is already calculated before; returns the cached inverse
  
  inv <- x$getsolve()
  
  # If the inverse is calculated, return it
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  
  # Compute the inverse using the solve function
  data <- x$get()
  inv <- solve(data, ...)
  
  # Cache the inverse and return it
  x$setsolve(inv)
  inv
}