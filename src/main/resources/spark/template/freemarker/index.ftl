<html>
    <meta charset="UTF-8">
    <title>ListPicker by Hari</title>
    <style>
        body{
            background-color: lightcoral;
        }
        .hider {
            display : none;
        }
        div {
            text-align: center;
        }
        mark {
            background-color: #DED4CE;
            color: black;
        }
    </style>
    <body onload = "indexOnload()">
        <div id = "former">
            <form id = "thisForm" method = "POST" action = "/setup">
            
                <div class = "hider">
                <input type = "number" id = "numMovies" name = "numMovies" required readonly>
                <input type = "number" id = "numPeople" name = "numPeople" required readonly>
                </div>

                <label for = "movie1"><mark>Item 1</mark></label>
                <input type="text" id = "movie1" name = "movie1" required>
                <br>
                <label for = "movie1"><mark>Item 2</mark></label>
                <input type="text" id = "movie2" name = "movie2" required>
                <br>
                <label for = "movie3"><mark>Item 3</mark></label>
                <input type="text" id = "movie3" name = "movie3" required>
                <div id = "addmovie">
                </div>
                <br>
                <button type = "button" onclick="addMovie()">Add item</button>
                <button type = "button" onclick="removeMovie()">Remove item</button>

                <br>
                <br>
                <label for = "person1"><mark>Person 1</mark></label>
                <input type="text" id = "person1" name = "person1" required>
                <br>
                <label for = "person2"><mark>Person 2</mark></label>
                <input type="text" id = "person2" name = "person2" required>
                <div id = "addperson">
                </div>
                <br>

                <button type = "button" onclick="addPerson()">Add person</button>
                <button type = "button" onclick="removePerson()">Remove person</button>
                <br>


                <input type = "submit" value="Make List!">
            </form>
            <hr>

        </div>
    </body>

    <script type="text/javascript" src="static/js/selector.js"></script>
    <script type="text/javascript" src = "static/js/jquery-3.1.1.js"></script>

</html>