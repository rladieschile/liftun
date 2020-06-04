
ranking_peliculas <- readr::read_csv("https://raw.githubusercontent.com/cienciadedatos/datos-de-miercoles/master/datos/2020/2020-02-19/ranking_imdb.csv")

readr::write_csv(ranking_peliculas, "data-raw/ranking_peliculas.csv")

usethis::use_data(ranking_peliculas, overwrite = TRUE)
