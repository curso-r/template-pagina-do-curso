# mudar o yaml do arquivo .Rmd -------------
CursoRopen::change_rmd_yaml(
  "README.Rmd",
  params = list(
    main_repo = Sys.getenv("MAIN_REPO"),
    turma = Sys.getenv("TURMA"),
    nome_curso = Sys.getenv("NOME_CURSO"),
    num_aula = "0",
    download_material = Sys.getenv("DOWNLOAD_MATERIAL")
  )
) %>%
  writeLines("README.Rmd")


# render o arquivo --------------

rmarkdown::render(
  input = "README.Rmd",
  output_format = "github_document",
  clean = TRUE,
  output_file = "README.md"

)
