## Put comments here that give an overall description of what your
## functions do
## functions below are made by Anannya swarna
## This function creates a special "matrix" object, which is actually a list.
## This list may include objects of both primary matrix and its inverse
## version in the cache.


## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <- y
inv<- NULL ## we insert null in the variable 
}
get <- function() x
setinverse <- function(inverse) inv <- inverse
getinverse <- function() inv
list(set = set, get = get, ## here I made a list
setinverse = setinverse,
getinverse = getinverse)
}


## Write a short comment describing this function
##This function computes the inverse of the special "matrix" object returned by
## makeCacheMatrix function and caches this inverse matrix. If the cached inverse
## matrix is already present, the function simply returns the inverse matrix from
## the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'invrs <= x$getinverse()
if(!is.null(invrs)) {
message("getting cached data") ##if inverse is null then it will show this message
return(invrs)
}
mat <- x$get()
invrs <- solve(mat, ...)
x$setinverse(invrs)
invrs
}
