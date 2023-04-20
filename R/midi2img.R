



#' Convert a midi file to an image of its sheet music
#'
#' @param mscore_location
#' @param f
#'
#' @return
#' @export
#'
#' @examples
midi2img <- function(mscore_location = '/Applications/MuseScore 3.app/Contents/MacOS/mscore', f) {

  png_name <- paste0(tools::file_path_sans_ext(f), '.png')

  system2(mscore_location,
          args = c(paste0('-o ', png_name),
                   '--trim-image 0',
                   f))
}
