#Paula Adjemian German Adjemian Rafael Trujillo

#Control 5 
#EJERCICIO 1
mu_ej1 = 7
sigma_ej1 = 2.5

#1.1 Grafica la curva normal
x_ej1 = seq((mu_ej1 - 3*sigma_ej1), (mu_ej1 + 3*sigma_ej1), 0.1)
y_ej1 = dnorm(x_ej1, mu_ej1, sigma_ej1)
plot(x_ej1, y_ej1, type = "l", col = "red", lwd = 2.5)

#1.2. ¿Cuál es la probabilidad de que una sesión dure más de 9 minutos? 
1 - pnorm(9,mu_ej1,sigma_ej1)
#Respuesta: La probabilidad de que una sesión dure más de 9 minutos es de 0.2118554 o 21.19%

#1.3. ¿Cuál es la probabilidad de que dure menos de 5 minutos? 
pnorm(5,mu_ej1,sigma_ej1)
#Respuesta: La probabilidad de que una sesión dure menos de 5 minutos es d 0.2118554 o 21.19%

#1.4. ¿Cuál es la probabilidad de que dure entre 6 y 8 minutos? 
pnorm(8,mu_ej1,sigma_ej1)-pnorm(6,mu_ej1,sigma_ej1)
#Respuesta: La probabilidad de que una sesión dure entre 6 a 8 minutos es d 0.3108435 o 31.08%

#1.5. ¿Qué duración (en minutos) corresponde al percentil 95? 
qnorm(0.95,mu_ej1,sigma_ej1)
#Respuesta: Al percentil 95 de la muestra le corresponde 11.11213 minutos o menos

#EJERCICIO 2

mu_ej2 = 12.5
sigma_ej2 = 3.8

  #2.1 ¿Cuál es la probabilidad de que los ingresos de un día sean > 15 (miles USD)? P(X>15)

1 - pnorm(15, mu_ej2, sigma_ej2)
#Respuesta: 0.2553 o 25.53%

  #2.2 Si los costos diarios son 2.6 (miles USD), ¿cuál es la probabilidad de que los ingresos no superen los costos? P(X<2.6)

pnorm(2.6, mu_ej2, sigma_ej2)
#Respuesta: 0.00459 o 0.459%

  #2.3 ¿Qué ingreso diario corresponde al 10% más bajo de días? 

qnorm(0.10, mu_ej2, sigma_ej2)
#Respuesta: 7.6301 (miles USD)

#EJERCICIO 3
mu_ChatBot <- 4.5
sigma_ChatBot <- 1.1

mu_CallCenter <- 6.2
sigma_CallCenter <- 2.3

#3.1. ¿Cuál es la probabilidad de recibir una respuesta en menos de 4 minutos en cada canal? 
#¿Cuál canal es más eficiente según esa medida? 

#ChatBot
pnorm(4, mu_ChatBot, sigma_ChatBot)

#CallCenter
pnorm(4, mu_CallCenter, sigma_CallCenter)

#Respuesta: La probabilidad de recibir una respuesta en menos de 4 minutos en el chatbot es
# de 0.3247181 mientras que en el call center es de 0.1694044, por lo que según esta medida
#es más eficiente el chat bot (es más probable que responda más rápido, por ende más eficiente)

#3.2. ¿Cuál es la probabilidad de que el tiempo de respuesta sea mayor a 5 minutos en cada canal? 

#ChatBot
1-pnorm(5, mu_ChatBot, sigma_ChatBot)

#CallCenter
1-pnorm(5, mu_CallCenter, sigma_CallCenter)

#Respuesta: Para el chatbot la probabilidad de que el tiempo de respuesta sea mayor a 5 minutos es de 0.3247181
# Para el call center la probabilidad de que el tiempo de respuesta sea mayor a 5 minutos es de 0.699074

#3.4. Si la empresa fija como objetivo prometer un tiempo máximo igual al percentil 75 de cada canal
#¿qué significa eso operativamente? 
#¿Cuáles son esos tiempos para ambos canales? 

#Tiempo chatbot
qnorm(0.75, mu_ChatBot,sigma_ChatBot)

#Tiempo call center
qnorm(0.75, mu_CallCenter, sigma_CallCenter)

#Respuesta: Operativamente, prometer un tiempo máximo igual al percentil 75 significa comprometerse con un estándar de servicio tal
#que, en el 75% de los casos, el cliente recibirá la respuesta en un tiempo igual o inferior a ese valor.
#Es decir, solo en el 25% de los casos la respuesta demorará más que dicho tiempo. 
#Esto fija una expectativa clara hacia los clientes y un objetivo interno para medir la eficiencia (es como establecer/definir una calidad de servicio).


#En este caso:
  # Para el chatbot, el 75% de las consultas se resuelven en ≤5.241939 minutos
  # Para el call center, el 75% se resuelven en ≤ 7.751326 minutos