#Show where libraries are located:
.libPaths()
.libPaths( c("/usr/lib/R/library", "/usr/local/lib/R/site-library", "/ricopili/dependencies/R_packages", .libPaths() ) )
options('repos'="https://cran.rstudio.com/")
options('repos')
#setwd("~/code/R_packages")
setwd("/root/persistent/opt/R_packages")

install_from_cran <- TRUE

if (!require("calibrate", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("calibrate", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/calibrate/calibrate_1.7.2.tar.gz")
    install.packages("calibrate_1.7.2.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(calibrate))
}

if (!require("rlang", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("rlang", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/rlang/rlang_1.0.6.tar.gz")
    install.packages("rlang_1.0.6.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(rlang))
}

if (!require("glue", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("glue", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/glue/glue_1.3.2.tar.gz")
    install.packages("glue_1.3.2.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(glue))
}

if (!require("lifecycle", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("lifecycle", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/lifecycle/lifecycle_1.0.0.tar.gz")
    install.packages("lifecycle_1.0.0.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(lifecycle))
}

if (!require("foreign", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("foreign", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/foreign/foreign_0.8-70.tar.gz")
    install.packages("foreign_0.8-70.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(foreign))
}

if (!require("RColorBrewer", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("RColorBrewer", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/RColorBrewer/RColorBrewer_1.1-2.tar.gz")
    install.packages("RColorBrewer_1.1-2.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(RColorBrewer))
}

if (!require("data.table", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("data.table", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/data.table/data.table_1.1-2.tar.gz")
    install.packages("data.table_1.1-2.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(data.table))
}

if (!require("gtools", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("gtools", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/gtools/gtools_1.1-2.tar.gz")
    install.packages("gtools_1.1-2.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(gtools))
}

if (!require("gdata", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("gdata", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/gdata/gdata_1.1-2.tar.gz")
    install.packages("gdata_1.1-2.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(gdata))
}

if (!require("crayon", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("crayon", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/crayon/crayon_1.5.0.tar.gz")
    install.packages("crayon_1.5.0.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(crayon))
}

if (!require("assertthat", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("assertthat", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/assertthat_0.2.1.tar.gz")
    install.packages("assertthat_0.2.1.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(assertthat))
}

if (!require("cli", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("cli", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/cli/cli_3.0.0.tar.gz")
    install.packages("cli_3.0.0.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(cli))
}

if (!require("vctrs", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("vctrs", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/vctrs/vctrs_0.5.0.tar.gz")
    install.packages("vctrs_0.5.0.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(vctrs))
}

if (!require("gtable", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("gtable", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/gtable/gtable_0.3.0.tar.gz")
    install.packages("gtable_0.3.0.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(gtable))
}

if (!require("lazyeval", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("lazyeval", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/lazyeval/lazyeval_1.4.0.tar.gz")
    install.packages("lazyeval_1.4.0.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(lazyeval))
}

if (!require("magrittr", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("magrittr", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/magrittr/magrittr_1.4.0.tar.gz")
    install.packages("magrittr_1.4.0.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(magrittr))
}

if (!require("stringi", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("stringi", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/stringi/stringi_1.4.0.tar.gz")
    install.packages("stringi_1.4.0.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(stringi))
}

if (!require("stringr", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("stringr", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/stringr/stringr_1.4.0.tar.gz")
    install.packages("stringr_1.4.0.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(stringr))
}

if (!require("reshape2", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("reshape2", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/reshape2/reshape2_1.4.0.tar.gz")
    install.packages("reshape2_1.4.0.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(reshape2))
}

if (!require("fansi", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("fansi", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/fansi/fansi_1.4.0.tar.gz")
    install.packages("fansi_1.4.0.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(fansi))
}

if (!require("utf8", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("utf8", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/utf8/utf8_1.2.2.tar.gz")
    install.packages("utf8_1.2.2.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(utf8))
}

if (!require("pillar", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("pillar", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/pillar/pillar_1.8.1.tar.gz")
    install.packages("pillar_1.8.1.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(pillar))
}

if (!require("pkgconfig", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("pkgconfig", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/pkgconfig/pkgconfig_1.8.1.tar.gz")
    install.packages("pkgconfig_1.8.1.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(pkgconfig))
}

if (!require("tibble", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("tibble", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/tibble/tibble_2.1.3.tar.gz")
    install.packages("tibble_2.1.3.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(tibble))
}

if (!require("farver", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("farver", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/farver/farver_2.1.3.tar.gz")
    install.packages("farver_2.1.3.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(farver))
}

if (!require("labeling", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("labeling", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/labeling/labeling_2.1.3.tar.gz")
    install.packages("labeling_2.1.3.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(labeling))
}

if (!require("munsell", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("munsell", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/munsell/munsell_2.1.3.tar.gz")
    install.packages("munsell_2.1.3.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(munsell))
}

if (!require("viridisLite", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("viridisLite", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/viridisLite/viridisLite_2.1.3.tar.gz")
    install.packages("viridisLite_2.1.3.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(viridisLite))
}

if (!require("R6", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("R6", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/R6/R6_2.5.0.tar.gz")
    install.packages("R6_2.5.0.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(R6))
}

if (!require("scales", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("scales", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/scales/scales_1.2.1.tar.gz")
    install.packages("scales_1.2.1.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(scales))
}

if (!require("withr", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("withr", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/withr/withr_2.5.2.tar.gz")
    install.packages("withr_2.5.2.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(withr))
}

if (!require("digest", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("digest", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/digest/digest_3.2.0.tar.gz")
    install.packages("digest_3.2.0.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(digest))
}

if (!require("ggplot2", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages('ggplot2', quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/ggplot2/ggplot2_3.2.0.tar.gz")
    install.packages("ggplot2_3.2.0.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(ggplot2))
}

if (!require("fastDummies", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages('fastDummies', quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/fastDummies/fastDummies_3.2.0.tar.gz")
    install.packages("fastDummies_3.2.0.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(fastDummies))
}

if (!require("plyr", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages('plyr', quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/plyr/plyr_3.2.0.tar.gz")
    install.packages("plyr_3.2.0.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(plyr))
}

if (!require("dplyr", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("dplyr", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/dplyr/dplyr_1.0.6.tar.gz")
    install.packages('dplyr_1.0.6.tar.gz', repos=NULL, quiet = T)
    #install.packages("generics", quiet = F)
    #system("wget https://cran.r-project.org/src/contrib/Archive/ellipsis/ellipsis_0.0.1.tar.gz")
    #install.packages("ellipsis_0.0.1.tar.gz", repos=NULL, quiet = F)
    #install.packages("tidyselect", quiet = F)
    #install.packages("glue")
  }
  suppressMessages(library(dplyr))
}

if (!require("getopt", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("getopt", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/getopt/getopt_3.2.0.tar.gz")
    install.packages("getopt_3.2.0.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(getopt))
}

if (!require("optparse", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("optparse", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/optparse/optparse_1.6.4.tar.gz")
    install.packages("optparse_1.6.4.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(optparse))
}

if (!require("psych", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("psych", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/psych/psych_3.2.0.tar.gz")
    install.packages("psych_3.2.0.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(psych))
}

if (!require("crayon", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("crayon", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/crayon/crayon_1.5.0.tar.gz")
    install.packages("crayon_1.5.0.tar.gz", repos=NULL, dependencies = T, quiet = F)
  }
  suppressMessages(library(crayon))
}

if (!require("cpp11", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("cpp11", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/cpp11/cpp11_0.4.3.tar.gz")
    install.packages("cpp11_0.4.3.tar.gz", repos=NULL, dependencies = T, quiet = F)
  }
  suppressMessages(library(cpp11))
}

if (!require("bit", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("bit", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/bit/bit_1.1-14.tar.gz")
    install.packages("bit_1.1-14.tar.gz", repos=NULL, dependencies = T, quiet = F)
  }
  suppressMessages(library(bit))
}

if (!require("bit64", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("bit64", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/bit64/bit64_0.9-7.tar.gz")
    install.packages("bit64_0.9-7.tar.gz", repos=NULL, dependencies = T, quiet = F)
  }
  suppressMessages(library(bit64))
}

if (!require("hms", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("hms", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/hms/hms_0.4.2.tar.gz")
    install.packages("hms_0.4.2.tar.gz", repos=NULL, dependencies = T, quiet = F)
  }
  suppressMessages(library(hms))
}

if (!require("tzdb", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("tzdb", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/tzdb/tzdb_0.1.1.tar.gz")
    install.packages("tzdb_0.1.1.tar.gz", repos=NULL, dependencies = T, quiet = F)
  }
  suppressMessages(library(tzdb))
}

if (!require("assertthat", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("assertthat", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/assertthat/assertthat_0.2.0.tar.gz")
    install.packages("assertthat_0.2.0.tar.gz", repos=NULL, dependencies = T, quiet = F)
  }
  suppressMessages(library(assertthat))
}

if (!require("prettyunits", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("prettyunits", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/prettyunits/prettyunits_1.0.2.tar.gz")
    install.packages("prettyunits_1.0.2.tar.gz", repos=NULL, dependencies = T, quiet = F)
  }
  suppressMessages(library(prettyunits))
}

if (!require("progress", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("progress", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/progress/progress_1.2.1.tar.gz")
    install.packages("progress_1.2.1.tar.gz", repos=NULL, dependencies = T, quiet = F)
  }
  suppressMessages(library(progress))
}

if (!require("vroom", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("vroom", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/vroom/vroom_1.6.0.tar.gz")
    install.packages("vroom_1.6.0.tar.gz", repos=NULL, dependencies = T, quiet = F)
  }
  suppressMessages(library(vroom))
}

if (!require("clipr", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("clipr", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/clipr/clipr_3.2.0.tar.gz")
    install.packages("clipr_3.2.0.tar.gz", repos=NULL, quiet = F)
  }
  suppressMessages(library(clipr))
}

if (!require("readr", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("readr", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/readr/readr_2.1.2.tar.gz")
    install.packages("readr_2.1.2.tar.gz", repos=NULL, dependencies = T, quiet = F)
  }
  suppressMessages(library(readr))
}

if (!require("forcats", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("forcats", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/forcats/forcats_0.4.0.tar.gz")
    install.packages("forcats_0.4.0.tar.gz", repos=NULL, dependencies = T, quiet = F)
  }
  suppressMessages(library(forcats))
}

if (!require("haven", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("haven", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/haven/haven_2.5.0.tar.gz")
    install.packages("haven_2.5.0.tar.gz", repos=NULL, dependencies = T, quiet = F)
  }
  suppressMessages(library(haven))
}

if (!require("remotes", character.only = TRUE, quietly = TRUE)){
  if (install_from_cran) {
    install.packages("remotes", quiet = F)
  } else {
    system("wget https://cran.r-project.org/src/contrib/Archive/remotes/remotes_2.4.2.tar.gz")
    install.packages("remotes_2.4.2.tar.gz", repos=NULL, dependencies = T, quiet = F)
  }
  suppressMessages(library(remotes))
}

runif<-"FALSE"
if (runif==TRUE) {
  
  if (!require("evaluate", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("evaluate", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/evaluate/evaluate_0.19.tar.gz")
      install.packages("evaluate_0.19.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(evaluate))
  }
  
  if (!require("highr", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("highr", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/highr/highr_0.9.tar.gz")
      install.packages("highr_0.9.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(highr))
  }
  
  if (!require("xfun", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("xfun", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/xfun/xfun_0.39.tar.gz")
      install.packages("xfun_0.39.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(xfun))
  }
  
  if (!require("yaml", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("yaml", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/yaml/yaml_2.3.6.tar.gz")
      install.packages("yaml_2.3.6.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(yaml))
  }
  
  if (!require("knitr", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("knitr", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/knitr/knitr_1.45.tar.gz")
      install.packages("knitr_1.45.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(knitr))
  }
  
  if (!require("xml2", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("xml2", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/xml2/xml2_1.3.3.tar.gz")
      install.packages("xml2_1.3.3.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(xml2))
  }
  
  if (!require("curl", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("curl", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/curl/curl_4.3.tar.gz")
      install.packages("curl_4.3.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(curl))
  }
  
  if (!require("httr", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("httr", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/httr/httr_1.4.4.tar.gz")
      install.packages("httr_1.4.4.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(httr))
  }
  
  if (!require("selectr", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("selectr", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/selectr/selectr_0.4-1.tar.gz")
      install.packages("selectr_0.4-1.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(selectr))
  }
  
  if (!require("rvest", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("rvest", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/rvest/rvest_1.0.3.tar.gz")
      install.packages("rvest_1.0.3.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(rvest))
  }
  
  if (!require("fs", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("fs", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/fs/fs_1.5.2.tar.gz")
      install.packages("fs_1.5.2.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(fs))
  }
  
  if (!require("sass", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("sass", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/sass/sass_0.4.4.tar.gz")
      install.packages("sass_0.4.4.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(sass))
  }
  
  if (!require("bslib", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("bslib", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/bslib/bslib_0.4.2.tar.gz")
      install.packages("bslib_0.4.2.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(bslib))
  }
  
  if (!require("rmarkdown", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("rmarkdown", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/rmarkdown/rmarkdown_2.19.tar.gz")
      install.packages("rmarkdown_2.19.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(rmarkdown))
  }
  
  if (!require("htmltools", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("htmltools", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/htmltools/htmltools_0.5.4.tar.gz")
      install.packages("htmltools_0.5.4.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(htmltools))
  }
  
  if (!require("rstudioapi", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("rstudioapi", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/rstudioapi/rstudioapi_0.14.tar.gz")
      install.packages("rstudioapi_0.14.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(rstudioapi))
  }
  
  if (!require("ps", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("ps", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/ps/ps_1.7.2.tar.gz")
      install.packages("ps_1.7.2.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(ps))
  }
  
  if (!require("processx", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("processx", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/processx/processx_3.8.0.tar.gz")
      install.packages("processx_3.8.0.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(processx))
  }
  
  if (!require("callr", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("callr", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/callr/callr_3.7.3.tar.gz")
      install.packages("callr_3.7.3.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(callr))
  }
  
  if (!require("webshot", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("webshot", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/webshot/webshot_0.5.4.tar.gz")
      install.packages("webshot_0.5.4.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(webshot))
  }
  
  if (!require("svglite", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("svglite", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/svglite/svglite_2.1.0.tar.gz")
      install.packages("svglite_2.1.0.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(svglite))
  }
  
  if (!require("highr", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("highr", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/highr/highr_0.9.tar.gz")
      install.packages("highr_0.9.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(highr))
  }
  
  if (!require("xfun", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("xfun", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/xfun/xfun_0.39.tar.gz")
      install.packages("xfun_0.39.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(xfun))
  }
  
  if (!require("yaml", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("yaml", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/yaml/yaml_2.3.6.tar.gz")
      install.packages("yaml_2.3.6.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(yaml))
  }
  
  if (!require("kableExtra", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      #install.packages("kableExtra", quiet = F)
      remotes::install_github("haozhu233/kableExtra")
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/kableExtra/kableExtra_1.3.4.tar.gz")
      install.packages("kableExtra_1.3.4.tar.gz", repos=NULL, dependencies = T, quiet = F)
      #Installing 7 packages: sass, memoise, jquerylib, cachem, fontawesome, bslib, rmarkdown
      system("wget https://cloud.r-project.org/src/contrib/htmltools_0.5.8.1.tar.gz")
      system("wget https://cloud.r-project.org/src/contrib/sass_0.4.9.tar.gz")
      system("wget https://cloud.r-project.org/src/contrib/memoise_2.0.1.tar.gz")
      system("wget https://cloud.r-project.org/src/contrib/jquerylib_0.1.4.tar.gz")
      system("wget https://cloud.r-project.org/src/contrib/cachem_1.1.0.tar.gz")
      system("wget https://cloud.r-project.org/src/contrib/fontawesome_0.5.3.tar.gz")
      system("wget https://cloud.r-project.org/src/contrib/bslib_0.8.0.tar.gz")
      system("wget https://cloud.r-project.org/src/contrib/rmarkdown_2.29.tar.gz")
    }
    suppressMessages(library(kableExtra))
  }
  
  if (!require("devtools", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("devtools", quiet = F)
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/devtools/devtools_2.3.6.tar.gz")
      install.packages("devtools_2.3.6.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(devtools))
  }
}

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

#  if (!require("tidyverse", character.only = TRUE, quietly = TRUE)){
#    if (install_from_cran) {
#      install.packages("tidyverse", quiet = F)
#    } else {
#      system("wget https://cran.rstudio.com/src/contrib/tidyverse_3.4.3.tar.gz")
#      install.packages("tidyverse_3.4.3.tar.gz", repos=NULL, dependencies = T, quiet = F)
#    }
#    suppressMessages(library(sys))
#  }

if (runif==TRUE) {
  #Skipping 3 packages not available: cpp11, lifecycle, xml2
  #Installing 8 packages: sys, textshaping, askpass, zip, uuid, ragg, openssl, cli
  if (!require("sys", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("sys", quiet = F)
    } else {
      system("wget https://cran.rstudio.com/src/contrib/sys_3.4.3.tar.gz")
      install.packages("sys_3.4.3.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(sys))
  }
  if (!require("textshaping", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("textshaping", quiet = F)
    } else {
      system("wget https://cran.rstudio.com/src/contrib/textshaping_0.4.1.tar.gz")
      install.packages("textshaping_0.4.1.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(textshaping))
  }
  if (!require("askpass", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("askpass", quiet = F)
    } else {
      system("wget https://cran.rstudio.com/src/contrib/askpass_1.2.1.tar.gz")
      install.packages("askpass_1.2.1.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(askpass))
  }
  if (!require("zip", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("zip", quiet = F)
    } else {
      system("wget https://cran.rstudio.com/src/contrib/zip_2.3.1.tar.gz")
      install.packages("zip_2.3.1.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(zip))
  }
  if (!require("uuid", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("uuid", quiet = F)
    } else {
      system("wget https://cran.rstudio.com/src/contrib/uuid_1.2-1.tar.gz")
      install.packages("uuid_1.2-1.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(uuid))
  }
  if (!require("ragg", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("ragg", quiet = F)
    } else {
      system("wget https://cran.rstudio.com/src/contrib/ragg_1.3.3.tar.gz")
      install.packages("ragg_1.3.3.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(ragg))
  }
  if (!require("openssl", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("openssl", quiet = F)
    } else {
      system("wget https://cran.rstudio.com/src/contrib/openssl_2.3.0.tar.gz")
      install.packages("openssl_2.3.0.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(openssl))
  }
  if (!require("cli", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("cli", quiet = F)
    } else {
      system("wget https://cran.rstudio.com/src/contrib/cli_3.6.3.tar.gz")
      install.packages("cli_3.6.3.tar.gz", repos=NULL, dependencies = T, quiet = F)
      #Installing 4 packages: fontLiberation, fontBitstreamVera, htmltools, fontquiver
    }
    suppressMessages(library(cli))
  }
  if (!require("fontLiberation", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("fontLiberation", quiet = F)
    } else {
      system("wget https://cran.rstudio.com/src/contrib/fontLiberation_0.1.0.tar.gz")
      install.packages("fontLiberation_0.1.0.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(fontLiberation))
  }
  if (!require("fontBitstreamVera", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("fontBitstreamVera", quiet = F)
    } else {
      system("wget https://cran.rstudio.com/src/contrib/fontBitstreamVera_0.1.1.tar.gz")
      install.packages("fontBitstreamVera_0.1.1.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(fontBitstreamVera))
  }
  if (!require("htmltools", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("htmltools", quiet = F)
    } else {
      system("wget https://cran.rstudio.com/src/contrib/htmltools_0.5.8.1.tar.gz")
      install.packages("htmltools_0.5.8.1.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(htmltools))
  }
  if (!require("fontquiver", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("fontquiver", quiet = F)
    } else {
      system("wget https://cran.rstudio.com/src/contrib/fontquiver_0.2.1.tar.gz")
      install.packages("fontquiver_0.2.1.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(fontquiver))
  }
  
  if (!require("officer", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      remotes::install_github("davidgohel/officer")
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/officer/officer_0.5.0.tar.gz")
      install.packages("officer_0.5.0.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(officer))
  }
  if (!require("gdtools", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      remotes::install_github("davidgohel/gdtools")
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/gdtools/gdtools_0.2.4.tar.gz")
      install.packages("gdtools_0.2.4.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(gdtools))
    #ERROR: this R is version 3.4.4, package 'gdtools' requires R >= 4.0.0
  }
  if (!require("flextable", character.only = TRUE, quietly = TRUE)){
    if (install_from_cran) {
      install.packages("flextable", quiet = F)
      remotes::install_github("davidgohel/flextable")
    } else {
      system("wget https://cran.r-project.org/src/contrib/Archive/flextable/flextable_0.8.3.tar.gz")
      install.packages("flextable_0.8.3.tar.gz", repos=NULL, dependencies = T, quiet = F)
    }
    suppressMessages(library(remotes))
  }
  
}
