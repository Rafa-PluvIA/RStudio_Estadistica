#Control 4

#> library(readxl)
#> EDA_Ecommerce <- read_excel("A-Estudio/UCU/Materias/2025/2Semestre2025/Analitica_Datos/Base_Datos/EDA_Ecommerce.xlsx")
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