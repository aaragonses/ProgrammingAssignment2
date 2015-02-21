## 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
  set<-function(y){
    x<<-y
    i<<-NULL  
  }
  get<-function() x
  setmatrix<-function(solve) i<<- solve
  getmatrix<-function() i
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}

## Returns the Inverse of the matrix "x" 

cacheSolve <- function(x, ...) {
  i<-x$getmatrix()
  if(!is.null(i)){
    return(i)
  }
  matrix<-x$get()
  i<-solve(matrix, ...)
  x$setmatrix(i)
  i
}