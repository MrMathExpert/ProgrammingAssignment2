## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  zz <- NULL
  set <- function(y){
    x <<- y
    zz <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) zz <<- solveMatrix
  getInverse <- function() zz
  list(set = set, 
       get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}

## Write a short comment describing this function
## This function solves the special "Matrix" created with 
## the above function - makeCacheMatrix

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}

