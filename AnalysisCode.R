
allDf = read.table(
  sep = ";",
  "/Users/AAR/Dropbox/Andreas/PLUGG_JOBB/NUVVT19/PVT/Survey/SurveyData.csv",
  fill = TRUE,
  header = TRUE)

stodjGrupp = allDf[allDf$Malgrupp == 'Stodja',]
ejStodjGrupp = allDf[allDf$Malgrupp != 'Stodja',]

esPump = mean(ejStodjGrupp[,3])
sPump = mean(stodjGrupp[,3])

meanGroups = aggregate(allDf[, 3:12], list(allDf$Malgrupp), mean)
meanGroups = aggregate(allDf[, 3:12], list(allDf$Malgrupp), median)


write.csv(meanGroups, file = "meansPerGroup.csv")


hist(meanGroups)