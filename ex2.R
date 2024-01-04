library("FactoMineR")
library("factoextra")
library("gplots")


media <- read_excel("C:/Users/dell/Desktop/IDDLS1/Analyse donn/Devoir/Ismail Akouz - media.xlsx")
head(media) 
media.active <- media[, 2:8]
res.media.ca <- CA(media.active, graph = FALSE)
summary(res.media.ca,nb.dec = 2,nbelements = 8)
round(res.media.ca$eig[,-2],2)
fviz_ca_row(res.media.ca,axes = 1:2,repel = TRUE)
#nuage des CSP
res.row <- res.media.ca$row
res.row$coord          # Coordonnées
res.row$contrib        # Contributions
#nuage des sources d'information
res.col <- res.media.ca$col
res.col$coord          # Coordonnées
res.col$contrib        # Contributions 
fviz_ca_col(res.media.ca,axes = 1:2,repel = TRUE)
fviz_contrib(res.media.ca, choice = "row", axes = 1)
fviz_contrib(res.media.ca, choice = "col", axes = 1)
fviz_ca_biplot(res.media.ca, axes = c(1,2))
