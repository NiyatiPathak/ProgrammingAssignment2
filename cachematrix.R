## A pair of functions that cache inverse of matrix
## 

## This fxn creates matrix that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
	y <- NULL
	set <- function (z){
		x<<- z
		y <<- NULL
	}
	get<- function() x
	setInverse <- function (solvemat) y <<-solvemat
	getInverse <- function() y
	list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## This function results in the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ##y=inverse fn
	y <- x$getInverse()
	if(!is.null(y)){
		message("getting cached data")
		return(y)
	}
	data <- x$get()
	y <- solve(data)
	x$setInverse(y)
	y
}
