# mufflr: Making your pipes quieter.

So far this package contains two RStudio addins that allow you to assign keyboard shortcuts to:

* `<space if needed> <- <newline><indent>`
* `<space if needed> %>% <newline><indent>`


I'm still experiemnting with the best key combos. I suggest `CTRL ,` and `CTRL .` respectively (relating to `<` and `>`). This is proving pretty addictive so far.

The main advantage of developing these as addins is that the editor API can be used to get the correct indent level. The indent follows the expectations set by the RStudio auto-indent feature - so you won't notice or appreciate the work being done :P

Enjoy!

##Installation
1. Get the package: `devtools::install_github("milesmcbain/mufflr")`
2. Set the keyboard shortcuts using **Tools** -> **Addins** -> **Browse Addins**, then click **Keyboard Shortcuts...**

##Usage
![Vrroom!](https://raw.githubusercontent.com/milesmcbain/mufflr/master/inst/media/mufflr.gif)
