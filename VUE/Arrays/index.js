//-------------------- REMOVING ITEM FROM ARRAY  ---------------------------------------

            // --------------------------------------

//------------------------- THE FIRST ITEM REMOVED ----------------------------------
let cities = ["Madrid", "Lisbon", "Cairo", "London", "Turin", "Milan"];
cities.shift();
console.log(cities); //OUPUT : ["Lisbon", "Cairo", "London", "Turin", "Milan"];
// notice that the first position "Madrid" was removed from the array


//------------------------- THE LAST ITEM REMOVED ----------------------------------
let countries = ["Portugal", "Spain", "France", "Germany", "United Kingdom", "Sweden"];

//WITH POP METHOD
countries.pop();
console.log(countries);
//notice that the last element "Sweden" was removed from the array

//WITH SPLICE METHOD
const index = countries.indexOf(countries.length - 1);
countries.splice(index, 1);
console.log(countries);

// -----------------------TO REMOVE ANY POSITION -------------------------
let fruits = ["Apple", "Orange", "Pinneaple", "Strawberry", "banana"];
// try to remove the pinneaple fruit from the list

// first search the index position of the item we want to remove in this case his 2 so:
const indexPinneaple = fruits.indexOf('Pinneaple'); //we can search by the item value or by is index position
// now with splice method we remove the specif item after the finding the index item to remove
fruits.splice(indexPinneaple, 1);
console.log(fruits);


// WITH DOM EVENT
let clubs = ["Benfica", "Porto", "Sporting", "Barcelona", "PSG"];
let arrayDiv = document.getElementById('array');

arrayDiv.innerHTML = `[${clubs}]`

document.getElementById('remove').onclick = ()=>{
    let clubInput = document.getElementById('club').value;

    if(clubs.some((club)=> club === clubInput)){
        const indexClub = clubs.indexOf(clubInput);
        clubs.splice(indexClub, 1);
        alert(`The club ${clubInput} was removed from the list`);
        arrayDiv.innerHTML = `[${clubs}]`
    }
    else{
        alert(`There isn´t any club called ${clubInput}`);
    }
}

// -----------------------------------------------------------------------------------------
//-------------------------------------SORT ITEMS ARRAY-------------------------------------

// ----------------------------------SORT STRINGS ARRAY----------------------------------
let brands = ["Ford", "Audi", "Mercedes", "BMW", "Honda", "Nike","Adidas", "GIGABYTE"];
brands.sort();
console.log(brands);

//------------- SORT ASCEND WAY
brands.sort((previousBrand, currentBrand)=> previousBrand.localeCompare(currentBrand))
console.log(brands);

//-------------SORT DESCEND WAY
brands.sort((previousBrand, currentBrand)=> currentBrand.localeCompare(previousBrand))
console.log(brands);


// ---------------------------------SORT INTEGER ARRAY-----------------------------

//------------- SORT ASCEND WAY
let ages = [20, 12, 7, 35, 42, 1, 78, 91, 4];
ages.sort((previousAge, currentAge)=> previousAge - currentAge)
console.log(ages);

//-------------SORT DESCEND WAY
ages.sort((previousAge, currentAge)=> currentAge - previousAge)
console.log(ages);

// RETURNING THE HIGHEST VALUE BY SORTING
ages.sort((previousAge, currentAge)=> {previousAge - currentAge})
console.log(ages[0]);

// RETURN THE LOWEST VALUE BY SORTING
ages.sort((previousAge, currentAge)=> previousAge - currentAge)
console.log(ages[0]);

// -------------------------SORT ARRAY OBJECT-----------------------------
let persons = [
    {name: "G", age:41},
    {name: "C", age: 72},
    {name: "F", age: 12 }
]

// RETURNING THE OLDEST PERSON
persons.sort((previousAge, currentAge)=> currentAge.age - previousAge.age)
console.log(`The oldest person is ${persons[0].name}`);

// RETURNING THE YOUNGEST PERSON
persons.sort((previousAge, currentAge)=> currentAge.age - previousAge.age)
console.log(`The youngest person is ${persons[persons.length - 1].name}`);

// -------------------------------------------------------------------------
// SORT MOVIES BY RANKING 0-10
// SORT MOVIES BY NAME

