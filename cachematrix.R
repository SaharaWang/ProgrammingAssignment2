## Write a pair of functions that can cache the inverse of a matrix

## Create a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- null
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = serinverse,
             getinverse = getinverse)
}


## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)){
                return(m)
        }
        data <- x$get()
        m <- solve(data, ..)
}
