## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    invmatrix <- NULL
    set <-function(y) {
        x <<- y
        invmatrix <<- NULL
    }
    get <- function() x
    setinv <- function(solve) invmatrix <<-solve
    getinv <- function() invmatrix
    list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      invmatrix <- x$getinv()
      if(!is.null(invmatrix)) {
          message("getting cached data")
          return(invmatrix)
      }
      data <- x$get()
      invmatrix <- solve(data, ...)
      x$setinv(invmatrix)
      invmatrix
      
}
