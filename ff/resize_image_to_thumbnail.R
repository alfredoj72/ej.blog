#- script para hacer un resize de las imagenes de los posts
#- las fotos de los post de ejemplos eran de 640x426

#- para hacer imagenes: https://www.craiyon.com/    https://huggingface.co/spaces/dalle-mini/dalle-mini

#- cojo el post mas moderno (x fecha)
carpetas_de_posts <- fs::dir_ls(here::here("posts"), type = "directory")
carpeta <- carpetas_de_posts[length(carpetas_de_posts)] #- la ruta a la carpeta más moderna

img <-  magick::image_read(here::here(carpeta, "imagenes", "imagen.png"))
img_resized <- img |> magick::image_scale("640x426!")

#- guardo la foto reescalada a 640x427
magick::image_write(img_resized, here::here(carpeta, "imagenes", "thumbnail.png"))
