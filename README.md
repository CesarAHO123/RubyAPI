<h1>Esta es una API realizada con Rails para MonoEstereo</h1>
<h2>Video explicativo: https://www.youtube.com/watch?v=ocPT3M4rXGk&t=2s&ab_channel=AlejandroHernandez </h2>
<h2>La api cuenta con los siguientes Endpoints</h2>
<h3>categories/</h3>
(Get)(Post)
<h1>categories/<int:id></h1>
 (Get)(Put)(Delete)
 <h3>products/</h3>
 (Get)(Post)
 <h3>products/<int:id></h3>
 (Get)(Put)(Delete)
 <h2> Ejemplos JSON:</h2>
  Categorias:
   {
        "id": 1,
        "name": "Electronicos",
        "description": "Productos electronicos"
   }
   Productos: 
   {
    "id": 4,
    "name": "Computadora",
    "description": "Computadora Dell",
    "categories": [
        {
            "id": 1,
            "name": "Electronicos",
            "description": "Productos electronicos"
        }
    ]
}
   Json para agregar un producto nuevo:
   {
    "name": "Computadora",
    "description": "Computadora Dell",
    "categories": [1,3]
}
   <h2>La API cumple los siguientes puntos </h2>
   <h3>REQUERIMIENTOS FUNCIONALES</h3>
El usuario puede crear categorías nuevas
    Para crear una categoría nueva este tiene que tener nombre requerido, la descripción es opcional
El usuario puede editar una categoría
El usuario puede ver las categorías
El usuario puede eliminar una categoría
    El usuario no puede eliminar una categoría que tenga productos asignados

El usuario puede crear un nuevo producto
    Para crear un producto nuevo este tiene que tener nombre, descripción y el ID de la categorías, es decir son todos los atributos son requeridos
El usuario puede editar un producto
El usuario puede ver los productos
    Cuando el usuario ve el producto debe ver a qué categoría pertenece, no únicamente el ID a la categoría si no el nombre también
El usuario puede eliminar un producto
    Si el usuario elimina todos los productos de una categoría, ya debería de poder eliminar la categoría a la que pertenecían los productos


   <h3>REQUERIMIENTOS NO FUNCIONALES</h3>
La aplicación debe realizarse en Ruby on Rails v5 > y debe ser una API
