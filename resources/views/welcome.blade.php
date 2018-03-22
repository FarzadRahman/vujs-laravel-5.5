<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{csrf_token()}}">

        <title>Vuejs App</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script>Window.Laravel={csrfToken:'{{csrf_token()}}'}</script>
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

        <!-- Styles -->
    </head>
    <body>
       <div id="app">
           <div class="container">
               <articles></articles>
               {{--Exercise 1--}}
               <h2>Test 1</h2>
               <p>VueJS is pretty cool - @{{name}} (@{{age}})</p>
               <div>
                   <img style="width:100px;height:100px" v-bind:src="img">
               </div> &nbsp;
               <div>
                   <input type="text" v-bind:value="name">
               </div><br>
               <button v-on:click="increase">Click Me</button>
               <p>@{{counter}}</p>
               {{--End Exercise 1--}}

               {{--Exercise 2--}}
               <h2>Test 2</h2>
           <!-- 1) Show an alert when the Button gets clicked -->
               <div>
                   <button v-on:click="showAlert">Show Alert</button>
               </div><br>

               <!-- 2) Listen to the "keydown" event and store the value in a data property (hint: event.target.value gives you the value) -->
               <div>
                   <input type="text" v-on:keyup="pressed">
                   <p>@{{ value }}</p>
               </div>
               <!-- 3) Adjust the example from 2) to only fire if the "key down" is the ENTER key -->
               <div>
                   <input type="text" v-on:keyup.enter="pressed">
               </div>

           </div>
       </div>

    <script src="{{url('js/app.js')}}"></script>
    </body>
</html>
