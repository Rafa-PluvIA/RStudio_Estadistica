#Paula Adjemian German Adjemian Rafael Trujillo

#Control 5 

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

