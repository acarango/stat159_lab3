range_value <- function(x, na.rm=c('TRUE','FALSE')) {
if (na.rm='TRUE') {
  x <- na.omit(x)
  max(x) - min(x)
} else {
  max(x) - min(x)
}
}
