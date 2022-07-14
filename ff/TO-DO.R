#- cosas q tengo q resolver:

# 1) ---------------
# hacer que los posts ejecuten código de un source (OK)
#- pero en realidad lo q quiero es q en el .qmd se pueda coger la ruta del fichero que se esta ejecutando, eso es mas complicado xq al knittear (en realidad al quartear) el pkg rstudioapi:: no se esta ejecutando

my_script <- "02_script_crear-tabla-01.R" 
path_file <- rstudioapi::getSourceEditorContext()$path |>
  stringr::str_remove(string = _, "/[^/]+$") 
path_file <- paste0(path_file ,  my_script)

source(path_file, local = knitr::knit_global())
sys.source(path_file, envir = knitr::knit_global())


#- 2) refrenciar bien las tablas ----------------------------------------------