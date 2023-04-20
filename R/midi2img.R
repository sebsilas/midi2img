



#' Convert a midi file to an image of its sheet music
#'
#' @param f
#'
#' @return
#' @export
#'
#' @examples
midi2img <- function(f) {

  png_name <- paste0(tools::file_path_sans_ext(f), '.png')

  system2(Sys.getenv("MUSESCORE_LOCATION"),
          args = c(paste0('-o ', png_name),
                   '--trim-image 0',
                   f))
}
