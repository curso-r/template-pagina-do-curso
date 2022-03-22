CursoRopen::change_rmd_yaml(
  "README.Rmd",
  params = list(
    main_repo = Sys.getenv("MAIN_REPO"),
    trilha_clean = Sys.getenv("TRILHA_CLEAN"),
    turma = Sys.getenv("TURMA"),
    nome_curso = Sys.getenv("NOME_CURSO"),
    num_aula = "0",
    download_material = Sys.getenv("DOWNLOAD_MATERIAL")
  ),
  new_path = "README.Rmd"
)

rmarkdown::render(
  input = "README.Rmd",
  output_format = "github_document",
  clean = TRUE,
  output_file = "README.md"
)
