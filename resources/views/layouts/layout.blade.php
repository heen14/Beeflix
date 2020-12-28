<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>
        @yield('title')
    </title>
    <link rel="stylesheet" href="{{ asset('/css/app.css') }}">
    <link rel="stylesheet" href="{{ asset('/css/layout.css') }}">
    <link rel="stylesheet" href="{{ asset('/css/style.css') }}">
    @stack('styles')
    
        </head>
        <body>
            <header>
                <div class="kotakHeader">
                <div class="textstyle">

                    <a href="{{ url('/') }}" >BEEFLIX</a>
                    <a href="{{ url('/list/drama') }}" >Drama</a>
                    <a href="{{ url('/list/kids') }}" >Kids</a>
                    <a href="{{ url('/list/tvshow') }}" >TV Show</a>

                </div>
            </header>
            <div>
                @yield('content')
            </div>
            <footer>
            <div class="kotakFooter">
                <div class="textstyle">
                    INI FOOTER
            </div>
                
            </footer>
        </body>
        <script src="{{ asset('/js/app.js') }}"></script>
        @stack('scripts')
    </html>