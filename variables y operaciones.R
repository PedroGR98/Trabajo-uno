######### ASIGNACION DE VARIABLES ######### 

# Creando la variable x
x <- 5

# Creando la variable a
a <- 5

# Creando la variable b
b <- 10

# Calculando la variable y
y <- a + x * b


######### OPERACIONES DE COMPARACION ######### 

resultado <- a > b
resultado <- a >= b
resultado <- a < b
resultado <- a <= b
resultado <- a == b

######### OPERACIONES DE LOGICAS #########

h1 <- a > b # esto es como preguntar ¿estoy sentado en el cerro?
h2 <- x < y # esto es como preguntar ¿estoy haciendo clases?
print(h1)
print(h2)

# EL Operador OR (o) en R -> ||

respuesta <- h1 || h2
print(respuesta)

# El Operador AND (y) en R -> &&

respuesta <- h1 && h2
print(respuesta)

# El Operador NOT (no) en R -> !

respuesta <- (h1 && h2) || (h1 || h2)
print(!respuesta)


######### OPERACIONES DE ARITMETICOS #########

resultado <- a + b
resultado <- a - b
resultado <- a / b
resultado <- a * b
resultado <- a ** b # elevado
resultado <- a ^ b # elevado
resultado <- a %% b # mod: obtener el resto de una division

# Jugando con el mod ( %% )

# numeros pares
resultado <- 8 %% 2
print(resultado)

resultado <- 4 %% 2
print(resultado)

resultado <- 50 %% 2
print(resultado)

# numeros impares

resultado <- 9 %% 2
print(resultado)

resultado <- 5 %% 2
print(resultado)

resultado <- 3 %% 2
print(resultado)


# ¿que pregunta puedo hacer para saber si un valor es par o impar?
# Resp: que nos de cero

resultado <- 3 %% 2 == 0
print(resultado)

resultado <- 8 %% 2 == 0
print(resultado)