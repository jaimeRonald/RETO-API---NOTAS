<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
     
    
    
        <form action="/login" method="post">
            @csrf
            <input type="email" name="email" placeholder="Usuario....">
            <input type="password" name="password" placeholder="cContraseña">
            <button type="submit">Enviar</button> 
        </form>
</body>
</html>