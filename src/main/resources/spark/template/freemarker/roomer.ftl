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
            text += "<h2 onclick = \"updateMovies(event)\" id=movie"+i+">"+tempers[i] + "</h2>";
        }
        document.getElementById("allmovies").innerHTML = text;
    </script>



    <script type="text/javascript" src="static/js/selector.js"></script>
    <script type="text/javascript" src = "static/js/jquery-3.1.1.js"></script>

</html>