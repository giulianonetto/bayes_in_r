library(tidyverse)

n <- 15
n_conditions <- 5
group_means <- c(4.05, 4.1, 3.35, 2.95, 2.15)
grupos_unicos <- c("Controle", paste0("Tratamento ", 1:4))
set.seed(51)
virus <-
  tibble(
    grupo = factor(rep(grupos_unicos, n), levels = grupos_unicos),
    carga_viral = rnorm(n * n_conditions, group_means, 1.05)
  )
write_tsv(virus,"data/virus.tsv")

