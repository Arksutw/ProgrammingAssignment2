## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Made By Ark
makeCacheMatrix <- function(mx = matrix()) {
  
  inverse <- NULL
  set <- function(x) {
          mx <<- x
          inverse <<- NULL
  }
  
  get <- function() mx
  setinv <- function(inv) inverse <<- inv;
  getinv <- function() inverse;
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inverse <- mx$getinv()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
   
  data <- mx$get()
  invserse <- solve(data, ...)
  mx$setinv(inverse) 
  inverse
}

