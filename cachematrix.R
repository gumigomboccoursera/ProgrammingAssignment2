## Put comments here that give an overall description of what your
## functions do

## The two functions makeCacheMatrix and cacheSolve calculate the inverse of matrices but before calculating it it checks
## if the inverse is already stored in cache, and only calculates it if it was not stored previously.


## Write a short comment describing this function
## The makeCacheMatrix function returns a list of functions that 
## 1. set the value of the matrix, 
## 2. get the value of the matrix
## 3. set the value of the inverse of the matrix
## 4. get the value of the inverse of the matrix.


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
## The cacheSolve function checks if the inverse of the matrix has already been calculated and is stored in cache.
## If it is, then it returns the inverse, if not, it calculates the inverse.
##




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
