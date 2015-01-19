### Introduction
Matrix inversion is usually a costly computation. And in some cases it is better to cache results of the previous work than compute it repeatedly. These functions solve the problem by caching inverse matrix computed in function `cacheSolve()`.

#### The project has the following functions:
1. `makeCacheMatrix`: This function creates a special "matrix" object that can cache its inverse.
2. `cacheSolve`: This function computes the inverse of the special "matrix" returned by `makeCacheMatrix`. If the inverse has already been calculated (and the matrix has not changed), then `cacheSolve` retrieves the inverse from the cache.

Computing the inverse of a square matrix is done with the `solve` function in R. It is assumed that the matrix is always invertible.

#### Editing files and commiting to Github:
1. Start Git via GitBush (`$ git init`)**.
2. Change working directory (`$ cd working_directory`).
3. Fork the GitHub repository [https://github.com/rdpeng/ProgrammingAssignment2](https://github.com/rdpeng/ProgrammingAssignment2) to create a copy in personal account.
2. Clone forked GitHub repository to local computer (`$ git clone https://github.com/Coursera2015/ProgrammingAssignment2`).
3. Edit the R files `cachematrix.R` and `README.md` in RStudio accoding to task.
4. Add files into git repository (`$ git add --all`).
5. Commit new files to git (`$ git commit -m "Last version"`).
6. Push local repository to remote GitHub (`$ git push`).

** You can download Git software here: [http://git-scm.com/](http://git-scm.com/).