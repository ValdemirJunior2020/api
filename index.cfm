<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dog Pictures Api</title>
</head>
<body>
    <cfhttp url="https://dog.ceo/api/breeds/image/random" method="GET">
    </cfhttp>
    
    <cfset img = deserializeJSON(cfhttp.filecontent)>
    
    <cfoutput>
        <img src="#img.message#" alt="Random Dog Image" width="357" height="500">
        <form name="reloadForm" method="post" action="">
            <button type="submit">Reload for a new Image</button>
        </form>
    </cfoutput>
</body>
</html>

