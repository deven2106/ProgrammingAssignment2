## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inve <- NULL
  set <- function(y)
  {
    x<<-y
    inve <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inve<<-inverse
  getinverse <- function() inve
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
inve <- x$getinverse()
  if(!is.null(inv))
  {
    message("getting cached data")  
    return(inve)
    }
  
  data <- x$get()
  inve<-solve(data,...)
  x$setinverse(inve)
  inve
        ## Return a matrix that is the inverse of 'x'
}
