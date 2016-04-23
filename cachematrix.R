## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        reverse <- NULL
        set <- function(y) {
                x <<- y
                reverse <<- NULL
        }
        get <- function() x
        setreverse <- function(mean) m <<- reverse
        getreverse <- function() reverse
        list(set = set, get = get,
             setreverse = setreverse,
             getreverse = getreverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        m <- x$getreverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setreverse(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
