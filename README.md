<h1>Esta es una API realizada con Rails para MonoEstereo</h1>
<h2>Video explicativo: https://www.youtube.com/watch?v=ocPT3M4rXGk&t=2s&ab_channel=AlejandroHernandez </h2>
<h2>La api cuenta con los siguientes Endpoints</h2>
<h3>categories/</h3>
(Get)(Post)
<h3>categories/(int:id)</h3>
 (Get)(Put)(Delete)
 <h3>products/</h3>
 (Get)(Post)
 <h3>products/(int:id)</h3>
 (Get)(Put)(Delete)
 <h2> Ejemplos JSON:</h2>
  Categorias:<br>
   {<br>
        "id": 1,<br>
        "name": "Electronicos",<br>
        "description": "Productos electronicos"<br>
   }<br>
   Productos: <br>
   {<br>
    "id": 4,<br>
    "name": "Computadora",<br>
    "description": "Computadora Dell",<br>
    "categories": [<br>
        {<br>
            "id": 1,<br>
            "name": "Electronicos",<br>
            "description": "Productos electronicos"<br>
        }<br>
    ]<br>
}<br>
   Json para agregar un producto nuevo:<br>
   {<br>
    "name": "Computadora",<br>
    "description": "Computadora Dell",<br>
    "categories": [1,3]<br>
}<br>
   <h2>La API cumple los siguientes puntos </h2><br>
   <h3>REQUERIMIENTOS FUNCIONALES</h3><br>
El usuario puede crear categorías nuevas<br>
    Para crear una categoría nueva este tiene que tener nombre requerido, la descripción es opcional<br>
El usuario puede editar una categoría<br>
El usuario puede ver las categorías<br>
El usuario puede eliminar una categoría<br>
    El usuario no puede eliminar una categoría que tenga productos asignados<br>

El usuario puede crear un nuevo producto<br>
    Para crear un producto nuevo este tiene que tener nombre, descripción y el ID de la categorías, es decir son todos los atributos son requeridos<br>
El usuario puede editar un producto<br>
El usuario puede ver los productos<br>
    Cuando el usuario ve el producto debe ver a qué categoría pertenece, no únicamente el ID a la categoría si no el nombre también<br>
El usuario puede eliminar un producto<br>
    Si el usuario elimina todos los productos de una categoría, ya debería de poder eliminar la categoría a la que pertenecían los productos<br>


   <h3>REQUERIMIENTOS NO FUNCIONALES</h3><br>
La aplicación debe realizarse en Ruby on Rails v5 > y debe ser una API<br>
