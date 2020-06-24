## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#this function creates an object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  makeVector <- function(x = numeric()) {
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
    #i took the example and substituted mean for inverse as requested
  }
}


## Write a short comment describing this function
#this function computes the inverse of the matrix computed by the above
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- inverse(data, ...)
  x$setinverse(m)
  m
  #replace mean with inverse from example
}
