<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    @guest
    <a href="/login">Login</a>
    @else 
    <a href="{{route('post.create')}}">crear nota</a>
    <form action="/salir" method="post">
        @csrf
            <button>Salir</button>

    </form>
    @endguest
    <table>
            <thead>
                <tr>
                    <th>Grupo</th>
                    <th>Opciones</th>
                </tr>
            </thead>
            <tbody>
            @foreach($grupos as $var)

                <tr>
                    <td>{{$var->nombre}}</td>
                    <td><a href="{{url('add/user',['id'=>$var->id_grupo])}}">Agregarse</a></td>
                </tr>
            @endforeach
                 
            </tbody>
            

    </table>
</body>

</html>