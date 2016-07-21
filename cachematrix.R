

## Write a short comment describing this function
## The below function creates a list that contains a
## function that will:
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
	
	inv = NULL
	set = function(y) {
		x <<- y
		inv <<- NULL
		
	}
	get = function()x
	setinv = function(inverse) inv <<- inverse
	getinv = function() inv
	list = (set=set, get=get, setinv=setinv, getinv=getinv)
	

}

## The below function works with the above function
## It returns the inverse of the matrix
## First: it checks to see if the inverse has already been computed
## If yes, it takes the result and skips the computation
## If no, it computes the inverse
## Then sets the value in the cache


cacheSolve <- function(x, ...) {
        inv = x$getinv()
        
        if (!is.null(inv)) {
        	message("Getting cached data")
        	return(inv)
        }
        data = x$get()
        inv = solve(data,...)
        
        x$setinv(inv)
        return(inv)
        	
}
