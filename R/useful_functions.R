#' @name Useful_functions
#' @aliases weighted_mean 
#' @aliases weighted_sd 
#' 
#' @title weighted mean and sd
#' 
#' @description just weighted mean and sd.  
#' 
#' @param x vector to compute the mean over.
#' @param w a vector of same length with the weigths of each element.
#' 
#' @return a value with the weighted mean or sd.
#'
#' @examples 
#' weighted_mean(c(2,3,4), c(1,1,2))
#' weighted_sd(c(2,3,4), c(1,1,2))
#' 
#' @rdname Useful_functions 
#' @export
weighted_mean <- function(x, w) { 
  sum.w <- sum(w) 
  sum(x * w) / sum(w) 
} 
#' @export 
weighted_sd <- function(x, w) { 
  sum.w <- sum(w) 
  sum.w2 <- sum(w^2) 
  mean.w <- sum(x * w) / sum(w) 
  ((sum.w / (sum.w^2 - sum.w2)) * sum(w * (x - mean.w)^2))^0.5
} 

