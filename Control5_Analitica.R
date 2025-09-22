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
#Respuesta: 0.2118554 o 21.19%

#1.3. ¿Cuál es la probabilidad de que dure menos de 5 minutos? 
pnorm(5,mu_ej1,sigma_ej1)
#Respuesta: 0.2118554 o 21.19%

#1.4. ¿Cuál es la probabilidad de que dure entre 6 y 8 minutos? 
pnorm(8,mu_ej1,sigma_ej1)-pnorm(6,mu_ej1,sigma_ej1)
#Respuesta: 0.3108435 o 31.08%

#1.5. ¿Qué duración (en minutos) corresponde al percentil 95? 
qnorm(0.95,mu_ej1,sigma_ej1)
#Respuesta: 11.11213 minutos

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

