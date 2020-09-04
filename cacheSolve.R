cacheSolve <- function(x, ...) {
## This function computes the inverse of the special "matrix" returned 
##by makeCacheMatrix above. 
        invmatrix <- x$getInverse()
        if(!is.null(invmatrix)){
                message("Retrieving Cached Data")
                return(invmatrix)
        }
        data <- x$get()
        invmatrix <- solve(data)
        x$setInverse(invmatrix)
        invmatrix      
}