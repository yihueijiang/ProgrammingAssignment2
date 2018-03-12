## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

	##The initial value of the inverse matrix
        m <- NULL
        
        ##Set the value of the inverse property
        set <- function(matrix) {
                x <<-matrix
                m <<- NULL
        }
        
        ##Get the value of x
        get <- function(){
        	x
        } 
        
        ##Set the inverse of matrix
        setInverse <- function(Inverse){
         	m <<- Inverse
         }
         
        ##Get the inverse of the matrix
        getInverse <- function() {
        	m
        }
        
        ##Return the list of functions
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)}
}

## Write a short comment describing this function

##Computes the inverse of the special "matrix" returned by makeCacheMatrix above
##If the inverse has already been calculated (and the matrix has not changed), 
##then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- x$getInverse()
        
        ##Check to see if the inverse has been calculated 
        ##If so, it gets the inverse from the cache and skips the computation
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        
        ##get the matrix of data
        data <- x$get()
        
        ##Get the square matrix by matrix multiplication and then compute its inverse
        m <- solve(data%*%data)
        
        ##Set the value of the inverse in the cache
        x$setInverse(m)
        
        ##Return the matrix
        m

}
