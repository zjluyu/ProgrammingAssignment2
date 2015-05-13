## Calculate the inversed matrix. If the inversed matrix has been calculated, just read from cache
## and return the value

## Get the matrix as input and return a list of four functions(set,get, setmatrix, getmatrix)

makeCacheMatrix <- function(x = matrix()) {
    inversed_matrix <- NULL
    set <- function(y){
        
        x <<- y
        inversed_matrix <- NULL
    }
    get <- function() x
    setmatrix <- function(matrix) inversed_matrix <<- matrix
    getmatrix <- function() inversed_matrix
    list(set = set, get = get, setmatrix = setmatrix, getmatrix=getmatrix)

}


## Calculate the inversed matrix. If it has been calculated, read from cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inversed_matrix  <- x$getmatrix()
    if(!is.null(inversed_matrix)){
        message("getting cached data")
        return(inversed_matrix)
    }
    data <- x$get()
    inversed_matrix <- solve(data,...)
    x$setmatrix(inversed_matrix)
    inversed_matrix
}
