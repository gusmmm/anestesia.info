# analise das colunas com mais de uma informaçao por celula
# separador de informaçao: ,

### FUNÇAO ###
# cria tabela com 2 colunas
# primeira coluna: id
# segunda coluna: conceito

# INPUTS
# ficheiro de dados - fd
# coluna - string entre ""
# separador - string entre "" - default é ","
# OUTPUT
# data frame com 2 colunas: id e conceito


f_tab_id_conceito <- function(fic_dados,coluna,sep=",|\\+"){
  
  #coluna
  
  print(fic_dados$id)
  print(coluna)
  
  
  cc <- fic_dados[,coluna]
  cc <- unlist(cc)
  print(cc)
  
  # cria uma tabela com 2 colunas
  # id - tirado do fd$id
  # info - tirado da coluna
  
  a <- str_split(cc,sep)
  b <- fic_dados$id
  print(a)
  print(b)
  
  
  for(i in b){
    
    print(i)
    
    for(j in a[[i]]){
      
      print(j)
      
      if(exists("tabela")){
        tabela <- bind_rows(tabela,data.frame(i,j))
      } else{
        tabela <- data.frame(i,j)
      }
      
    }
    tabela$j <- str_trim(tabela$j)
    
  }
  names(tabela) <- c("id","conceito")
  return(tabela)
  
}
