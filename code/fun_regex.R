# funçao que cria uma coluna com os conceitos finais usando regex - hits

f_cria_coluna_hits <- function(conceito,expreg,expressao){

  hits <- c()
  
  for(i in expressao){
    print(i)
    
    # no caso de i ser um NA
    if(is.na(i)) {
      bb <- NA
      hits <- append(hits,bb)
      next
    }
   
    
    sapply(expreg,function(x) str_detect(i, x)) -> bb
    bb <- unname(bb)
    bb <- conceito[bb]
    
    bb <- paste(bb, collapse = " : ")
    
    hits <- append(hits,bb)
    
  }
  
  return(hits)
  
  
}