# c(): para definir un vector
# scan(): para definir un vector con enters
# fix(x): para modificar visualmente el vector x
# rep(a,n): para definir un vector constante que contiene el dato a
# repetido n veces

## Vectores
c(1,2,3)

rep("Mates",7)

scan()
# ejercicio
#1. Repite tu año de nacimiento 10 veces
año <- rep(1990,10)
año
#2. Crea el vector que tenga como entradas 16, 0, 1, 20, 1, 7, 88, 5, 1, 9, 
# llámalo vec y modifica la cuarta entrada con la función fix()
c(16, 0, 1, 20, 1, 7, 88, 5, 1, 9) -> vec
fix(vec)
vec

# Progresiones y Secuencias
# seq(a,b,by=d): para generar una progresión aritmética de diferencia d que empieza en a hasta llegar a b
# seq(a,b, length.out=n): define progresión aritmética de longitud n
# que va de a a b con diferencia d. Por tanto d=(b−a)/(n−1)
# seq(a,by=d, length.out=n): define la progresión aritmética de longitud n
# y diferencia d que empieza en a
# a:b: define la secuencia de números enteros (ℤ) consecutivos entre dos números a y b
seq(5,60, by= 5)
seq(100,6, by = -9)
seq(10,100, length.out = 5)
seq(4, length.out = 7 , by=3)
1:10
60: -5 # Crean vectores directamente de tal numero a tal

#Ejercicio
# Imprimid los números del 1 al 20
1:20
seq(1,20)
seq(1,20, by=1)
# Imprimid los 20 primeros números pares
seq(2,length.out = 20, by=2)
# Imprimid 30 números equidistantes entre el 17 y el 98, mostrando solo 4 cifras significativas 
print(seq(17,98,length.out = 30),4)
?seq
##

##Funciones
x= 1:10
x
x*2
sqrt(x)

coed= function(v){ #ejemplo de una funcion creada por nosotros
  (sqrt(v)^3)+100
}
sapply(x,FUN=coed)

(1:10)+(1:10)
(1:10)*(1:10)
(1:10)^(1:10)
y= x^2/(x+1)
y

# Dado un vector de datos x podemos calcular muchas medidas estadísticas acerca del mismo: 
#   
#   - length(x): calcula la longitud del vector x
#   - max(x): calcula el máximo del vector x
#   - min(x): calcula el mínimo del vector x
#   - sum(x): calcula la suma de las entradas del vector x
#   - prod(x): calcula el producto de las entradas del vector x
#   - mean(x): calcula la media aritmética de las entradas del vector x
#   - diff(x): calcula el vector formado por las diferencias sucesivas entre entradas del vector original x
#   - cumsum(x): calcula el vector formado por las sumas acumuladas de las entradas del vector original x
#       Permite definir sucesiones descritas mediante sumatorios
#       Cada entrada de cumsum(x) es la suma de las entradas de x hasta su posición
#   - sort(x): ordena el vector en orden natural de los objetos que lo forman: el orden numérico creciente, orden alfabético...
#   - rev(x): invierte el orden de los elementos del vector x

#Ejercicio
# Combinad las dos funciones anteriores, `sort` y `rev` para crear una función que 
#dado un vector x os lo devuelva ordenado en orden decreciente.
x = c(5, 4, 7, 6,2,3,1)
x
decr= function(x){
  rev(sort(x))
}

decr(x)

# Razonad si aplicar primero `sort` y luego `rev` a un vector $x$ daría en general
# el mismo resultado que aplicar primero `rev` y luego `sort`.

# Sort siempre ordena de manera ascendente, si lo aplicamos al final no funciona.
# Primero ordenamos ascendete (sort) y con rev lo invertimos creando descendendia
 
# Investigad la documentación de la función `sort` (`?sort`) para leer si 
# cambiando algún argumento de la misma podéis obtener el mismo resultado que 
# habéis programado en el primer ejercicio.
?sort
sort(x,decreasing = TRUE)
##

## Subvectores
# vector[i]: da la $i$-ésima entrada del vector
# 
# - Los índices en R empiezan en 1
# vector[length(vector)]: nos da la última entrada del vector
# vector[a:b]: si $a$ y $b$ son dos números naturales, nos da el subvector con las entradas del vector original que van de la posición $a$-ésima hasta la $b$-ésima.
# vector[-i]: si $i$ es un número, este subvector está formado por todas las entradas del vector original menos la entrada $i$-ésima. Si $i$ resulta ser un vector, entonces es un vector de índices y crea un nuevo vector con las entradas del vector original,cuyos índices pertenecen a $i$
# vector[-x]: si $x$ es un vector (de índices), entonces este es el complementario de vector[$x$]
# Indices:
# which(x cumple condición): para obtener los índices de las entradas del vector $x$ que satisfacen la condición dada
# which.min(x): nos da la primera posición en la que el vector $x$ toma su valor mínimo
# which(x==min(x)): da todas las posiciones en las que el vector $x$ toma sus valores mínimos
# which.max(x): nos da la primera posición en la que el vector $x$ toma su valor máximo
# which(x==max(x)): da todas las posiciones en las que el vector $x$ toma sus valores máximos

x = seq(5,100, by=5.5)
x
x[5]
x[length(x)] #ultimo
x[2:4]
x[4:2]
x[seq(2, length(x),by=2)] #posicion par
x[-seq(1, length(x),by=2)]
x[c(1,2,10)]
x[x<50 & x>10]
x[x%%2==0] # numeros pares
x[x%%2==1] # numeros impares

which(x>60)
x[which(x>60 | x<11)]

## elemento NA (no es un valor es un concepto)
13 %%2 == 0 # False. Podemos usar los operadores logicos para hacer preguntas

x = c(1:10)
x
x[length(x) + 5] = 9
x

sum(x)
sum(x,na.rm=TRUE)

is.na(x)
which(is.na(x))
x[which(is.na(x))]

#Arreglar NA con la media
y=x
y
y[!is.na(y)] # Quito NA y podemos operar con cualquier orden
y[is.na(y)] = mean(y,na.rm=TRUE)
y

na.omit(y) # Elimina los NA, pero no es aconsejable

## FActores

# factor(vector,levels=...): define un factor a partir del vector y dispone de algunos parámetros 
# que permiten modificar el factor que se crea:
# 
# levels: permite especificar los niveles e incluso añadir niveles que no aparecen en el vector
# labels: permite cambiar los nombres de los niveles
# levels(factor): para obtener los niveles del factor
# ordered(vector,levels=...): función que define un factor ordenado y tiene los mismos parámetros
# que factor

nombres = c("Juan", "Paco", "Ricardo", "Juan", "Paquito" , "Juan", "Paco")
nombres
nombres.fac = factor(nombres) # Coge como niveles los datos repetidos
nombres.fac

nombres.fac2= factor(nombres, levels = "Paco") # Solo muestra si es ==
nombres.fac2
nombres.fac3= factor(nombres, levels = c("Paco","Antonio","Ricardo"))
nombres.fac3

sexos= c("H","M","M","H","H")
sexos.fact = factor(sexos, levels = c("H","M","B"), labels = c("Mujer", "Hombre", "Hemafrodita"))
sexos.fact

levels(sexos.fact) #Comprobar niveles
levels(sexos.fact) = c("fem","mas","bis")
sexos.fact
labels(sexos.fact) #Comprobar etiquetas

notas = ordered(c(1,1,1,2,2,3,2,4,1,3,3,4,2,3,4,4),levels = c(1,2,3,4), labels = c("Sus","Apr","Not","Exc"))
notas # Permite dar un orden de importancia a los levels

## Lista
# List. Lista formada por diferentes objetos, no necesariamente del mismo tipo, 
# cada cual con un nombre interno
# 
# - `list(...)`: función que crea una list
# - Para obtener una componente concreta usamos la instrucción `list$componente`
# - También podemos indicar el objeto por su posición usando dobles corchetes: `list[[i]]`. 
# Lo que obtendremos es una list formada por esa única componente, no el objeto que forma la componente
# 
# Obtener información de una list:
# - `str(list)`: para conocer la estructura interna de una list
# - `names(list)`: para saber los nombres de la list

x = c(1,-2,3,4,-5,6,7,-8,-9,0)
miLista = list(nombre = "X", vector = x, media = mean(x), sumas = cumsum(x),topacio= "penco")
miLista
miLista$topacio
miLista[[5]] #Accedemos al vector de la lista, con[] accedemos ala entrada de la lista

names(miLista)
str(miLista)

## Matrices
# matrix(vector, nrow=n, byrow=valor_lógico)`: para definir una matriz de $n$ filas formada por las entradas del vector
# - `nrow`: número de filas
# - `byrow`: si se iguala a TRUE, la matriz se construye por filas; si se iguala a FALSE (valor por defecto), se construye por columnas.
# -` ncol`: número de columnas (puede usarse en lugar de nrow)
# - R muestra las matrices indicando como [$i,$] la fila $i$-ésima y [$,j$] la columna $j$-ésima
# - Todas las entradas de una matriz han de ser del mismo tipo de datos

m = matrix(1:10,nrow=2)
m

m = matrix(1:10,nrow=2,byrow=T) # Escribe por filas
m

ones= matrix(1,nrow = 5, ncol = 8) # matriz de 1 o 0 ...
ones

# Ejercicio
#¿Cómo definirías una matriz constante? Es decir, ¿cómo definirías una matriz $A$ tal que  i=1,...,n; j = 1,...,m, a_{i,j}=k 
#siendo k€R? Como R no admite incógnitas, prueba para el caso específico $n = 3, m = 5, k = 0
A = matrix(0, nrow = 3, ncol = 5)
A
# - Con el vector vec = (1,2,3,4,5,6,7,8,9,10,11,12) crea la matriz
vec = c(1,2,3,4,5,6,7,8,9,10,11,12)
matriz= matrix(vec,nrow = 3,ncol = 4)
matriz

# Construir matrices con vectores
# - `rbind(vector1, vector2, ...)`: construye la matriz de filas vector1,  vector2,...
# - `cbind(vector1, vector2, ...)`: construye la matriz de columnas vector1,  vector2,...
# - Los vectores han de tener la misma longitud
# - También sirve para añadir columnas (filas) a una matriz o concatenar por columnas (filas) matrices con el mismo número de filas (columnas)
# - `diag(vector)`: para construir una matriz diagonal con un vector dado
# - Si aplicamos diag a un número $n$, produce una matriz identidad de orden $n$

zeros= matrix(0,nrow = 3, ncol = 4) 
zeros
rbind(zeros, c(1,1,1,1)) # Ahora  pasa a ser 4x4
cbind(zeros, c(2,2,2)) 

#Submatrices
# - `matriz[i,j]`: indica la entrada ($i,j$) de la matriz
#   - `matriz[i,]`: indica la fila $i$-ésima de la matriz, 
#   - `matriz[,j]`: indica la columna $j$-ésima 
#  

x = diag(5,nrow = 5)
x
x[2,2]
x[2,]
x[,2]
x[c(2,5),3:5]

# Funciones
# - `diag(matriz)`: para obtener la diagonal de la matriz
# - `nrow(matriz)`: nos devuelve el número de filas de la matriz
# - `ncol(matriz)`: nos devuelve el número de columnas de la matriz
# - `dim(matriz)`: nos devuelve las dimensiones de la matriz
# - `sum(matriz)`: obtenemos la suma de todas las entradas de la matriz
# - `prod(matriz)`: obtenemos el producto de todas las entradas de la matriz
# - `mean(matriz)`: obtenemos la media aritmética de todas las entradas de la matriz
# - `colSums(matriz)`: obtenemos las sumas por columnas de la matriz
# - `rowSums(matriz)`: obtenemos las sumas por filas de la matriz
# - `colMeans(matriz)`: obtenemos las medias aritméticas por columnas de la matriz
# - `rowMeans(matriz)`: obtenemos las medias aritméticas por filas de la matriz

rowSums(x)
colSums(x)
colMeans(x)

# `apply(matriz, MARGIN=..., FUN=función)`: para aplicar otras funciones a las filas o las columnas de una matriz
# - `MARGIN`: ha de ser 1 si queremos aplicar la función por filas; 2 si queremos aplicarla por columnas; o c(1,2) si la queremos aplicar a cada entrada

A= matrix(1:12,ncol = 4)
apply(A, MARGIN = c(1,2), FUN = function(x){sqrt(x)})
apply(A, MARGIN = 1, FUN = function(x){sqrt(sum(x^2))})
