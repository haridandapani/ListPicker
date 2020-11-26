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
        .block {
          display: block;
          width: 100%;
          border: none;
          background-color: #4C56AF;
          color: white;
          padding: 14px 28px;
          font-size: 16px;
          cursor: pointer;
          text-align: center;
        }

        .block:hover {
          background-color: #ddd;
          color: black;
        }
    </style>
    <script>
    tempers = [];
    found = [];
    function clearTempers(){
        tempers = [];
    }
    function addToTempers(item){
        tempers.push(item);
    }
    function updateMovies(event){
        if (found.length < tempers.length - 2){
            found.push(event.target.id);
            //let numID = parseInt(event.target.id.replace("movie",""), 10);
            elem = document.getElementById(event.target.id);
            elem.parentNode.removeChild(elem);
            const postParameters = {};
            $.post("/nextPerson", postParameters, response => {
                const jsonRes = JSON.parse(response)
                newbie = jsonRes.newbie;
                document.getElementById("eliminator").innerHTML = newbie;
            });
        } else{
            if (found.length == tempers.length - 2){
                found.push(event.target.id);
                elem = document.getElementById(event.target.id);
                elem.parentNode.removeChild(elem);
            }
            document.getElementById("eliminator").innerHTML = "Congratulations! You have selected:";
            document.getElementById("instructions").innerHTML = "";
        }
    }
    </script>
    
    <h1 id = "eliminator" align = "center">${person}</h1>
    <hr>
    <br>
    <#if movies??>
    <script>
        clearTempers();
    </script>
    </#if>
    <#list movies as movie>
    <script>
        addToTempers("${movie}");
    </script>
    </#list>

    <div id = "allmovies">
    </div>

    <script>
        text = ""
        for (var i = 0; i < tempers.length; i++) {
            text += "<button class=\"block\" onclick = \"updateMovies(event)\" id=movie"+i+">"+tempers[i] + "</button>";
        }
        document.getElementById("allmovies").innerHTML = text;
    </script>
    <div id = "instructions">
        <h3>Select an item to eliminate it.</h3>
    </div>



    <script type="text/javascript" src="static/js/selector.js"></script>
    <script type="text/javascript" src = "static/js/jquery-3.1.1.js"></script>

</html>