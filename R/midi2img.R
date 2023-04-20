

midi2img <- function(f) {

  png_name <- paste0(tools::file_path_sans_ext(f), '.png')

  system2("/Applications/MuseScore 3.app/Contents/MacOS/mscore",
          args = c(paste0('-o ', png_name),
                   '--trim-image 0',
                   f))
}
