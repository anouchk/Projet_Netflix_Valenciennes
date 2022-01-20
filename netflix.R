# Let's call the library
library(data.table)

# Let's set the working directory
setwd('/Users/analutzky/Desktop/')

# Let's read our csv
Table_netflix=fread('netflix.csv')

# showing it excel-like
View(Table_netflix)

# showing column names
colnames(Table_netflix)

var.names=colnames(Table_netflix)
### getting rid of space and special characters in columns names 
colnames(Table_netflix)=make.names(var.names)
# showing column names
colnames(Table_netflix)

# strsplit() ça splite ma chaîne de caractères en fonction d'un séparateur 
# => ça fait une liste avec autant de vecteurs que de cases de départ, et autant d'éléments dans chaque vecteur que séparés par le séparateur
# unlist() ça fait un seul vecteur avec tous ces éléments
# table() ça compte le nb de lignes ou d'occurrences de chaque valeur de la variable considérée
TableGenre =Table_netflix[,table(unlist(strsplit(Quels.genres.préférez.vous.regarder..,', ')))]

# Let's see the result
View(TableGenre)

# Let's order it
TableGenre=sort(TableGenre, decreasing=TRUE)

# And look again
View(TableGenre)