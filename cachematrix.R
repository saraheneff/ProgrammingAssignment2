## Project Assignment #2 for R Programming Coursera course
## Caching an inverse matrix

## Caching the matrix

makeCacheMatrix <- function(x = matrix()) {
        amatrix <- NULL
        set <- function(y) {
                x <<- y
                amatrix <<- NULL
        }
        get <- function() x
        setmatrix <- function(solve) amatrix <<- solve
        getmatrix <- function() amatrix
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}

## Returning the inverse matrix

cacheSolve <- function(x = matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
        amatrix <- x$getmatrix()         # Returns original matrix
        if(!is.null(amatrix)) {
                message("getting cached data")
                return(amatrix)  # returns matrix inverse
        }
        matrix <- x$get()
        amatrix <- solve(matrix, ...)
        x$setmatrix(amatrix)
        amatrix
}
