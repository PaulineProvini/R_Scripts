files <- choose.files()

fichiers <- vector()

for (i in 1:length(files)){
  fichiers[i] <- paste(substr(x = files[i], 
                              start = 1, stop = (nchar(files[i])-8)), # choose where to cut the original name
                       "_",
                       formatC(i-1, width = 4, format = "d", flag = "0"), # for incremental digits (with zeros)
                       '.tif', # file format
                       sep="")
 
}

file.rename(from= files, to=fichiers)
