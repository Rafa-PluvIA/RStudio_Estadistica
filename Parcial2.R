#PARCIAL 2 ESTADÍSTICA 1 Germán Adjemian

#PROBLEMA 1

#Coeficiente de V-Cramer
#V_Cramer = X^2/n*p
n = 300 #numero de empleados
Metodos_Formacion <- 5
Competencia <- 3

Chi_Cuadrado <- 18.6743
V_Cramer <- sqrt(Chi_Cuadrado/(n*(min(Metodos_Formacion, Competencia)-1)))
V_Cramer

#Interpretación
#En este caso el coeficiente de V Cramer dio 0.3528, lo cual significa que hay una asociación fuerte entre las variables, es decir que la competencia depende fuertemente del método de formación del empleado


#PROBLEMA 2

#1
Marketing <- c(25,40,62)
Publicidad_Trad <-  c(32,56,48)

TDE = cbind(Marketing, Publicidad_Trad)
addmargins(TDE)
prop.table(TDE, margin = 1) *100#perfil fila
prop.table(TDE, margin = 2) *100#perfil columna

#Verifico
#i
(25+40+62)/263*100
#ii
40/(40+56)*100
#iii
32/(32+56+48)*100

#2
chisq.test(TDE, correct = F)$expected

#3
Chi_cuadrado <- chisq.test(TDE, correct = F)$statistic
Chi_cuadrado

#4
Chi_cuadrado/263*1


#PROBLEMA 3
Ingresos = c(1000,1200,1500,1700,2000,2100,2300,2500,2700,2900)
Montos = c(1050,1700,1800,2100,2350,2400,2700,3300,3100,3300)

#1
cor(Ingresos, Montos)

#2
modelo = lm(Montos~Ingresos)
summary(modelo)

#3

#4
110+1.14026*2800


#PROBLEMA 4

#1
0.9*0.7
#2

#3
0.9*0.3*100