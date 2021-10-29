<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

        <!-- Styles -->
        <!--color: #4b0082;-->
        <style>
            body {
                font-family: 'Nunito', sans-serif;
                background: url('/image/store_bg.png');
                background-repeat: no-repeat;
                background-size: 100%;
            }
            .parallel {
                width: 200px;
                height: 60px;
                transform: skew(-20deg);
                border: 3px solid;
                border-color: yellowgreen;
                text-align: center;
                padding: 5px;
                
            }
            .parallel {
                overflow: hidden;
                transition: 0.2s transform ease-in-out;
                will-change: transform;
                z-index: 0;
                position: relative;
            }
            .parallel::after {
                background-color: yellowgreen;
                content: '';
                display: block;
                height: 100%;
                width: 100%;
                position: absolute;
                left: 0;
                top: 0;
                transform: translate(-100%, 0) rotate(10deg);
                transform-origin: top left;
                transition: 0.2s transform ease-out;
                will-change: transform;
                z-index: -1;
            }
            .parallel:hover::after {
                transform: translate(0, 0);
            
            }
            .parallel:hover {
                border: 2px solid transparent;
                color: #4b0082;
                transform: scale(1.05);
                will-change: transform;
            }
            
            
            a{
                text-decoration: none;
                color: black;
                font-size: 40px;
            }
            

            
        </style>
    </head>
    <body class="antialiased">

        <div style= "margin-left: 60px;">
            <h1 style="font-size: 120px;">Petrol Store</h1>
        </div>

        <div class="container" style="margin-top: 250px;">
            <div class="parallel" style="margin-left: 400px; float: left;">
                <a href="{{route('login')}}">Login</a>
            </div>

            <div class="parallel" style="float: left; margin-left: 100px;">
                <a href="{{route('register')}}">Register</a>
            </div>
        </div>

        

        
    </body>
</html>