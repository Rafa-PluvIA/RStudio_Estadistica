#Control 4

 library(readxl)
 EDA_Ecommerce <- read_excel("EDA_Ecommerce.xlsx")
#> View(EDA_Ecommerce)

#3.1

frec.absoluta.region <- table(EDA_Ecommerce$Region)
frec.absoluta.catProd <- table(EDA_Ecommerce$Categoria_Producto)
frec.absoluta.metodoP <- table(EDA_Ecommerce$Metodo_Pago)

frec.relativa.region <- table(frec.absoluta.region)
frec.relativa.catProd <- table(frec.absoluta.catProd)
frec.relativa.metodoP <- table(frec.absoluta.metodoP)

tabla.region = cbind(frec.absoluta.region,frec.relativa.region)
colnames(tabla.region) = c("Frec.Absoluta.Region","Frec.Relativa.Region")
tabla.region

tabla.metodoP = cbind(frec.absoluta.metodoP,frec.relativa.metodoP)
colnames(tabla.metodoP) = c("Frec.Absoluta.metodoP","Frec.Relativa.metodoP")
tabla.metodoP

tabla.catProd = cbind(frec.absoluta.catProd,frec.relativa.catProd)
colnames(tabla.catProd) = c("Frec.Absoluta.Cat.Prod","Frec.Relativa.catProd")
tabla.catProd

barplot(frec.absoluta.region,
        col="gold",
        main=" Grafica de Barras: Region",
        sub= "Elaboración Propia // Analitica de Datos 2025",
        xlab="Regiones",
        ylab ="Frecuencia")

barplot(frec.absoluta.catProd,
        col="gold",
        main=" Grafica de Barras: Categoria de Productos",
        sub= "Elaboración propia // Analitica de Datos 2025",
        xlab="Categoria de Productos",
        ylab ="Frecuencia")

pie(frec.absoluta.metodoP,
    main="Diagrama de sectores para Metodos de Pagos",
    sub="Elaboración propia // Analitica de Datos 2024")

#3.2
#Media
media_monto_compra = mean (EDA_Ecommerce$Monto_Compra)
media_monto_compra#USD

media_tiempo_entrega = mean(EDA_Ecommerce$Tiempo_Entrega)
media_tiempo_entrega#DÍAS

media_edad = mean(EDA_Ecommerce$Edad_Cliente)
media_edad#AÑOS

#Mediana
mediana_monto_compra <- median(EDA_Ecommerce$Monto_Compra)
mediana_monto_compra

mediana_tiempo_entrega <- median(EDA_Ecommerce$Tiempo_Entrega)
mediana_tiempo_entrega

mediana_edad <- median(EDA_Ecommerce$Edad_Cliente)
mediana_edad

# Rango
rango_monto_compra <- max(EDA_Ecommerce$Monto_Compra) - min(EDA_Ecommerce$Monto_Compra)
rango_tiempo_entrega <- max(EDA_Ecommerce$Tiempo_Entrega) - min(EDA_Ecommerce$Tiempo_Entrega)
rango_edad <- max(EDA_Ecommerce$Edad_Cliente) - min(EDA_Ecommerce$Edad_Cliente)

# Desviación estándar
desv_monto_compra <- sd(EDA_Ecommerce$Monto_Compra)
desv_tiempo_entrega <- sd(EDA_Ecommerce$Tiempo_Entrega)
desv_edad <- sd(EDA_Ecommerce$Edad_Cliente)

# Mostrar resultados
rango_monto_compra; rango_tiempo_entrega; rango_edad
desv_monto_compra; desv_tiempo_entrega; desv_edad

#3.2.2 - Histogramas
hist(EDA_Ecommerce$Monto_Compra,
     col="skyblue",
     main="Histograma: Monto de Compra",
     xlab="Monto (USD)",
     ylab="Frecuencia",
     sub = "Elaboración Propia")

hist(EDA_Ecommerce$Tiempo_Entrega,
     col="lightgreen",
     main="Histograma: Tiempo de Entrega",
     xlab="Tiempo (días)",
     ylab="Frecuencia",
     sub = "Elaboración Propia")

#3.2.3 - Boxplots
boxplot(EDA_Ecommerce$Monto_Compra,
        col="orange",
        main="Boxplot: Monto de Compra",
        ylab="Monto (USD)",
        sub = "Elaboración Propia")

boxplot(EDA_Ecommerce$Tiempo_Entrega,
        col="purple",
        main="Boxplot: Tiempo de Entrega",
        ylab="Tiempo (días)",
        sub = "Elaboración Propia")

boxplot(EDA_Ecommerce$Edad_Cliente,
        col="pink",
        main="Boxplot: Edad de Cliente",
        ylab="Edad (años)",
        sub = "Elaboración Propia")

# Detectar valores atípicos en Edad
outliers_edad <- boxplot.stats(EDA_Ecommerce$Edad_Cliente)$out
outliers_edad #Así es más fácil que ver a ojo con el boxplot
#Da numeric(0) porque es un vector vacío
#Lo podemos corroborar con el boxplot, no hay valores atípicos por fuera de los bigotes
