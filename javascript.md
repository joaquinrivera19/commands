# 25 Métodos de Arrays en javascript.

JavaScript nos proporciona una serie de funciones predefinidas para el manejo de arrays.

Antes de comenzar se deben estar preguntando ¿Qué son los Arrays?, bien, se los puede definir como un conjunto de datos ordenados por posiciones y todos asociados en una sola variable. Los datos pueden ser de cualquier tipo de dato como, por ejemplo, una cadena de texto, un numero o un objeto. Se podrá acceder a estos datos de manera independiente o agrupándolos.

A continuación, se detallaran los métodos más conocidos.

---

1. **map()** : Permite recorrer el array y modificar los elementos presentes en él, retornando un nuevo array con la misma longitud que el original.
```sh
const array = [1,2,3,4,5,6,7]
const resultArray = array.map(element => element + 10)
console.log(resultArray) // [11,12,13,14,15,16,17]
```

2. **filter()** : Recorre el array y retorna un nuevo array con aquellos elementos que pasen una determinada condición.
```sh
const array = [1,2,3,4,5,6,7]
const resultArray = array.filter(element => element == 3 || element == 7)
console.log(resultArray) // [3,7]
```

3. **forEach()** : Permite iterar el contenido de un array. Recibe un callback que toma como parámetro el elemento actual de la iteración y el indice del mismo.
```sh
const array = ['banana','apple','orange','pear']
const resultArray = array.forEach((element, i) => {
  console.log(`${element} se encuentra en el indice ${i}`)
});

// "banana se encuentra en el indice 0"
// "apple se encuentra en el indice 1"
// "orange se encuentra en el indice 2"
// "pear se encuentra en el indice 3"
```

4. **find()** : Recorre el array y retorna la primera coincidencia del elemento que se busca.
```sh
const array = [1,2,3,4,5,6,7]
const resultArray = array.find( element => element > 3 )
console.log(resultArray) // [4]
```

5. **sort()** : Ordena los elementos del array y retorna el arreglo ordenado. Los elementos se ordenarán en orden ascendente (de la A a la Z) por defecto.
```sh
const array = [1,2,3,4,5,6,7]
const alphabets = ['g','d','c','o','d','e','v']

// Ordenar en forma descendente
const descArray = array.sort((a,b) => a > b ? -1 : 1)
console.log(descArray) // [7,6,5,4,3,2,1]

// Ordenar en forma ascendente
const ascArray = alphabets.sort((a,b) => a > b ? 1 : -1)
console.log(ascArray) // ['c','d','d','e','g','v']
```

6. **some()** : Itera el array y retorna un booleano si como mínimo uno de los elementos presentes en el array pasa una condición determinada. Recibe un callback que se encargara de preguntar aquello que queremos dentro del array.
```sh
const array = [1,2,3,4,5,6,7]

// Los elementos son mayores que 4
const isGreaterThanFour = array.some(element => element > 4)
console.log(isGreaterThanFour) // true

// Los elementos son menores que 10
const isLessThanTen = array.some(element => element < 10)
console.log(isLessThanTen) // false
```

7. **every()** : Es similar al some(), ya que itera el array y retorna un booleano. Pero esta vez, para que dicho booleano sea true todos los elementos del array deberán pasar la condición dada.
```sh
const array = [1,2,3,4,5,6,7]

// Los elementos son mayores que 4
const isGreaterThanFour = array.every(element => element > 4)
console.log(isGreaterThanFour) // false

// Los elementos son menores que 10
const isLessThanTen = array.every(element => element < 10)
console.log(isLessThanTen) // true
```

8. **concat()** : Se utiliza para unir dos o más arrays. Este método no cambia los arrays existentes, sino que devuelve un nuevo array.
```sh
const arr1 = ['a','b','c'];
const arr2 = ['d','e','f'];

// For legacy browsers (ES5);
const someArray = arr1.concat(arr2);
console.log(someArray) // ["a", "b", "c", "d", "e", "f"]
    
// For modern Javascript (ES6/NodeJS)
const someOtherArray = [ ...arr1, ...arr2 ];
console.log(someOtherArray) // ["a", "b", "c", "d", "e", "f"]
```

9.  **includes()** : Determina si un array incluye un determinado elemento y retorna un booleano según corresponda.
```sh
const array = [1,2,3,4,5,6,7]
console.log(array.includes(2)) // true
console.log(array.includes(8)) // false
```

10.  **join()** : Une todos los elementos de un array en una cadena. Podemos pasarle como parámetro el carácter de separación que debe agregar entre los elementos.
```sh
const array = ['g','d','c','o','d','e','v']
console.log(array.join('')) // gdcodev 
console.log(array.join('-')) // g-d-c-o-d-e-v 
```

11. **reduce()** : Aplica una función a un acumulador y a cada valor de una array (de izquierda a derecha) para reducirlo a un único valor. (Se inicializa Accumulator con 0)
```sh
const array = [1,2,3,4,5,6,7]
const resultArray = array.reduce((Accumulator, current) => Accumulator + current)
console.log(resultArray) // 28
```

12. **indexOf()** : Retorna el primer índice en el que se puede encontrar un elemento dado en el array, ó retorna -1 si el elemento no esta presente.
```sh
const array = ['steve','bruce','tony','chris']
const resultArray = array.indexOf('bruce')
console.log(resultArray) // 1
```

13.  **findIndex()** : Retorna el índice del primer elemento de un array que cumpla con la función de prueba proporcionada. En caso contrario devuelve -1.
```sh
const array = ['steve','bruce','tony','chris']
const resultArray = array.findIndex(element => element === 'bruce')
console.log(resultArray) // 1
```

14.  **fill()** : Cambia todos los elementos de un array por un valor estático, desde el índice de inicio hasta el índice final. Retorna el array modificado.
```sh
const array = [1,2,3,4,5,6,7]

// Llenar con 10 desde la posicion 3
console.log(array.fill(10,3)) // [1, 2, 3, 10, 10, 10, 10]

// Llenar con 8 desde la posicion 4 hasta la posicion 6
console.log(array.fill(8,4,6)) // [1, 2, 3, 10, 8, 8, 10]
```

15. **push()** :  Añade uno o más elementos al final de un array y devuelve la nueva longitud del array.
```sh
const array = ['apple','orange','pear']
console.log(array.push('banana')) // 4
console.log(array) // ["apple", "orange", "pear", "banana"]
```

16. **pop()** : Elimina el último elemento de un array y lo devuelve. Este método cambia la longitud del array.
```sh
const array = ['apple','orange','pear']
array.pop()
console.log(array) // ["apple", "orange"]
```

17. **shift()** : Elimina el primer elemento del array y lo retorna. Este método modifica la longitud del array.
```sh
const array = ['apple','orange','pear']
array.shift()
console.log(array) // ["orange", "pear"]
```

18. **unshift()** : Agrega uno o más elementos al inicio del array, y devuelve la nueva longitud del array.
```sh
const array = ['apple','orange','pear']
console.log(array.unshift('banana')) // 4
console.log(array) // ["banana", "apple", "orange", "pear"]
```

19. **slice()** : Devuelve una copia de una parte del array dentro de un nuevo array empezando por inicio hasta fin (fin no incluido). El array original no se modificará.
```sh
const array = ['a','b','c','d','e','f']
const resultArray = array.slice(2,4)
console.log(resultArray) // ["c", "d"]
```

20.  **reverse()** : Invierte el orden de los elementos de un array. El primer elemento pasa a ser el último y el último pasa a ser el primero.
```sh
const array = [1,2,3,4,5,6,7]
console.log(array.reverse()) // [7,6,5,4,3,2,1]
```

21. **splice()** : Cambia el contenido de un array eliminando elementos existentes y/o agregando nuevos elementos.
```sh
const array = ['apple','orange','pear']
array.splice(1,0,'banana')
console.log(array) // ["apple", "banana", "orange", "pear"]
```

22. **lastIndexOf()** : Busca un elemento en un array y devuelve su posición. Comienza buscando por el final del array. Retorna -1 si el elemento no se encontrara.
```sh
const array = ['apple','orange','pear','apple']
console.log(array.lastIndexOf('apple')) // 3
```

23. **flat()** : Crea una nuevo array con todos los elementos de sub-array concatenados recursivamente hasta la profundidad especificada.
```sh
const array = [1,2,3,4,5,[6,7]]
console.log(array.flat()) // [1, 2, 3, 4, 5, 6, 7]
```

24. **isArray()** : Determina si el valor pasado es un Array.
```sh
console.log(Array.isArray([1,2,3,4,5,6,7])) // true
console.log(Array.isArray({nombre: 'coqui'})) // false
console.log(Array.isArray('apple')) // false
console.log(Array.isArray(undefined)) // false
```

25.  **from()** : Crea una nueva instancia de Array a partir de un objeto iterable.
```sh
console.log(Array.from('joaquin')) // ["j", "o", "a", "q", "u", "i", "n"]
```

26.  **length** : Indica el número de elementos que contiene un array.

```sh
const numbers = [1, 2, 3, 4]; 
numbers.length // 4
```

27.  **toString()** : Retorna una string del array.

```sh
// example
[ 'a', 2, 3 ].toString() // "a,2,3"
// syntax
arr.toString()´
```

28. **Object.keys** convierta los nombres de los objetos en un array.

```sh
let object = { 
    name1: "value",
    name2: "value",
    name3: "value"
};

// Returns [ 'name1', 'name2', 'name3' ]; 
let array = Object.keys(object);
```

29. **Object.values** convierta los valores de los objetos en un array.

```sh
let object = { 
    name1: "value",
    name2: "value",
    name3: "value"
};

// Returns [ 'value', 'value', 'value' ]; 
let array = Object.values(object);
```

30. El método **Array.of()** crea una nueva instancia Array con un número variable de elementos pasados como argumento, independientemente del número o del tipo.

```sh
Array.of(7);       // [7]
Array.of(1, 2, 3); // [1, 2, 3]
```

31. El método **toFixed()** permite especificar cuántas fracciones decimales con los que desea que se represente el valor:

```sh
let a = 42.59;
a.toFixed(0); // "43"
a.toFixed(1); // "42.6"
a.toFixed(2); // "42.59"
a.toFixed(3); // "42.590"
a.toFixed(4); // "42.5900"
```


---
