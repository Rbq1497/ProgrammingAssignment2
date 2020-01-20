## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

###Assignment

# Function makeCacheMatrix gets an input (matrix), sets the value of that matrix, get the value of 
# the matrix, sets  the inverse Matrix and get the inverse Matrix

makeCacheMatrix <- function(x = matrix()) { #take matrix as input
        i <- NULL
        set <- function(y){  #set the value of the matrix 
                x <<- y
                i <<- NULL
        }
        get <- function()x #get the value of the Matrix 
        setInverse <- function(inverse) i <<- inverse #set the value of the invertible matrix 
        getInverse <- function() i #get the value of the invertible matrix 
        list(set = set, get = get, 
             setInverse = setInverse, 
             getInverse = getInverse)
}

# function cacheSolve takes the output from makeCacheMatrix and verifies inverse matrix
# has value or not. If there is no value, it gets the original matrix data and set the invertible matrix 
#using the solve function. If it has some values, it returns a message "getting chached invertibe matrix' 

cacheSolve <- function(x, ...) { ## Return a matrix that is the inverse  of "x"
        i <- x$getInverse()
        if(!is.null(i)){ # if inverse matrix is not NULL
                message("getting cached data")  #type =  message 
                return(i) #retunr the invertibe matrix i
        } #if NULL
        data <- x$get() # get the original matrix data 
        i <- solve(data,...) #use solve function to inverse matrix
        x$setInverse(i) # return "i" the invertible matrix 
        i
}











