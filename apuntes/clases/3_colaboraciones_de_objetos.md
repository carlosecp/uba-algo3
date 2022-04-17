# Colaboraciones de Objetos

## Definiciones

* Objeto receptor: Es quien recibe el mensaje. Brinda un servicio, por eso
también es conocido como "servidor".
* Objeto cliente: Es quien manda el mensaje y consume el servicio.

## Delegación

Si un primer objeto necesita información de un segundo objeto, este segundo
objeto tiene que implementar la funcionalidad necesaria y solo expone en su
contrato una forma de acceder al resultado únicamente de las operaciones que
haga el segundo de manera interna. En este caso se dice que el primer objeto
"depende" del segundo. Todo objeto cliente depende del objeto servidor. El
objeto cliente delega en el receptor, porque delega cierta responsabilidad que
al cliente no le importa cómo implemente el servidor.

Hay tres formas en las que el cliente puede conocer al receptor del cuál va a
consumir un servicio:

* El ojbeto receptor se envía como argumento.
* El objeto receptor se obtiene como respuesta al envío de un mensaje a otro
objeto.
* El objeto cliente contiene una referencia al receptor. Esto es conocido como
"asociación".

## Herencia

Es programar por diferencia. Establecemos una relación entre diferentes clases
e implementamos un objeto base/madre que contenga la funcionalidad común, así
solo implementamos esta funcionalidad una sola vez. Después simplemente
implementamos las diferencias de las variantes específicas de esta clase.

### Clases Abstractas

Son clases que no pueden tener instancias de esta clase. Basicamente son clases
que usamos para agrupar funcionalidad, que luego va a ser tomada como base de
clases concretas, estas últimas si pueden ser instanciadas.

A pesar de que la clase en sí no puede ser instanciada, podemos definir un
comportamiento por defecto para algunos de sus métodos, pero también podemos
definir un método que obligatoriamente debamos especificar para cada una de
las subclases que hereden de esta clase abstracta. Estos métodos son conocidos
como "métodos abstractos". Las subclases tienen, si o si, que implementar este
método.
