## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a list and also sets all
## the functions for setting matrix and getting inverse
## of the matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) inv <<-inverse
        getinv <- function() inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Write a short comment describing this function
#The function first checks if the inverse is already
## there in the cache. If not, only then it computes 
## the same and returns.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	xinv <- x$getinv()
	if(!is.null(xinv)) {
            message("getting cached data")
            return(xinv)
        }
        data <- x$get()
        xinv <- solve(data, ...)
	x$setinv(xinv)
        xinv	
}
