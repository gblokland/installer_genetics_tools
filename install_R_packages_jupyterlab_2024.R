#Show where libraries are located:
.libPaths()
.libPaths( c("/usr/lib/R/library", "/usr/local/lib/R/site-library", "/ricopili/dependencies/R_packages", .libPaths() ) )
options('repos'="https://cran.rstudio.com/")
options('repos')
#setwd("~/code/R_packages")
setwd("/root/persistent/code/R_packages")
if (!require("calibrate", character.only = TRUE, quietly = TRUE)){
  #install.packages("calibrate", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/calibrate/calibrate_1.7.2.tar.gz")
  install.packages("calibrate_1.7.2.tar.gz", repos=NULL, quiet = F)
  suppressMessages(library(calibrate))
}

if (!require("rlang", character.only = TRUE, quietly = TRUE)){
  #install.packages("rlang", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/rlang/rlang_1.0.6.tar.gz")
  install.packages("rlang_1.0.6.tar.gz", repos=NULL, quiet = F)
  suppressMessages(library(rlang))
}

if (!require("glue", character.only = TRUE, quietly = TRUE)){
  #install.packages("glue", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/glue/glue_1.3.1.tar.gz")
  #install.packages("glue_1.3.1.tar.gz", repos=NULL, quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/glue/glue_1.3.2.tar.gz")
  install.packages("glue_1.3.2.tar.gz", repos=NULL, quiet = F)
  suppressMessages(library(glue))
}

if (!require("lifecycle", character.only = TRUE, quietly = TRUE)){
  #install.packages("lifecycle", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/lifecycle/lifecycle_1.0.0.tar.gz")
  install.packages("lifecycle_1.0.0.tar.gz", repos=NULL, quiet = F)
  suppressMessages(library(lifecycle))
}

if (!require("foreign", character.only = TRUE, quietly = TRUE)){
  #install.packages("foreign", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/foreign/foreign_0.8-70.tar.gz")
  install.packages("foreign_0.8-70.tar.gz", repos=NULL, quiet = F)
  suppressMessages(library(foreign))
}

if (!require("RColorBrewer", character.only = TRUE, quietly = TRUE)){
  install.packages("RColorBrewer", quiet = F)
  suppressMessages(library(RColorBrewer))
}

if (!require("data.table", character.only = TRUE, quietly = TRUE)){
  install.packages("data.table", quiet = F)
  suppressMessages(library(data.table))
}

if (!require("gtools", character.only = TRUE, quietly = TRUE)){
  install.packages("gtools", quiet = F)
  suppressMessages(library(gtools))
}

if (!require("gdata", character.only = TRUE, quietly = TRUE)){
  install.packages("gdata", quiet = F)
  suppressMessages(library(gdata))
}

if (!require("crayon", character.only = TRUE, quietly = TRUE)){
  #install.packages("crayon", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/crayon/crayon_1.5.0.tar.gz")
  install.packages("crayon_1.5.0.tar.gz", repos=NULL, quiet = F)
  suppressMessages(library(crayon))
}

if (!require("assertthat", character.only = TRUE, quietly = TRUE)){
  #install.packages("assertthat", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/assertthat_0.2.1.tar.gz")
  install.packages("assertthat_0.2.1.tar.gz", repos=NULL, quiet = F)
  suppressMessages(library(assertthat))
}

if (!require("cli", character.only = TRUE, quietly = TRUE)){
  #install.packages("cli", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/cli/cli_1.1.0.tar.gz")
  #system("wget https://cran.r-project.org/src/contrib/Archive/cli/cli_2.3.0.tar.gz")
  #system("wget https://cran.r-project.org/src/contrib/Archive/cli/cli_3.0.0.tar.gz")
  install.packages("cli_3.0.0.tar.gz", repos=NULL, quiet = F)
  suppressMessages(library(cli))
}

if (!require("vctrs", character.only = TRUE, quietly = TRUE)){
  #install.packages("vctrs", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/vctrs/vctrs_0.5.0.tar.gz")
  install.packages("vctrs_0.5.0.tar.gz", repos=NULL, quiet = F)
  suppressMessages(library(vctrs))
}

if (!require("gtable", character.only = TRUE, quietly = TRUE)){
  #install.packages("gtable", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/gtable/gtable_0.3.0.tar.gz")
  install.packages("gtable_0.3.0.tar.gz", repos=NULL, quiet = F)
  suppressMessages(library(gtable))
}
if (!require("lazyeval", character.only = TRUE, quietly = TRUE)){
  install.packages("lazyeval", quiet = F)
  suppressMessages(library(lazyeval))
}

if (!require("magrittr", character.only = TRUE, quietly = TRUE)){
  install.packages("magrittr", quiet = F)
  suppressMessages(library(magrittr))
}

if (!require("stringi", character.only = TRUE, quietly = TRUE)){
  install.packages("stringi", quiet = F)
  suppressMessages(library(stringi))
}

if (!require("stringr", character.only = TRUE, quietly = TRUE)){
  #install.packages("stringr", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/stringr/stringr_1.4.0.tar.gz")
  install.packages("stringr_1.4.0.tar.gz", repos=NULL, quiet = F)
  suppressMessages(library(stringr))
}
if (!require("reshape2", character.only = TRUE, quietly = TRUE)){
  install.packages("reshape2", quiet = F)
  suppressMessages(library(reshape2))
}

if (!require("fansi", character.only = TRUE, quietly = TRUE)){
  install.packages("fansi", quiet = F)
  suppressMessages(library(fansi))
}
if (!require("utf8", character.only = TRUE, quietly = TRUE)){
  #install.packages("utf8", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/utf8/utf8_1.2.2.tar.gz")
  install.packages("utf8_1.2.2.tar.gz", repos=NULL, quiet = F)
  suppressMessages(library(utf8))
}
if (!require("pillar", character.only = TRUE, quietly = TRUE)){
  #install.packages("pillar", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/pillar/pillar_1.8.1.tar.gz")
  install.packages("pillar_1.8.1.tar.gz", repos=NULL, quiet = F)
  suppressMessages(library(pillar))
}
if (!require("pkgconfig", character.only = TRUE, quietly = TRUE)){
  install.packages("pkgconfig", quiet = F)
  suppressMessages(library(pkgconfig))
}

if (!require("tibble", character.only = TRUE, quietly = TRUE)){
  #install.packages("tibble", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/tibble/tibble_2.1.3.tar.gz")
  install.packages("tibble_2.1.3.tar.gz", repos=NULL, quiet = F)
  suppressMessages(library(tibble))
}

if (!require("farver", character.only = TRUE, quietly = TRUE)){
  install.packages("farver", quiet = F)
  suppressMessages(library(farver))
}

if (!require("labeling", character.only = TRUE, quietly = TRUE)){
  install.packages("labeling", quiet = F)
  suppressMessages(library(labeling))
}

if (!require("munsell", character.only = TRUE, quietly = TRUE)){
  install.packages("munsell", quiet = F)
  suppressMessages(library(munsell))
}

if (!require("viridisLite", character.only = TRUE, quietly = TRUE)){
  install.packages("viridisLite", quiet = F)
  suppressMessages(library(viridisLite))
}

if (!require("R6", character.only = TRUE, quietly = TRUE)){
  #install.packages("R6", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/R6/R6_2.5.0.tar.gz")
  install.packages("R6_2.5.0.tar.gz", repos=NULL, quiet = F)
  suppressMessages(library(R6))
}
if (!require("scales", character.only = TRUE, quietly = TRUE)){
  #install.packages("scales", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/scales/scales_1.2.1.tar.gz")
  install.packages("scales_1.2.1.tar.gz", repos=NULL, quiet = F)
  suppressMessages(library(scales))
}
if (!require("withr", character.only = TRUE, quietly = TRUE)){
  #install.packages("withr", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/withr/withr_2.5.2.tar.gz")
  install.packages("withr_2.5.2.tar.gz", repos=NULL, quiet = F)
  suppressMessages(library(withr))
}
if (!require("digest", character.only = TRUE, quietly = TRUE)){
  install.packages("digest", quiet = F)
  suppressMessages(library(digest))
}

if (!require("ggplot2", character.only = TRUE, quietly = TRUE)){
  #install.packages('ggplot2', quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/ggplot2/ggplot2_3.2.0.tar.gz")
  install.packages("ggplot2_3.2.0.tar.gz", repos=NULL, quiet = F)
  suppressMessages(library(ggplot2))
}

if (!require("fastDummies", character.only = TRUE, quietly = TRUE)){
  install.packages('fastDummies', quiet = F)
  suppressMessages(library(fastDummies))
}

if (!require("plyr", character.only = TRUE, quietly = TRUE)){
  install.packages('plyr', quiet = F)
  suppressMessages(library(plyr))
}
if (!require("dplyr", character.only = TRUE, quietly = TRUE)){
  #system("wget https://cran.r-project.org/src/contrib/Archive/dplyr/dplyr_1.0.6.tar.gz")
  install.packages("generics", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/ellipsis/ellipsis_0.0.1.tar.gz")
  install.packages("ellipsis_0.0.1.tar.gz", repos=NULL, quiet = F)
  install.packages("tidyselect", quiet = F)
  #install.packages("glue")
  install.packages('dplyr_1.0.6.tar.gz', repos=NULL, dependencies=T, quiet = F)
  suppressMessages(library(dplyr))
}

if (!require("getopt", character.only = TRUE, quietly = TRUE)){
  install.packages("getopt", quiet = F)
  suppressMessages(library(getopt))
}

if (!require("optparse", character.only = TRUE, quietly = TRUE)){
  #system("wget https://cran.r-project.org/src/contrib/Archive/optparse/optparse_1.6.4.tar.gz")
  install.packages("optparse_1.6.4.tar.gz", repos=NULL, dependencies = T, quiet = F)
  suppressMessages(library(optparse))
}

if (!require("psych", character.only = TRUE, quietly = TRUE)){
  install.packages("psych", quiet = F)
  suppressMessages(library(psych))
}

if (!require("crayon", character.only = TRUE, quietly = TRUE)){
  #install.packages("crayon", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/crayon/crayon_1.5.0.tar.gz")
  install.packages("crayon_1.5.0.tar.gz", repos=NULL, dependencies = T, quiet = F)
  suppressMessages(library(crayon))
}

if (!require("cpp11", character.only = TRUE, quietly = TRUE)){
  #install.packages("cpp11", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/cpp11/cpp11_0.4.3.tar.gz")
  install.packages("cpp11_0.4.3.tar.gz", repos=NULL, dependencies = T, quiet = F)
  suppressMessages(library(cpp11))
}
if (!require("bit", character.only = TRUE, quietly = TRUE)){
  #install.packages("bit", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/bit/bit_1.1-14.tar.gz")
  install.packages("bit_1.1-14.tar.gz", repos=NULL, dependencies = T, quiet = F)
  suppressMessages(library(bit))
}
if (!require("bit64", character.only = TRUE, quietly = TRUE)){
  #install.packages("bit64", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/bit64/bit64_0.9-7.tar.gz")
  install.packages("bit64_0.9-7.tar.gz", repos=NULL, dependencies = T, quiet = F)
  suppressMessages(library(bit64))
}
if (!require("hms", character.only = TRUE, quietly = TRUE)){
  #install.packages("hms", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/hms/hms_0.4.2.tar.gz")
  install.packages("hms_0.4.2.tar.gz", repos=NULL, dependencies = T, quiet = F)
  suppressMessages(library(hms))
}
if (!require("tzdb", character.only = TRUE, quietly = TRUE)){
  #install.packages("tzdb", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/tzdb/tzdb_0.1.1.tar.gz")
  install.packages("tzdb_0.1.1.tar.gz", repos=NULL, dependencies = T, quiet = F)
  suppressMessages(library(tzdb))
}
if (!require("assertthat", character.only = TRUE, quietly = TRUE)){
  #install.packages("assertthat", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/assertthat/assertthat_0.2.0.tar.gz")
  install.packages("assertthat_0.2.0.tar.gz", repos=NULL, dependencies = T, quiet = F)
  suppressMessages(library(assertthat))
}
if (!require("prettyunits", character.only = TRUE, quietly = TRUE)){
  #install.packages("prettyunits", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/prettyunits/prettyunits_1.0.2.tar.gz")
  install.packages("prettyunits_1.0.2.tar.gz", repos=NULL, dependencies = T, quiet = F)
  suppressMessages(library(prettyunits))
}
if (!require("progress", character.only = TRUE, quietly = TRUE)){
  #install.packages("progress", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/progress/progress_1.2.1.tar.gz")
  install.packages("progress_1.2.1.tar.gz", repos=NULL, dependencies = T, quiet = F)
  suppressMessages(library(progress))
}
if (!require("vroom", character.only = TRUE, quietly = TRUE)){
  #install.packages("vroom", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/vroom/vroom_1.6.0.tar.gz")
  install.packages("vroom_1.6.0.tar.gz", repos=NULL, dependencies = T, quiet = F)
  suppressMessages(library(vroom))
}
if (!require("clipr", character.only = TRUE, quietly = TRUE)){
  install.packages("clipr", quiet = F)
  suppressMessages(library(clipr))
}
if (!require("readr", character.only = TRUE, quietly = TRUE)){
  #install.packages("readr", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/readr/readr_2.1.2.tar.gz")
  install.packages("readr_2.1.2.tar.gz", repos=NULL, dependencies = T, quiet = F)
  suppressMessages(library(readr))
}
if (!require("forcats", character.only = TRUE, quietly = TRUE)){
  #install.packages("forcats", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/forcats/forcats_0.4.0.tar.gz")
  install.packages("forcats_0.4.0.tar.gz", repos=NULL, dependencies = T, quiet = F)
  suppressMessages(library(forcats))
}
if (!require("haven", character.only = TRUE, quietly = TRUE)){
  #install.packages("haven", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/haven/haven_2.5.0.tar.gz")
  install.packages("haven_2.5.0.tar.gz", repos=NULL, dependencies = T, quiet = F)
  suppressMessages(library(haven))
}

if (!require("remotes", character.only = TRUE, quietly = TRUE)){
  #install.packages("remotes", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/remotes/remotes_2.4.2.tar.gz")
  install.packages("remotes_2.4.2.tar.gz", repos=NULL, dependencies = T, quiet = F)
  suppressMessages(library(remotes))
}

runif<-"FALSE"
if (runif==TRUE) {
  #system("wget https://cran.r-project.org/src/contrib/Archive/evaluate/evaluate_0.19.tar.gz")
  install.packages("evaluate_0.19.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/highr/highr_0.9.tar.gz")
  install.packages("highr_0.9.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/xfun/xfun_0.39.tar.gz")
  install.packages("xfun_0.39.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/yaml/yaml_2.3.6.tar.gz")
  install.packages("yaml_2.3.6.tar.gz", repos=NULL, dependencies = T, quiet = F)
}

if (!require("knitr", character.only = TRUE, quietly = TRUE)){
  #install.packages("remotes", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/knitr/knitr_1.45.tar.gz")
  install.packages("knitr_1.45.tar.gz", repos=NULL, dependencies = T, quiet = F)
  suppressMessages(library(remotes))
}


if (runif==TRUE) {
  #system("wget https://cran.r-project.org/src/contrib/Archive/xml2/xml2_1.3.3.tar.gz")
  install.packages("xml2_1.3.3.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/curl/curl_4.3.tar.gz")
  install.packages("curl_4.3.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/httr/httr_1.4.4.tar.gz")
  install.packages("httr_1.4.4.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/selectr/selectr_0.4-1.tar.gz")
  install.packages("selectr_0.4-1.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/rvest/rvest_1.0.3.tar.gz")
  install.packages("rvest_1.0.3.tar.gz", repos=NULL, dependencies = T, quiet = F)
  
  #system("wget https://cran.r-project.org/src/contrib/Archive/fs/fs_1.5.2.tar.gz")
  install.packages("fs_1.5.2.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/sass/sass_0.4.4.tar.gz")
  install.packages("sass_0.4.4.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/bslib/bslib_0.4.2.tar.gz")
  install.packages("bslib_0.4.2.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/rmarkdown/rmarkdown_2.19.tar.gz")
  install.packages("rmarkdown_2.19.tar.gz", repos=NULL, dependencies = T, quiet = F)
  
  #system("wget https://cran.r-project.org/src/contrib/Archive/htmltools/htmltools_0.5.4.tar.gz")
  install.packages("htmltools_0.5.4.tar.gz", repos=NULL, dependencies = T, quiet = F)
  
  #system("wget https://cran.r-project.org/src/contrib/Archive/rstudioapi/rstudioapi_0.14.tar.gz")
  install.packages("rstudioapi_0.14.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/ps/ps_1.7.2.tar.gz")
  install.packages("ps_1.7.2.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/processx/processx_3.8.0.tar.gz")
  install.packages("processx_3.8.0.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/callr/callr_3.7.3.tar.gz")
  install.packages("callr_3.7.3.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/webshot/webshot_0.5.4.tar.gz")
  install.packages("webshot_0.5.4.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/svglite/svglite_2.1.0.tar.gz")
  install.packages("svglite_2.1.0.tar.gz", repos=NULL, dependencies = T, quiet = F)
  
  #system("wget https://cran.r-project.org/src/contrib/Archive/highr/highr_0.9.tar.gz")
  install.packages("highr_0.9.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/xfun/xfun_0.39.tar.gz")
  install.packages("xfun_0.39.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/yaml/yaml_2.3.6.tar.gz")
  install.packages("yaml_2.3.6.tar.gz", repos=NULL, dependencies = T, quiet = F)
}

if (!require("kableExtra", character.only = TRUE, quietly = TRUE)){
  #install.packages("remotes", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/kableExtra/kableExtra_1.3.4.tar.gz")
  #install.packages("kableExtra_1.3.4.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #remotes::install_github("haozhu233/kableExtra")
  #Installing 7 packages: sass, memoise, jquerylib, cachem, fontawesome, bslib, rmarkdown
  #system("wget https://cloud.r-project.org/src/contrib/htmltools_0.5.8.1.tar.gz")
  #system("wget https://cloud.r-project.org/src/contrib/sass_0.4.9.tar.gz")
  #system("wget https://cloud.r-project.org/src/contrib/memoise_2.0.1.tar.gz")
  #system("wget https://cloud.r-project.org/src/contrib/jquerylib_0.1.4.tar.gz")
  #system("wget https://cloud.r-project.org/src/contrib/cachem_1.1.0.tar.gz")
  #system("wget https://cloud.r-project.org/src/contrib/fontawesome_0.5.3.tar.gz")
  #system("wget https://cloud.r-project.org/src/contrib/bslib_0.8.0.tar.gz")
  #system("wget https://cloud.r-project.org/src/contrib/rmarkdown_2.29.tar.gz")
  remotes::install_github("haozhu233/kableExtra")
  suppressMessages(library(remotes))
}

#if (!require("devtools", character.only = TRUE)){
#    install.packages("devtools")
#    suppressMessages(library(devtools))
#}

#remotes::install_github('tidyverse/googledrive')
#remotes::install_github('tidyverse/googlesheets4')
#remotes::install_github('tidyverse/dplyr')
#remotes::install_github('tidyverse/design')
#remotes::install_github('tidyverse/ggplot2')
#remotes::install_github('tidyverse/dsbox')
#remotes::install_github('tidyverse/tidyr')
#remotes::install_github('tidyverse/dbplyr')
#remotes::install_github('tidyverse/tibble')
#remotes::install_github('tidyverse/readr')

if (runif==TRUE) {
  #Skipping 3 packages not available: cpp11, lifecycle, xml2
  #Installing 8 packages: sys, textshaping, askpass, zip, uuid, ragg, openssl, cli
  #system("wget https://cran.rstudio.com/src/contrib/sys_3.4.3.tar.gz")
  install.packages("sys_3.4.3.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.rstudio.com/src/contrib/textshaping_0.4.1.tar.gz")
  install.packages("textshaping_0.4.1.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.rstudio.com/src/contrib/askpass_1.2.1.tar.gz")
  install.packages("askpass_1.2.1.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.rstudio.com/src/contrib/zip_2.3.1.tar.gz")
  install.packages("zip_2.3.1.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.rstudio.com/src/contrib/uuid_1.2-1.tar.gz")
  install.packages("uuid_1.2-1.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.rstudio.com/src/contrib/ragg_1.3.3.tar.gz")
  install.packages("ragg_1.3.3.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.rstudio.com/src/contrib/openssl_2.3.0.tar.gz")
  install.packages("openssl_2.3.0.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.rstudio.com/src/contrib/cli_3.6.3.tar.gz")
  install.packages("cli_3.6.3.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #Installing 4 packages: fontLiberation, fontBitstreamVera, htmltools, fontquiver
  #system("wget https://cran.rstudio.com/src/contrib/fontLiberation_0.1.0.tar.gz")
  install.packages("fontLiberation_0.1.0.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.rstudio.com/src/contrib/fontBitstreamVera_0.1.1.tar.gz")
  install.packages("fontBitstreamVera_0.1.1.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.rstudio.com/src/contrib/htmltools_0.5.8.1.tar.gz")
  install.packages("htmltools_0.5.8.1.tar.gz", repos=NULL, dependencies = T, quiet = F)
  #system("wget https://cran.rstudio.com/src/contrib/fontquiver_0.2.1.tar.gz")
  install.packages("fontquiver_0.2.1.tar.gz", repos=NULL, dependencies = T, quiet = F)
}

if (!require("officer", character.only = TRUE, quietly = TRUE)){
  #system("wget https://cran.r-project.org/src/contrib/Archive/officer/officer_0.5.0.tar.gz")
  #install.packages("officer_0.5.0.tar.gz", repos=NULL, dependencies = T, quiet = F)
  remotes::install_github("davidgohel/officer")
  suppressMessages(library(officer))
}
if (!require("gdtools", character.only = TRUE, quietly = TRUE)){
  #system("wget https://cran.r-project.org/src/contrib/Archive/gdtools/gdtools_0.2.4.tar.gz")
  #install.packages("gdtools_0.2.4.tar.gz", repos=NULL, dependencies = T, quiet = F)
  remotes::install_github("davidgohel/gdtools")
  suppressMessages(library(gdtools))
  #ERROR: this R is version 3.4.4, package 'gdtools' requires R >= 4.0.0
}
if (!require("flextable", character.only = TRUE, quietly = TRUE)){
  #install.packages("flextable", quiet = F)
  #system("wget https://cran.r-project.org/src/contrib/Archive/flextable/flextable_0.8.3.tar.gz")
  #install.packages("flextable_0.8.3.tar.gz", repos=NULL, dependencies = T, quiet = F)
  remotes::install_github("davidgohel/flextable")
  suppressMessages(library(remotes))
}
