<html>
    <meta charset="UTF-8">
    <title>📜 ListPicker by Hari</title>
    <link rel="stylesheet" href="static/css/style.css">
    <h1 align="center">📜 ListPicker by Hari 📜 </h1>

    <div class = "column third">
        <h3>
        Welcome to ListPicker by Hari, the most revolutionary way to pick from a list.<br><hr>
        ListPicker by Hari works by allowing users to slice off their least preferred option from the remaining choices until only one is left. This guarantees that nobody will have to watch / eat / listen to their least favorite option. <br><hr>
        To start, submit a list of items to choose from and a list of participants. <br><hr>
        For fairness reasons, there must be at least two people and always at least one more item than person.<br><hr>
        You can also choose the order of participants and anonymize submissions to the ListPicker.<br><hr>
        Please enjoy ListPicker by Hari and please share with your friends!<br><hr>
        </h3>
    </div>
    <div class = "column chome">
        <body onload = "indexOnload()">
            <div id = "former" class = "basic-form">
                <form id = class = "basic-form" thisForm" method = "POST" action = "/setup" onsubmit="store()">
                
                    <div class = "hider">
                    <input type = "number" id = "numMovies" name = "numMovies" required readonly>
                    <input type = "number" id = "numPeople" name = "numPeople" required readonly>
                    </div>

                    <input type="checkbox" id="obfuscate" name="obfuscate" value="Obfuscate" onclick = "validateCheckbox()">
                    <label for="obfuscate">Obfuscate List Items</label><br>

                    <h4>Items to select</h4>
                    <button type = "button" onclick="addMovie()">Add item</button>
                    <button type = "button" onclick="removeMovie()">Remove item</button><br>
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

                    <h4>Participants</h4>
                    <button type = "button" onclick="addPerson()">Add person</button>
                    <button type = "button" onclick="removePerson()">Remove person</button><br>
                    <label for = "person1"><mark>Person 1</mark></label>
                    <input type="text" id = "person1" name = "person1" required>
                    <br>
                    <label for = "person2"><mark>Person 2</mark></label>
                    <input type="text" id = "person2" name = "person2" required>
                    <div id = "addperson">
                    </div>
                    <br>

                    <h4>Order of Participant Elimination</h4>
                    <input type="radio" id="given" name="order" value="given" checked>
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
    </div>
    <script type="text/javascript" src="static/js/selector.js"></script>
    <script type="text/javascript" src = "static/js/jquery-3.1.1.js"></script>

</html>