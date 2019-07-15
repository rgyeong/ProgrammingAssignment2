## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
  #this object is to store data and inverse matrix not to compute.
  inverse_m <- NULL
  set <- function(y){ #set current data for computing the inverse of a matrix
    x <<- y
    inverse_m <<- NULL
  }
  get <- function(){ #comfirm current data
    x
  }
  setinverse <- function(inverse){ #store the inverse matrix
    inverse_m <<- inverse
  }
  getinverse <- function(){ #print the stored inverse
    inverse_m
  }
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  #if it is null, it compute the inverse and pass it to makeCacheMatrix function to cahce it.
  inverse_m <- x$getinverse()
  if(!is.null(inverse_m)){
    print("you have the innverse matrix")
    return(inverse_m)
  }
  data <- x$get()
  inverse <- solve(data)
  x$setinverse(inverse)
  inverse
}
