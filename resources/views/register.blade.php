<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=}, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
     <form action="{{ route('register.store')}}" method="post">
        @csrf
        <input type="text" name="name">
        <input type="text" name="email">
        <input type="password" name="password">
        <input type="submit" name="Enviar">
     </form>
</body>
</html>