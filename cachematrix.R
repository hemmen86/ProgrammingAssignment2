#My work

##Those function are mention to inverse a matrix. Yet, for saving 
##time using the 2 functions enable cheking if the calcualtion already done

## This is the first function which inverse the matrix and provide a list


makeCacheMatrix <- function(x = matrix()) {
  invmat <- NULL
  set <- function(y) {
    x <<- y
    invmat <<- NULL
  }
  get <- function() x
  setinv <- function(solve)  invmat <<- solve
  getinv <- function() invmat
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}

## This is the second function, the input shuold be the output of the
#first function

cacheSolve <- function(x, ...) {
    invmat <- x$getinv()
    if(!is.null(invmat)) {
      message("getting cached data")
      return(invmat)
    }
    data <- x$get()
    invmat <- solve(data, ...)
    x$setinv(invmat)
    invmat
  } 
  



