<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    @if(session('notifi'))
        <div class="alert alert-danger">
            {{ session('notifi')}}
        </div>
    @endif
    <form action="{{ route('post.store')}}" method="post" accept-charset="UTF-8" enctype="multipart/form-data">
        @csrf 
        <label for="tite">Tutulo</label>
        <input type="text" name="title" placeholder="Titulo">
        <textarea name="description" id="" cols="30" rows="10"></textarea>
        <input type="file" name="image">
        <button>Enviar</button>
    </form>
</body>
</html>