# Matthews Correlation Coefficient (MCC)
this_file <- dirname(rstudioapi::getSourceEditorContext()$path)
setwd(this_file)

library(readxl)

mcc_manual <- function(tab) {
  TP <- tab["1","1"]
  TN <- tab["0","0"]
  FP <- tab["0","1"]
  FN <- tab["1","0"]
  num <- TP * TN - FP * FN
  den <- sqrt((TP+FP)*(TP+FN)*(TN+FP)*(TN+FN))
  if (den == 0) return(NA)
  num/den
}

dados <- read_excel("MCCtest.xlsx")

ttvs <- c("Internal", "External", "Construct", "Conclusion")

for (ttv in ttvs) {
  orig <- dados[[paste0(ttv, "_Original")]]
  rep  <- dados[[paste0(ttv, "_Replication")]]
  
  tab <- table(orig, rep)
  
  if (all(dim(tab) == c(2,2))) {
    # MCC
    mcc <- mcc_manual(tab)
    # chi-square test
    chi2 <- chisq.test(tab, correct = FALSE)
    
    cat(sprintf(
      "%-10s  MCC = %5.3f   chi2 p-value = %6.4f\n",
      ttv, mcc, chi2$p.value
    ))
  } else {
    cat(sprintf("%-10s  error\n", ttv))
  }
}
