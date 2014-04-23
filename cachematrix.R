## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##save a matrix to a value. initialize a value the inverse of 
##the of the input matrix

makeCacheMatrix <- function(x = matrix()) {
        
        myCacheOrigin <<- x
        myCacheInverse <<- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
        
        

}


## Write a short comment describing this function
## return the inverse of the given matrix
## calculate the inverse if it had not been calculated
## return the cached inverse matrix if it has been calculuated

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        if(!is.null(myCacheInverse)) {
                message("getting cached data")
                return(myCacheInverse)
        } else{
                myCacheInverse <- solve(x)
                
        }
        
        myCacheInverse
        
        
        
}
