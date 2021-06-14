## Tarea 1
# Si hubiéramos empezado a contar segundos a partir de las 12 
# campanadas que marcan el inicio de 2018, ¿a qué hora de qué 
#día de qué año llegaríamos a los 250 millones de segundos? 
# ¡Cuidado con los años bisiestos!
segundos = 250*10^6
minutos= segundos/60
horas = minutos/60
dias = horas/24
años = (dias-2)/365  # -2 dias bisiesto

añosfinal= trunc(años)+2018

diasfinal = (dias-2)%%365
diasfinal2= trunc(diasfinal)

horasfinal= (diasfinal-diasfinal2)*24
horasfinal2= trunc(horasfinal)

minutosfinal= (horasfinal-horasfinal2)*60
minutosfinal2= trunc(minutosfinal)

segundosfinal = (minutosfinal-minutosfinal2)*60
segundosfinal2= trunc(segundosfinal)

sprintf("año = %s ", añosfinal)
sprintf("dia = %s ", diasfinal2)
sprintf("hora = %s ", horasfinal2)
sprintf("minuto = %s ", minutosfinal2)
sprintf("segundo = %s ", segundosfinal2)



## Tarea 2 OK
# Cread una función que os resuelva una ecuación de primer 
#grado (de la forma Ax+B=0). Es decir, vosotros tendréis que 
#introducir como parámetros los coeficientes (en orden) y 
#la función os tiene que devolver la solución. Por ejemplo, 
#si la ecuación es 2x+4=0, vuestra función os tendría que 
#devolver -2

#Ax+B=0
ecuacion = function(A,B,final){
  x= (final-B)/A;
  x
}

#5x+3=0
ecuacion(5,3,0)
#7x+4 = 18
ecuacion(7,4,18)
#x+1 = 1
ecuacion(1,1,1)

## Tarea 3
# Dad una expresión para calcular 3e-π y a continuación, 
# dad el resultado que habéis obtenido con R redondeado a 3 cifras decimales.

round(3*exp(1)-pi,3)

## Tarea 4
#Dad el módulo del número complejo (2+3i)^2/(5+8i) redondeado a 3 cifras decimales.
round(Mod((2+3i)^2/(5+8i)),3)

