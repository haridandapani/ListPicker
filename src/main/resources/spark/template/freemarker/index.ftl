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
    <h1 align="center">Set up your list to pick!</h1>
    <body onload = "indexOnload()">
        <div id = "former">
            <form id = "thisForm" method = "POST" action = "/setup">
            
                <div class = "hider">
                <input type = "number" id = "numMovies" name = "numMovies" required readonly>
                <input type = "number" id = "numPeople" name = "numPeople" required readonly>
                </div>

                <h4>Items to select</h4>
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
                <h4>Participants</h4>
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

                <h4>Order of Words</h4>
                <input type="radio" id="given" name="order" value="given" selected>
                <label for="given">Given Order</label><br>
                <input type="radio" id="snake" name="order" value="snake">
                <label for="snake">Snaking Order</label><br>
                <input type="radio" id="random" name="order" value="random">
                <label for="random">Random</label> 

                <br>

                <input type = "submit" value="Make List!">
            </form>

        </div>
    </body>

    <script type="text/javascript" src="static/js/selector.js"></script>
    <script type="text/javascript" src = "static/js/jquery-3.1.1.js"></script>

</html>