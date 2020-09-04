makeCacheMatrix <- function(x = matrix()) {
##This function creates a special "matrix" object that can cache its inverse
        invmatrix <- NULL
        set <- function(y){
                x <<- y
                invmatrix <<- NULL
        }
        get <- function() x
        setInverse <- function(solveMatrix) invmatrix <<- solveMatrix
        getInverse <- function() invmatrix
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}