genomeTypes <- c('T', 'A', 'C', 'G')

randomDna <- function(length){
  return (sample(genomeTypes, length, replace = TRUE))
}

dna2file <- function(filename, dna) {
  if (file.exists(filename)) file.remove(filename)
  pos <- 0
  posEOL <- 0
  for (i in dna) {
    if(posEOL == 6){
      cat('\n', file=filename, append=TRUE)
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

print(dna2file("genome.txt", randomDna(230)))
