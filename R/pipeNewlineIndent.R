#' Insert ' %<% newline'.
#'
#' Call this function as an addin to insert a pipe and newline at the cursor position.
#' @export
#'
pipeNewlineIndent <- function(){

  context <- rstudioapi::getActiveDocumentContext()
  context_row <- context$selection[[1]]$range$end["row"]
  indent_context <- regexec(pattern = "\\w", context$contents[context_row])[[1]][1]-1 #match pos of the first word -1
  if(indent_context < 0 )indent_context <- nchar(context$contents[context_row]) #we found only whitespace, stay at this level.
  if(indent_context == 0)indent_context <- 2 #we are at 0 indent, this is the only time we want to add indent with %>%

  if(sum(context$selection[[1]]$range$end -
         context$selection[[1]]$range$start) > 0){
    #Non-empy selection. Just insert the pipe and newline.
    rstudioapi::insertText(paste0("%>%\n", strrep(" ",indent_context)))
  }else{
    if(grepl(pattern = '\\s$', context$contents[context_row])){
      #Empty selection. If the last char of the line is a space do not insert one.
      rstudioapi::insertText(paste0("%>%\n", strrep(" ",indent_context)))
    }
    else{
      #Insert a space
      rstudioapi::insertText(paste0(" %>%\n", strrep(" ",indent_context)))
    }
  }
}
