[comment]: # (vim: setlocal spell spelllang=es)
# Resolución de problemas con objetos

La forma que propone la programacion orientada a objetos para resolver
problemas consiste en:

* Encontrar entidades del dominio del problema que van a ser nuestros objetos.
* Establecer cómo interactúan esas entidades para resolver el problema.
Buscamos los "mensajes" que los objetos se envían, en qué orden y bajo qué
condiciones lo hacen.
* Determinar cómo hacen esos objetos pare responder a los mensajes.

Básicamente nos preguntamos: ¿quiénes interactúan?, ¿qué relación tiene cada
entidad con las demás? y ¿cómo es esa relación, que esperan sacar de ahí?

## Definiciones

* Dominio del problema: Conjunto de conceptos que es necesario conocer para
entender el problema del cliente (el enunciado).
* Objeto: Una entidad que existe en tiempo de ejecución y que puede enviar y
recibir mensajes. Va a actuar, va a tener comportamiento. No es simplemente una
colección de datos (struct), sino que va a actuar. Cada objeto tiene su propia
identidad que lo distingue de otros objetos incluso del mismo tipo.
* Comportamiento: La forma en la que un objeto responde a determinado mensaje.
Las posibles respuestas a los mensajes recibidos por un objeto.
* Delegación: Cuando un objeto, para responder un mensajes a otros objetos,
decimos que delega ese comportamiento en otros objetos.
* Método: La forma en la que se implementan los mensajes.

## Objetos, Estado y Comportamiento

Los objetos tienen estado, que puedo cambiar a traves del tiempo. El estado del
objeto es basicamente los datos que este almacena y sobre los que el objeto va
a actuar. Los objetos tienen comportamiento, que es el conjunto de posibles
respuestas de un objeto ante los mensajes que recibe.

### Encapsulamiento

El estado de los objetos suele ser privado. Es decir que el objeto va a
esconder su estado y si fuese necesario accederemos a él mediante mensajes.
Aca es cuando introducimos el concepto de *"encapsulamiento"*, que define a
cada objeto como el responsable de responder a los mensajes que recibe, sin
que quien le envía el mensaje tenga que saber cómo lo hace.

Los objetos deben manejar su propio comportamiento, sin que manipulemos su
estado desde afuera ("Tell don't ask").

## Resumen

* Un objeto tiene estado propio y un determinado comportamiento.
* El comportamiento de un objeto es el conjunto de posibles resuestas que
el objeto puede dar antes los diferentes mensajes recibidos.
* El encapsulamiento consiste en mantener las implementaciones de la
funcionalidad del objeto privado solo para el objeto. Es decir, cuando
interactuamos con un objeto, no nos debe importar que informacion tiene o cómo
la maneja, solo cuáles mansajes le podemos enviar.
