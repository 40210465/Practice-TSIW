//-------------------- REMOVING ITEM FROM ARRAY  ---------------------------------------

// ----------------------------------------------------------------------------------

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