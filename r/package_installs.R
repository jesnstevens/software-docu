library(here)

#Get currently installed packages
package_df <- as.data.frame(installed.packages())
package_list <- as.character(package_df$Package)

# Print Package List
package_list

# Saves list of installed packages
save(package_list, package_df, file = here("r", "ipl.rda"))

# Loads list of remotely installed packages
load(file = here("r", "ipl.rda"))

# Re-install packages
install.packages(package_list)

#Packages Installed from Github

devtools::install_github("chris-prener/stlData")
devtools::install_github("chris-prener/testDriveR")
devtools::install_github("slu-openGIS/gateway")
devtools::install_github("rstudio/blogdown")
devtools::install_github("tidyverse/ggplot2")
