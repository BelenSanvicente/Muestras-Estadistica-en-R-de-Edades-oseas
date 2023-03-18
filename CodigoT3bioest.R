# Código tarea 3 Estimación Bioestadística
library(readr)
library(fdth)
library(DescTools)
library(readxl)
library(EnvStats)
library(PairedData)

######################################################################
EO <- read_excel("C:/Users/Admin/Downloads/EO.xlsx")
#View(EO)
# Poner los datos en forma de listas
data<-data.frame(EO)
# Mostrar la variable Data
data
# Datos columna Evaluador 1 RX
RX1<-data$a1
# Datos columna
DXA1<-data$b1
# Datos columna
RX2<-data$a2
# Datos columna
DXA2<-data$b2

# Intervalo de confianza para la media y la varianza al 95%. Para Evaluador 1 RX
t.test(RX1)
varTest(RX1)

# Intervalo de confianza para la media y la varianza al 95%. Para Evaluador 1 DXA
t.test(DXA1)
varTest(DXA1)

# Intervalo de confianza para la media y la varianza al 95%. Para Evaluador 2 RX
t.test(RX2)
varTest(RX2)

# Intervalo de confianza para la media y la varianza al 95%. Para Evaluador 2 DXA
t.test(DXA2)
varTest(DXA2)

# Primer método propuesto para e IC de madias
# IC Diferencia de medias para RX
c <- RX1-RX2
t.test(c)
# IC Diferencia de medias para DXA
d <- DXA1-DXA2
t.test(d)
# IC para la diferencia de medias de RX
with(data, t.test(RX1,RX2,paired=TRUE))
# IC para la diferencia de medias de DXA
with(data, t.test(DXA1,DXA2,paired=TRUE))

# IC para el cociente de varianzas de RX
with(data, var.test(RX1,RX2,paired=TRUE))
# IC para el Cociente de varianzas de DXA
with(data, var.test(DXA1,DXA2,paired=TRUE))
#####################################################################
# Datos para el intervalo de 5 a 9 años
E059 <- read_excel("C:/Users/Admin/Downloads/E059.xlsx")
#View(E059)
# División en intervalos
# Poner los datos en forma de listas
data1<-data.frame(E059)
# Mostrar la variable Data
data1
# Datos columna Evaluador 1 RX intervalo 5-9 años
RX1m<-data1$ma1
# Datos columna Evaluador 1 DXA intervalo 5-9 años
DXA1m<-data1$mb1
# Datos columna Evaluador 2 RX intervalo 5-9 años
RX2m<-data1$ma2
# Datos columna Evaluador 2 DXA intervalo 5-9 años
DXA2m<-data1$mb2

# Intervalo de confianza para la media y la varianza al 95%. Para Evaluador 1 RX 5-9
t.test(RX1m)
varTest(RX1m)

# Intervalo de confianza para la media y la varianza al 95%. Para Evaluador 1 DXA 5-9
t.test(DXA1m)
varTest(DXA1m)

# Intervalo de confianza para la media y la varianza al 95%. Para Evaluador 2 RX 5-9
t.test(RX2m)
varTest(RX2m)

# Intervalo de confianza para la media y la varianza al 95%. Para Evaluador 2 DXA 5-9
t.test(DXA2m)
varTest(DXA2m)
######################################################################
# Datos para el intervalo de 10 a 17 años
EO1017 <- read_excel("C:/Users/Admin/Downloads/EO1017.xlsx")
#View(EO1017)
data2<-data.frame(EO1017)
# Mostrar la variable Data
data2
# Datos columna Evaluador 1 RX intervalo 5-9 años
RX1M<-data2$Ma1
RX1M
# Datos columna Evaluador 1 DXAX intervalo 5-9 años
DXA1M<-data2$Mb1
# Datos columna Evaluador 2 RX intervalo 5-9 años
RX2M<-data2$Ma2
# Datos columna Evaluador 2 DXA intervalo 5-9 años
DXA2M<-data2$Mb2

# Intervalo de confianza para la media y la varianza al 95%. Para Evaluador 1 RX 10 17
t.test(RX1M)
varTest(RX1M)

# Intervalo de confianza para la media y la varianza al 95%. Para Evaluador 1 DXA 10 17
t.test(DXA1M)
varTest(DXA1M)

# Intervalo de confianza para la media y la varianza al 95%. Para Evaluador 2 RX 10 17
t.test(RX2M)
varTest(RX2M)

# Intervalo de confianza para la media y la varianza al 95%. Para Evaluador 2 DXA 10 17
t.test(DXA2M)
varTest(DXA2M)
######################################################################
# Para la edad cronológica
edad <- data$E
# Intervalo de confianza para la media y la varianza al 95%. Para la edad
t.test(edad)
varTest(edad)

# Edad cronológca en intervalos
# De 5 a 9
edad5a9 <- data1$E
edad5a9
mean(edad5a9)
var(edad5a9)
t.test(edad5a9)
varTest(edad5a9)
# De 10 a 17
edad10a17 <-data2$E
mean(edad10a17)
var(edad10a17)
t.test(edad10a17)
varTest(edad10a17)
######################################################################
#Tamaño de muestra teórico 100 y 30.
azarRX1 <- sample(RX1, size = 30)
azarRX2 <- sample(RX2, size = 30)
azarDXA1 <- sample(DXA1, size = 30)
azarDXA2 <- sample(DXA2, size = 30)
# IC para la media de la muestra aleatoria de las muestras.
t.test(azarRX1)
t.test(azarRX2)
t.test(azarDXA1)
t.test(azarDXA2)
# IC para la varianza de la muestra aleatoria de las muestras.
varTest(azarRX1)
varTest(azarRX2)
varTest(azarDXA1)
varTest(azarDXA2)
.
