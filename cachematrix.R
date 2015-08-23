

##The first function,  creates a special "vector", which is really a list

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


## this functionis calcjlating inverse of matrix x and caching data if inverse has been calculated already.

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
        ## Returning a matrix that is the inverse of 'x'
}
