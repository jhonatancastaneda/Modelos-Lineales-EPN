library(readxl)
datarls <- read_excel("data_poblacion.xlsx",sheet = 1,col_names = TRUE,na = "")
str(datarls)
View(datarls)
names(datarls)
summary(datarls)

#familia apply
#sapply
class(datarls[,9])
clase <- sapply(datarls,class)
datanum <- datarls[,clase=="numeric"]
str(datanum)
View(datanum)


reg0 <- lm(poblacion~.,datanum)
summary(reg)

reg <-  step(reg0,direction = "backward")
