## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This is a function which will make a matrix object which will cache its inverse
makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
     set <- function(y){
         x <<- y
        inverse <<- NULL
    }
    get <- function() x
     setInverse <- function(solveInverse) inverse <<- solveInverse
     getInverse <- function() inverse
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## The function below will find the inverse of the special matrix returned by makeCacheMatrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getInverse()
    if(!is.null(inverse)){
        message("getting cached data")
        return(inverse)
     }
        data <- x$get()
        inverse <- solve(data)
        x$setInverse(inverse)
        inverse
    
}
##
