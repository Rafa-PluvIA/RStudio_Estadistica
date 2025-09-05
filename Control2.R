library(modeest)

# Control 2

# Ejercicio 1
Gasto_M <- c(35,42,50,38,60,55,70,42,48,52,65,40,39,80,45,58,62,47,41,75)

# a) Media/Promedio
mean(Gasto_M)

#Respuesta: 52.2 USD/usuario
#Interpretación: El promedio de los usuarios gastaron unos 52.2 usd en merchandising

# b) Moda
mfv(Gasto_M)

#Respuesta: 42 usuarios
#Interpretacion: La mayoría de los usuarios gastan unos 42 USD.

# c) Mediana
median(Gasto_M)

#Respuesta: 49 USD
#Interpretación: El 50% de los usuarios gastan en merchandising 49 USD o menos.

# d) Primer Cuartil
q3 <- quantile(Gasto_M, 0.75)
q3

#Respuesta: 60.50 USD
#Interpretación: El 25% de los usuarios gastan en merchandising 60.50 USD o menos.

# e) Rango
range(Gasto_M)
rango = max(Gasto_M) - min(Gasto_M)
rango
        
#Respuesta: Min 35 USD, Max 80 USD y el rango 45 USD
#Interpretación: Los usuarios gastan desde 35 USD hasta 80 USD en Merchandising. Variando un total máximo de 45 USD entre los usuarios. 

# f) Recorrido Intercuartilico
IQR(Gasto_M)

#Respuesta: 18.75 USD
#Interpretacion: La máxima diferencia entre dos usuarios del 50% central de la muestra es de 18.75 USD de gasto.

# g) Desvió Estándar
sd(Gasto_M)

#Respuesta: 13.032 USD^2
#Interpretación: En promedio, cada uno de los usuarios se desvía 13.032 USD de la media de los gastos en merchandising. (52.2 USD)

# h) coeficiente de Variación
CV = sd(Gasto_M)/mean(Gasto_M)
CV

#Respuesta: CV = 0.2496 o 24,96% 
#Interpretacion: El desvio estandar (13.032 USD^2) representa el 24.96% de la media de la muestra.


#EJERCICIO 2

gastosProm_fans <- c(55,45,50,42,60)
frecuencia_num_fans <- c(150,120,200,80,100)

promedio_ponderado <- sum(gastosProm_fans*frecuencia_num_fans)/sum(frecuencia_num_fans)
promedio_ponderado

#Respuesta: 50.785 usd/fan
#Interpretación: El promedio de gastos por fan es de 50.785 usd.

#EJERCICIO 3

#Parte 1)
hist(Gasto_M, 
     col = "blue", 
     main = "Histograma de los gastos en merchandising por los usuarios.",
     xlab = "Gastos en Merchandising (USD)",
     ylab = "Frecuencia absoluta (usuarios)",
     sub = "Elaboración propia")

#Parte 2 en el drive

#EJERCICIO 4
boxplot(Gasto_M,
        col="purple",
        main = "BoxPlot para los gastos en merchandaising",
        ylab = "Gasto en $USD",
        border = "blue",
        sub = "Elaboración propia"
        )

#Parte 2 en el drive