# Diseño por contrato y test first

## Definiciones

* Clase: Conjunto de objetos que, por lo menos, tienen el mismo comportamiento.
Todos los objetos de una clase entienden los mismos mensajes y responden a
estos de la misma manera.

## Detalles de Smalltalk

Se aclaran algunos detalles como qué es garbage-collection y como funciona el
sistema de tipado no estatico de Smalltalk, que detecta problemas en el tiempo
de ejecución.

## Diseño por contrato

Recordamos de materias anteriores conceptos básicos como firmas de funciones o
de métodos en estos casos, que determinan como se interactua con estos métodos,
es decir cuántos y cuáles parámetros se reciben (el significado de cada
parámetro).

También tenemos precondiciones, que son condiciones (claramente) que indican
cómo debe estar el medio antes de que un objeto reciba un mensaje. Si una
precondición no se cumple entonces ahí es que se lanza un excepción. Las
postcondiciones representan el estado en el que debe quedar el medio luego de
la finalización del método. Su las postcondiciones no se cumplen, entonces ahí
si tenemos un problema nuestro como programadores, y tenemos que revisar el
método en cuestión. Para esto es que nos sirven las pruebas unitarias.

Finalmente también tenemos el concepto de invariantes, que son condiciones
constantes expresadas en las precondiciones que no se deben ver alteradas por
las postcondiciones.

## Pruebas Unitarias

Una prueba unitaria es un prueba que comprueba la corrección de una única
responsabilidad de un método. Deberíamos tener al menos una prueba unitaria por
cada postcondición.

Así el flujo de trabajo óptimo para implementar nueva funcionalidad en nuestros
objetos debería asimilarse al siguiente:

1. Determinar firmas de métodos.
2. Determinar precondiciones y definir excepciones.
3. Determinar post condiciones y definir pruebas unitarias.
4. Escribir métodos.
5. Ejecutar pruebas unitarias.
6. Corregir métodos.
7. Repetir desde el paso 5 hasta que las pruebas pasan.

Hay una variante de esta metodología que consiste en ir escribiendo una
postcondición a la vez, implementar el código para esa postcondición solo,
y luego correr la prueba unitaria para esa postcondición. Cuando pase la prueba
para esa postcondición, vamos a la siguiente, y repetimos.

### Filosofía

La idea es separar una funcionalidad en dos partes, la parte en la que pensamos
en qué debe hacer mi objeto (que responsabilidades tiene) y luego la parte de
programar como tal la funcionalidad, una vez ya tenemos claro que es lo que
hace nuestro método u objeto.

Otra ventaja es que las pruebas unitarias se convierten en especificaciones de
lo que se espera como respuesta del objeto ante el envío de un mensaje. Es
decir, un nuevo desarrollador en un proyecto puede introducirse y formarse una
idea del proyecto en base a las pruebas. Funcionan a manera de documentación.

Esto lleva a que si vamos a escribir pruebas, deberíamos tener una prueba ANTES
de escribir el código. Primero vemos la problemática desde afuera, sin estar
pensando en cómo solucionar el problema siquiera, nada de solucionar, solo
planteamos el problema.

Las pruebas permiten independizarnos del factor humano, ya que las podemos
automatizar, se van a correr siempre y siempre igual.

### Refactor

Si nuestro objetivo es escribir pruebas y hacerlas pasar, puede ser que algo
de nuestro código haya quedado desprolijo cuando implementamos algo para pasar
una pruebas con la intensión de pasara la prueba y ya. Acá es cuando podemos
volver atrás y retocar un poco el código manteniendo su funcionamiento
(volvemos a este tema en algunas clases).

## Inicializadores

La idea de un inicializador o constructor es que todo objeto al ser creado
quede en una condición considerada válida (es decir, que queden cumplidas)
todas las precondiciones.

## Atributos y Propiedades

Hay una pequeña distinción entre estos dos conceptos. Atributos son los piezas
de información que contiene un objeto, mientras que las propiedades son las
propiedades son las que muestra. Por ejemplo, podríamos tener un vector que
solo guarde información de su coordenada `x` e `y`, esas serían los atributos,
pero una propiedad podría ser el módulo de ese vector, que se calcula cuando
se solicita a partir de los atributos guardados.

## Componentes

En la programación orientada a objetos vemos a cada objeto como un componente.
Cada componente debe tener un comportamiento esperado y nuestro desarrollo no
debe depender de la manera en cómo está implementado esta comportamiento para
usarlo (encapsulamiento). Además cada componente tiene su contrato que nos
permite saber cómo interactuar con este componente.

Encapsulamiento + Contrato = Abstracción.

# Resumen

* Los objetos se implementan en base a un modelo cliente-proveedor.
* De las precondiciones deducimos las excepciones.
* Con las postcondiciones escribimos las pruebas unitarias.
* Las pruebas unitarias guían la implementación de a incrementos pequeños.
