## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y) {
        x <<- y
        inverse <<- NULL
    }
    get <- function() x
    getInverse <- function() inverse
    setInverse <- function(i) {
        inverse <<- i
    }
    list(set = set, get = get, getInverse = getInverse, setInverse = setInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inverse <- x$getInverse()
    if (!is.null(inverse)) {
        message("Getting cached inverse")
        return(inverse)
    }
    matrix <- x$get()
    i <- solve(matrix)
    x$setInverse(i)
    i
}
