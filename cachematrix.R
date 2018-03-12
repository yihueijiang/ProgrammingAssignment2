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

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
