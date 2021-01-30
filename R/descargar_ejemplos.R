
#' Descargar ejemplos al directorio de trabajo
#'
#' El paquete liftún incluye archivos en diversos formatos
#' para practicar la limpieza y transformación de datos.
#' Esta función permite descargar esos archivos al
#' directorio de trabajo para poder utilizar las
#' funciones de importación de datos que correspondan.
#'
#' @param nombre_archivo Nombre del archivo que se quiere
#' descargar al directorio de trabajo (incluyendo su extensión).
#' Si no se indica el nombre de un archivo, se imprimirá en la
#' consola la lista de archivos disponibles en ese directorio.
#'
#' @export
#'
#' @examples
#' descargar_ejemplo("visitas_snaspe.xlsx")
descargar_ejemplo <- function(nombre_archivo = NULL) {
  if (is.null(nombre_archivo)) {
    dir(system.file("extdata", package = "liftun"))
  } else {
    ruta_archivo <- system.file("extdata", nombre_archivo, package = "liftun", mustWork = TRUE)
    directorio_trabajo <- getwd()
    file.copy(ruta_archivo, directorio_trabajo)
  }
}
