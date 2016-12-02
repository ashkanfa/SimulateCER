
################################################
# colClasses returns the classes of each column 
# in a data frame
################################################

colClasses <- function(.df) {  
  
  .cols <- rep(NA, length(.df[1,]) )
  .class <- rep(NA, length(.df[1,]) )
  
  for (.col in 1:length(.df[1,]) ) {
    .cols[.col] <- names(.df)[.col]
    .class[.col] <- class(.df[[.col]])
  }
  return(data.frame(col = .cols, class = .class, stringsAsFactors = F) )
}
