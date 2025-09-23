#Paula Adjemian German Adjemian Rafael Trujillo

#Control 3

#EJERCICIO 1

col1_ej1= c(50,25,20,15,25)
col2_ej1= c(30,15,10,10,15)
col3_ej1= c(10,20,30,15,10)

TDE_ej1 = cbind(col1_ej1,col2_ej1,col3_ej1)

rownames(TDE_ej1)= c("Swifties","Arianators","BTS Army","Carpenters","Bad Bunnies")
colnames(TDE_ej1)= c("Spotify","Apple Music","Youtube Music")

addmargins(TDE_ej1)

#PARTE 1
TDE_Perfil_Fila_ej1 =  prop.table(TDE_ej1, margin=1)*100
addmargins(TDE_Perfil_Fila_ej1, margin = 2) 

#RESPUESTA: 
# Los Swifties, los Arianators y los Bad Bunnies parecen preferir Spotify
# Los BTS Army parecen tener preferencia por Youtube Music
# Los Carpenters tienen preferencia por Spotify y Youtube Music

#PARTE 2
chisq.test(TDE_ej1, correct=F)$expected
#RESPUESTA:
#Si las variables fueran independientes
# ¿cuál es el número esperado de Swifties que preferirían Apple Music? 24
# ¿Cuál es el número esperado de Carpenters que preferirían Spotify?  18

#PARTE 3
chi_cuadrado_ej1=chisq.test(TDE_ej1, correct=F)$statistic
chi_cuadrado_ej1

#RESPUESTA:
# Se evidencia una asociación entre los fandon y las plataformas 
# porque chi cuadrado es diferente a cero

#PARTE 4
n_ej1 = 300
p_ej1 = 2
VCramer_ej1 = sqrt(chi_cuadrado_ej1/(n_ej1*p_ej1))
VCramer_ej1

# RESPUESTA:
#Se observa una asociación moderada entre las variables porque VCramer = 0.2285299

#EJERCICIO 3

col1_ej3= c(4207,4917,2807,885,290)
col2_ej3= c(3459,6850,5258,2094,829)
col3_ej3= c(1389,5027,4678,2848,1274)
col4_ej3= c(539,2637,3250,2581,1241)
col5_ej3= c(367,2668,4074,5379,4188)

TDE_ej3 = cbind(col1_ej3,col2_ej3,col3_ej3,col4_ej3,col5_ej3)

rownames(TDE_ej3)= c("Sin educación media","Educación media","Educación superior inconclusa",
                     "Educación superior","Maestría o doctorado")
colnames(TDE_ej3)= c("Menos de 25","25-50","50-75","75-100","100 o más")

addmargins(TDE_ej3)

#PARTE 1
  
TDE_Perfil_Total_ej3 =  prop.table(TDE_ej3)*100
addmargins(TDE_Perfil_Total_ej3) 

# El porcentaje de familias que tienen un jefe de hogar con educación superior
# e ingresos mayores a $100 mil es de 7.2949441%

#PARTE 2

TDE_Perfil_Fila_ej3 =  prop.table(TDE_ej3, margin=1)*100
addmargins(TDE_Perfil_Fila_ej3, margin = 2)

# El porcentaje de familias con jefes de hogares de educación media gana 
# $100 mil o más es de 39.015014%

#PARTE 3
porcentaje3_ej3 = 11.932667 + 12.072944
porcentaje3_ej3
# El porcentaje de familias con jefe de hogar de educación media gana $75 mil
# o más es de 24.00561%

#PARTE 4
TDE_Perfil_Columna_ej3 =  prop.table(TDE_ej3, margin=2)*100
addmargins(TDE_Perfil_Columna_ej3, margin = 1)

# El porcentaje de familias con ingresos entre 50-75 mil tiene jefe de hogar con 
# nivel educativo de Maestría o Doctorado es de 8.372766%










