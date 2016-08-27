# vai buscar o ficheiro google sheets com a regex da cirurgia
# usa o package googlesheets

link <- "https://docs.google.com/spreadsheets/d/1JWhsMqdOQq2b8bQnQW_atkTpOwqzTWfGXInOCsxVCXc/edit?usp=sharing"
gap <- gs_url(link)
# grava o objecto chamado patologia_regex
gap %>% gs_read(ws=1) -> cirurgia_regex
rm(gap)
rm(link)