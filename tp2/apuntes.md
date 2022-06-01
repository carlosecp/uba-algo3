# Algoritmos y Programacion 3 - TP2 1C 2022

## Enunciado

### Tipos de vehiculos:

* Moto
* Auto
* 4x4

### Obstaculos

* Pozos:
	* Moto: +3 penalizacion.
  * Auto: +3 penalizacion.
  * 4x4: +2 penalizacion luego de haber atravesado dos pozos.

> NOTA: Esto sugiere que debemos llevar algun control sobre la cantidad de
penalizaciones que tiene cada vehiculo.

> NOTA: Cada vehiculo tiene un tipo de penalizacion diferentes, pero todos
tienen una penalizacion cuando se encuentran con un pozo.

* Piquete: 
  * Moto: +2 penalizacion.
  * Auto: No pueden pasar (dan la vuelta). 
  * 4x4: Lo mismo que para los autos.

> PREGUNTA: Esto implica que los piquetes utilizan cierto espacio???

* Control Policial:
  Para todos los vehiculos existe la posibilidad de que no haya penalizacion
	pero aparentemente esta es aleatoria.
    * Moto: 0.8 de probabilidad.
    * Auto: 0.5 de probabilidad.
    * 4x4: 0.3 de probabilidad.

### Sorpresas:

* Favorable: -20% de los movimientos hechos.
* Desfavorable: +25% de los movimientos hechos.
* Cambio de Vehiculo:
   * Moto => Auto
   * Auto => 4x4
   * 4x4 => Moto

> NOTA: Aca vamos a tener que hacer algo que lo que decia Pablo en el video del
ajedrez cuando hablaba de composicion. Porque queremos cambiar el vehiculo que
utiliza el jugador solamente, pero queremos conservar las penalizaciones y
movimientos que ha ido haciendo el jugador supongo??? Tenemos que deasociar
esos dos datos para poder hacer el cambio de vehiculo tranquilamente.

> NOTA: Las sopresas aparecen en el mapa pero no se sabe que tipo de sorpresa
es hasta que el usuario las accione.

### Escenario

* No se puede ver a mas de dos manzanas a la redonda.
* Se puede ver la bandera a cuadros al final del recorrido.
* El resto del mapa permanece a las sombras.

> PREGUNTA: El tamanio del escenario no sera fijo??? Segun que varia??? El
tamanio de la ventana quiza??? En este caso si es fijo cuando ya se inicia el
juego no???

> NOTA: Hay que llevar control de los puntajes finales para hacer un ranking.

> PREGUNTA: Como se calcula el puntaje de cada partida??? Supongo que como el
juego consiste en llegar al final en la menor cantidad de movimientos posibles,
el puntaje de cada partida es la cantidad de movimientos en la que se alcanzo
la meta, mientras menos movimientos, mejor partida.

## Desarrollo

> NOTA: Hay que ver como hacermos para descartar los archivos que no quieren
que entreguemos. Podemos manejar estos archivos en repositorio a parte, por
ejemplo los diagramas UML antes de compilar. Pero con el tema de los build
files y los archivos `.class` que sobren y esas cosas lo que podemos hacer es
agregarlos al `.gitignore` o algo asi y que se generen en el CI, que directo
vayan al repo despues del CI.
