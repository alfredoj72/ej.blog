#- para guardar un plot de un post

#- para guardar el plot
name_of_plot <- "plot_nn_muni_censo.png"
path_file <- rstudioapi::getSourceEditorContext()$path %>% 
  stringr::str_remove(., "/[^/]+$") %>% paste0(., "/imagenes/", name_of_plot)

ggsave(p, filename = path_file,
       device = "png", width = 32, height = 20, units = "cm")
