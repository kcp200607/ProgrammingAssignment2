## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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
