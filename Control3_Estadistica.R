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


