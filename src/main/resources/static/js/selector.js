let movies = 3;
let person = 2;
let colorsList = [];
let iterator = 0;
let timer;
let roomNumber = -1;

function addMovie(){
    movies = movies + 1;
    let wheel = document.createElement("input");
    wheel.type = "text";
    wheel.name = "movie" + movies;
    wheel.id = "movie" + movies;
    wheel.required = true;
    let labeler = document.createElement("label");
    labeler.for = wheel.id;
    labeler.id = "label" + movies;
    labeler.innerHTML = "<mark>Item " + movies +"</mark> ";
    let brk = document.createElement("br");
    brk.id = "break"+movies;
    
    document.getElementById("addmovie").appendChild(labeler);
    document.getElementById("addmovie").appendChild(wheel);
    document.getElementById("addmovie").appendChild(brk);
    document.getElementById("numMovies").value = movies;
    document.getElementById("numPeople").value = person;
}

function removeMovie(){
    if (movies > 3){
        document.getElementById("movie" + movies).remove();
        document.getElementById("label" + movies).remove();
        document.getElementById("break" + movies).remove();
        movies = movies - 1;
        document.getElementById("numMovies").value = movies;
        document.getElementById("numPeople").value = person;
    }
}


function addPerson(){
    if (person < movies - 1){
        person = person + 1;
        let wheel = document.createElement("input");
        wheel.type = "text";
        wheel.name = "person" + person;
        
        wheel.id = "person" + person;
        wheel.required = true;
        let labeler = document.createElement("label");
        labeler.for = wheel.id;
        labeler.id = "personlabel" + person;
        labeler.innerHTML = "<mark>Person " + person +"</mark> ";
        let brk = document.createElement("br");
        brk.id = "personbreak"+person;
        
        document.getElementById("addperson").appendChild(labeler);
        document.getElementById("addperson").appendChild(wheel);
        document.getElementById("addperson").appendChild(brk);
        document.getElementById("numMovies").value = movies;
        document.getElementById("numPeople").value = person;
    }
}

function removePerson(){
    if (person > 2){
        document.getElementById("person" + person).remove();
        document.getElementById("personlabel" + person).remove();
        document.getElementById("personbreak" + person).remove();
        person = person - 1;
        document.getElementById("numMovies").value = movies;
        document.getElementById("numPeople").value = person;
    }
}

function getMovie(){
    return movies;
}

function indexOnload(){
    document.getElementById("numMovies").value = movies;
    document.getElementById("numPeople").value = person;
}