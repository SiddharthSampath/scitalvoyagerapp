<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Courgette" rel="stylesheet">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">



        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

        <!-- Styles -->
        <style>
        .bbg {
        /* The image used */
                background-image:url({{url('/images/bg2.jpg')}});

                /* Full height */
                height: 100%;

                /* Center and scale the image nicely */
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                opacity:0.8;
        }

            html, body {
                background-color: #fff;

                font-family: 'Nunito', sans-serif;
                font-weight: 900;
                height: 100vh;
                margin: 0;
            }



            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
            h3{
              font-size: 40px;
              font-weight: 900;
              font-family: 'Courgette', cursive;
              color: #042DF9;
              margin-left: 100px;

            }
            .title img {
              float: left;
              margin-top: 30px;
              padding-right:0px;
              margin-left: 80px;
              width:60px;
              height:60px;

              background: #555;
            }
            .title h1 {
            position: relative;
            top: 18px;
            left: 10px;
            font-size: 80px;
            margin-right:20px;
            padding-left:0 !important;
            color:#F9040C;
            font-weight: 900;
            font-family: 'Courgette', cursive;

          }
          a{
            margin-left: 100px;
          }

        </style>
    </head>
    <body class="bbg">
        <div class="flex-center position-ref full-height">
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ route('login') }}">Login</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}">Register</a>
                        @endif
                    @endauth
                </div>
            @endif
          
            <div class="content">
                <div class="title m-b-md ">
                  <img src="{{Voyager::image(setting('site.logo'))}}" alt="">
                  <h1>{{setting('site.title')}}</h1>

                </div>
                <h3>{{setting('site.description')}}</h3>



                <a class="btn btn-primary btn-lg" href="/admin/login">Login</a>

                <!--<div class="links">-->

                    <!--<a href="https://laracasts.com">Laracasts</a>
                    <a href="https://laravel-news.com">News</a>
                    <a href="https://nova.laravel.com">Nova</a>
                    <a href="https://forge.laravel.com">Forge</a>
                    <a href="https://github.com/laravel/laravel">GitHub</a>-->
                <!--</div>-->
            </div>
        </div>
    </body>
</html>
