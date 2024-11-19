# Script R challenge 2024-2025
# Majeure SD, UP2 : apprentissage statistique
# Techniques de Régression pour la prédiction

# 0. Données d'apprentissage

data <- read.table(file="data.txt", header=TRUE)
y <- data[,1]             # réponse
X <- data[,-1]            # matrice des prédicteurs

names(X[,1:5])            # noms des 5 premiers prédicteurs

n <- dim(data)[1]
p <- dim(data)[2] - 1     # p = nombre de prédicteurs > n


# 1. Prédiction par la moyenne (prédicteur constant)

prediction_constante <- mean(y)

plot(y, xlab="numéro d'observation")
abline(h=c(0, prediction_constante), lty=c(2,1), col=c("black","red"))
title('Prédiction par la moyenne')
grid()

RMSE_ref <- sd(y)         # écart-type de y
print(round(RMSE_ref,2))

# 2. Différentes techniques de régression
# A vous de jouer et faire beaucoup mieux que RMSE_ref

# 3. Prédictions associées au prédicteur constant (ne tient pas compte des prédicteurs) 

# Données test pour le calcul des prédictions demandées dans le challenge

Xnew <- read.table(file="Xtest.txt", header=TRUE)
head(Xnew[,1:8])   # pour vérifier la bonne lecture des données test

n.test <- dim(Xnew)[1] # nombre de prédictions à faire

predictions <- matrix(0, ncol=1, nrow=n.test) # initialisation
for (k in 1:n.test){
  predictions[k] <- prediction_constante
}

# Fichier texte des prédictions 

write.table(predictions, row.names=FALSE, col.names=FALSE,
            file="BAY_Xavier.txt")

# S'assurer que ce fichier a le bon format en l'ouvrant avec un éditeur
# de texte quelconque et le déposer sur Campus
