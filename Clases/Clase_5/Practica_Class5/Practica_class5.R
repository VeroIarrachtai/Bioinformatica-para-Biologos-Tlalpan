# Practice Class 5
# Verónica Reyes
# 2020

#Load Juanito files
Juanito_file<-read.csv("../../../Data_Practicas/Ki67-R.csv", sep = ";")

#Changed names columns
colnames(Juanito_file)
colnames(Juanito_file)<- c("ID", "Tratments", "Cells_Ki67")

# Add numeric data 

Juanito_file$size<- c(rep(26,6), rep(23,6), rep(28,6),
                      rep(60,6),rep(15,6))

# Add character data 

Juanito_file$nicknames<- c(rep("Daudad",6), rep("Blatoideo",6), rep("Juanin",6),
                      rep("Deivid",6),rep("El cachorro mas pequeño",6))

# Add operation 

Juanito_file$CellsSize <- Juanito_file$Cells_Ki67*Juanito_file$size


# Make a table similar to last table

nicknames_FESI <- c(rep("Daudad",6), rep("Memoww",6), rep("Triatomino",6),
  rep("Olivino",6),rep("Fercharal",6))

cahuamas<- c(rep(4,6), rep(10,6), rep(9,6),
             rep(20,6),rep(7,6))

Fesi_table<- as.data.frame(nicknames_FESI)
Fesi_table$cahuamas <- cahuamas

#Add other table to Juanito_file

FESI_Juanito <- data.frame(c(Juanito_file,Fesi_table))


