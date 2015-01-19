## This function takes start matrix.
## Creates object mtx (matrix).
## Creates functions: set, get, setsolve, getsolve, getenv.
## Creates named list of functions list(set = set, get = get, etc.) and return it.
## Function stores inversed matrix returned by cacheSolve().

makeCacheMatrix <- function(x = matrix()){
  mtx <- NULL
  set <- function(y) {
    x <<- y
    mtx <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) mtx <<- solve
  getsolve <- function() mtx
  getevn<- function() environment()
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve,
       getevn = getevn)
}

## This function verifies status of mtx object. 
## If mtx object is NOT NULL it retuns inversed matrix from cache stored by function makeCacheMatrix().
## If mtx object is NULL it makes inverse matrix from start matrix via function solve(),
## put it to cache in makeCacheMatrix() and returns it.

cacheSolve <- function(x, ...) {
  mtx <- x$getsolve()             # Get inverse matrix from makeCacheMatrix(). If it exists mtx contains matrix, if not - NULL
  if(!is.null(mtx)) {             # Verify if mtx is NULL. If "no" - function cacheSolve() returns mtx.
    message("getting cached data")# And print "getting cached data"
    return(mtx)
  }
  data <- x$get()                 # Get data from start matrix via makeCacheMatrix()  
  mtx <- solve(data, ...)         # Make inversed matrix from start matrix
  x$setsolve(mtx)                 # Put inversed matrix to cache in makeCacheMatrix()
  mtx                             # Return inversed matrix mtx
}
