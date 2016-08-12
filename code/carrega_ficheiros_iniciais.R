# ficheiros primarios para iniciar o projecto

# ficheiro com os dados originais - fd
fd <- paste0(dd,list.files(dd))[1]
fd <- read_excel(fd)
source(paste0(dp,"/code/prepara_fd.R"))

# grava o objecto fd no directorio dados - fd.Rdata
save(fd,file = paste0(do,"fd.Rdata"))