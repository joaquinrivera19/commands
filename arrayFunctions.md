
## JavaScript Array Methods

### Definiendo nuestro array de objetos:

```sh
const fruits = [
    {
        name: "Apple",
        units: 3,
        price: 0.25
    },
    {
        name: "Mango",
        units: 6,
        price: 0.35
    },
    {
        name: "Banana",
        units: 4,
        price: 0.15
    },
];
```

Map function --> Crea un nuevo array a partir de la original.

```sh
const summary = fruits.map((fruit, index) => {
    const fruitCost = (fruit.price * fruit.units);
    return `${fruit.units} units of ${fruit.name} costs $${fruitCost.toFixed(2)}`;
});

// Array of Strings
console.log(summary);
<!---
/*
[
    '3 units of Apple costs $0.75',
    '6 units of Mango costs $2.10',
    '4 units of Banana costs $0.60'
]
*/
-->
```

Filter function --> Cree un nuevo array a partir de la original cuando se cumpla una condición.

```sh
const acceptablePrice = 0.2;
const onlyCheaper = fruits.filter((fruit, index) => {
    if (fruit.price < acceptablePrice) {
        return true;
    } else {
        return false;
    }
});

// Array of fruit Objects
console.log(onlyCheaper);
/*
[
    {
        name: "Banana",
        units: 4,
        price: 0.15
    }
]
*/
```

Find function --> Devuelve el primer objeto encontrado (o indefinido si no se encuentra) en el array original cuando se cumple una condición.

```sh
const search = "mango";
const findMango = fruits.find((fruit, index) => {
    if (fruit.name.toLowerCase().includes(search)) {
        return true;
    } else {
        return false;
    }
});

// One fruit Object, without Array
console.log(findMango);
/*
{
    name: "Mango",
    units: 6,
    price: 0.35
}
*/
```

Reduce function --> Devuelve un valor acumulado (o reducido) del array original.

```sh
let initialValue = 0;
const grandTotal = fruits.reduce((accumulator, fruit) => {
    const fruitCost = (fruit.price * fruit.units);
    return accumulator + fruitCost;
}, initialValue);

// Number value
console.log(`Grand Total: $${grandTotal.toFixed(2)}`);
/*
Grand Total: $3.45
*/
```

--------------------------

### JavaScript nos brinda cuatro métodos para agregar o eliminar elementos desde el principio o el final de las matrices:

pop() --> Eliminar un elemento del final de un array


```sh
let cats = ['Bob', 'Willy', 'Mini'];
cats.pop(); // ['Bob', 'Willy']
```

push() --> Agregar elementos al final de un array


```sh
let cats = ['Bob'];
cats.push('Willy'); // ['Bob', 'Willy']
cats.push('Puff', 'George'); // ['Bob', 'Willy', 'Puff', 'George']
```

shift() --> Eliminar un elemento del principio de un array


```sh
let cats = ['Bob', 'Willy', 'Mini'];
cats.shift(); // ['Willy', 'Mini']
```

unshift() --> Agregar elementos al principio de un array


```sh
let cats = ['Bob'];
cats.unshift('Willy'); // ['Willy', 'Bob']
cats.unshift('Puff', 'George'); // ['Puff', 'George', 'Willy', 'Bob']
```
