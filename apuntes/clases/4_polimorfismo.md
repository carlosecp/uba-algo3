[comment]: # (vim: setlocal spell spelllang=es)
# Polimorfismo

Es una propiedad por la que es posible enviar mensajes sintácticamente iguales
a objetos de tipo distinto, estando en el mismo contexto. 

Por ejemplo:

```java
Collection <Cantante> cantantes;

// ...

cantantes.add(new Artista());
cantantes.add(new Canario());
cantantes.add(new Gallo());

// ...

for (Cantante cantante: cantantes) {
	cantante.cantar();
}
```

Acá lo único que sabe el ciclo for es que a cada elemento por el que va pasando
le va a poder enviar el mensaje `cantar`, sin importar ni el orden en el que
estan ordenados los elementos ni si alguno de ellos implementa otros métodos
extra ni nada. El punto es que todos tiene el método `cantar` que cumple el
mismo propósito aunque las implementaciones sean diferentes. Vemos como esto
nos ayuda con el encapsulamiento también porque nos permite solo enforcarnos
en el contrato.

Polimorfismo es básicamente definir una interfaz común para varios objetos.

## Polimorfismo en vez de Condicionales
