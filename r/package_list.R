ip = as.data.frame(installed.packages()[,c(1,3:4)])

ip = ip[is.na(ip$Priority),1:2,drop=FALSE]

ip

# Saves list of installed packages
save(ip, file = "ipl.rda")
