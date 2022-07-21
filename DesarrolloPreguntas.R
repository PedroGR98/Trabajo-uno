
setwd("~/GitHub/Trabajo-Uno")

rm(list = ls())



### Ejercicio 1 ###


set.seed(10)
sample(c("SI","NO"), 10, replace = T)

votosSI<- "SI"
votosNO<- "NO"

# Funcion votaciones, recibe el total/ votosSI/ votosNO, con la condicion de que votosSI + votosNO = total.
votaciones <- function(total,votosSI,votosNO){
if (votosSI >= ((total/2)+1)) {print("Ha ganado el SI")} 
    else{print("votosSI no tiene Quorum")
    if (votosSI >= total*0.3)
      {print("votosSI tiene un 30% de Quorum")
      if (votosSI >= total*0.3 & votosNO < total*0.3) {print("Ha ganado el SI")}
      else{
        if (votosNO >= ((total/2)+1)) {print("Ha ganado el NO")} 
        else{
          print("votosNO tiene un 30% de Quorum")
          if (votosSI == votosNO) {print("Los Quorums son identicos, ha ganado el NO debido al empate")} 
          else{
            if (votosSI > votosNO) {print("Ha ganado el SI")}
            else{print("Ha ganado el NO")}
              }
            }
           }
      } else{print("Ha ganado el NO")
            }
          }
                                              }

# Ejecuta la funcion, recibe los parametros total; votosSI; votosNO.
votaciones(10,6,4)


# Funcion votaciones_total, recibe solamente el parametro "total" de votos, los votosSi y votosNO 
votaciones_total <- function(total)
  set.seed(total)
  padron <- sample(c("SI","NO"),total,replace = TRUE)
  padron <- as.data.frame(padron)
  names(padron) <- c("votos")
  votosSI <- sum(with(padron,votos == "SI"))
  votosNO <- sum(with(padron,votos == "NO"))
  
  if (votosSI >= ((total/2)+1)) {print("Ha ganado el SI")}
  else {print("votosSI no tiene Quorum")
    if (votosSI >= total*0.3) {print("votosSI tiene un 30% de Quorum")
      if (votosSI >= total*0.3 & votosNO < total*0.3) {
        print("Ha ganado el SI")} 
      else{
        if (votosNO >= ((total/2)+1)) {print("Ha ganado el NO")}
        else{print("votosNO tiene un 30% de Quorum")
          if (votosSI == votosNO) {print("Los Quorums son identicos, ha ganado el NO debido al empate")}
          else{
            if (votosSI > votosNO) {print("Ha ganado el SI")} 
            else{print("Ha ganado el NO")}
              }
            }
          }
                              } else{print("Ha ganado el NO")}
        }


# Ejecuta la funcion, solo hay que ingresar el total de votos, 10 por defecto segun el enunciado.
votaciones_solo_total(10)

#La funcion set.seed() es una funcion util al momento de generar numeros aleatorios. 
#La funcion samples() es una funcion que permite generar un vector con un cierto tipo de dato, con un tamaño de muestra definido, pudiendo reemplazar o no los datos aleatoriamente a traves de un vector de probabilidades o ejecutando set.seed() anteriormente.








