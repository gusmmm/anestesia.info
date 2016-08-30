# vai buscar o ficheiro google sheets com a regex da ALR
# usa o package googlesheets

link <- "https://docs.google.com/spreadsheets/d/16o2PBtixpSE5qMb-nl9PbKfTGMnQOQg07lO7lpzqm7A/edit?usp=sharing"
gap <- gs_url(link)
# grava o objecto chamado patologia_regex
gap %>% gs_read(ws=1) -> ALR_regex
ALR_regex$idx <- 1:nrow(ALR_regex)
rm(gap)
rm(link)
