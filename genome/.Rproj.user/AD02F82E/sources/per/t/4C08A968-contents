library(stringr)

genomeTypes <- c('T', 'A', 'C', 'G')

randomDna <- function(length){
  return (sample(genomeTypes, length, replace = TRUE))
}

formatLineCounter <- function (lineNumber){
  return (paste(str_pad(lineNumber, 6, pad = "0"), " "))
}

dna2file <- function(filename, dna) {
  if (file.exists(filename)) file.remove(filename)
  pos <- 0
  posEOL <- 0
  lineNumber <- 1
  cat(formatLineCounter(lineNumber), file=filename, append=TRUE)
  for (i in dna) {
    if(posEOL == 6){
      cat('\n', file=filename, append=TRUE)
      lineNumber <- lineNumber + 60
      cat(formatLineCounter(lineNumber), file=filename, append=TRUE)
      posEOL <- 0
    } else {
      cat(i, file=filename, append=TRUE)
      if(pos == 9){
        cat(' ', file=filename, append=TRUE)
        pos <- 0
        posEOL <- posEOL + 1
      } else {
        pos <- pos + 1
      }
    }
  }
}

dna2file("genome.txt", randomDna(650))
