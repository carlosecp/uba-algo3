[comment]: # (vim: setlocal spell spelllang=es)
# Resumen

## Clase 1

* Comportamiento: Conjunto de operaciones predefinidas a las que puede
responder un objeto. De manera más informal, son los métodos públicos que tiene
este objeto.

* <u>Encapsulamiento:</u> Consiste en separar la interfaz contractual de la
abstracción y su implementación. Para esto se deben ocultar el estado de un
objeto y se debe proveer una forma de interactuar ciertas propiedades solamente
a través de mensajes especificados en el contrato. Cuando interactuamos con un
objeto, no nos debe importar qué información tiene ni cómo la administra,
solamente cuáles mensajes le podemos enviar.

## Clase 2

Workflow para escribir pruebas unitarias:

1. Determinar firmas de métodos.
2. Determinar precondiciones y definir excepciones.
3. Determinar postcondiciones y definir pruebas unitarias.
4. Escribir métodos.
5. Ejecutar pruebas unitarias.
6. Corregir métodos.
7. Repetir desde el paso 5 hasta que las pruebas pasan.

También podemos ir escribiendo una post condición a la vez y una pruebas para
esa postcondición. Una vez salgamos de esta postcondicion y sus pruebas pasen,
vamos a la siguiente.

De las precondiciones deducimos las excepciones. Si una precondición no se
cumple, entonces ahí lanzamos una excepción. Con las postcondiciones escribimos
las pruebas unitarias.

## Clase 3

* Delgación: Es cuando un objeto le pasa la responsabilidad de una tarea a
otro del que depende, sin importar como esta segundo objeto implemente esta
funcionalidad.

* <u>Herencia:</u> Consiste en agrupar las semejanzas entre dos clases en una
sola clase madre de la cual luego van a heredar las subclases.

* Los objetos pueden colaborar por herencia o por delegación. Usamos herencia
cuando vamos a reutilizar las implementaciones que heredamos del padre tal y a
como están, y si vamos a utilizar todo el contrato. Si vamos a realizar
modificaciones a la interfaz, como eliminar métodos por ejemplo, ahí usamos
delegación más bien.

* Hay una diferencia entre composición y delegación, y es que la composición
es cuando se asociacian objetos al momento de la creación de estos objetos.

* Las clases abstractas son aquellas que no se pueden instanciar, por lo que
nos sirven unicamente como base para que subclases hereden de esta clase. Las
clases abstractas pueden implementar comportamiento por defecto pero si
queremos forzar una implementación específica para cada subclase que herede
de esta utilizamos "métodos abstractos".

 # Clase 4