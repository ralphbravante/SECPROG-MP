

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="css/mdb.min.css" rel="stylesheet">
        <!-- Your custom styles (optional) -->
        <link href="css/style.css" rel="stylesheet">

        <title>Sign In</title>
    </head>
    <style>
        body{
            background-color:#F05053;

        }

        .card{
            width: 550px;
            margin-right:auto;
            margin-left: auto;
            border-radius: 10px;
        }

        .card-header{
            background-color: inherit;
        }

        .md-form{
            width: 500px;
            margin-right:auto;
            margin-left: auto;
            text-align: left;
        }
        
        .btn-danger{
            border-radius: 20px;
            width:300px;
            margin-right:auto;
            margin-left: auto;
        }
        
        .md-form:focus{
            border-color:#F05053; 
        }

        .fa.fa-user.prefix.active, .fa.fa-lock.prefix.active {
            color:#F05053;
        }

        #InputLabel{
            font-size: 12px;
            font-weight:600;
            
        }
        
         #InputLabel.active{
            color:#F05053;
        }
    </style>


    <body>
       
        <form method ="post" action="Login">
            <div class="container">
                </br>
                <div class="card text-center"> 
                    <h3 class="card-header  red darken-4 white-text">SIGN IN</h3>
                    </br></br>
                    <div class="md-form">

                        <i class="fa fa-user prefix"></i>
                        <input type="text" id="Username" name="Username" class="form-control">
                        <label id= InputLabel for="Username">Username</label>

                    </div>

                    <div class="md-form">

                        <i class="fa fa-lock prefix"></i>
                        <input type="password" id="Password" name="Password" class="form-control">
                        <label id= InputLabel for="Password">Password</label>
                    </div>

                    <input type="submit" class="btn btn-danger" vlaue="Sign In" />

                    </br>

                    <div class="modal-footer">
                        <div class="options">
                            <p>Not a member? <a href="Register.jsp">Sign Up</a></p>
                            <p><a href="#">Forgot Your Password?</a></p>
                        </div>

                    </div>



                </div>


            </div>









            <!-- SCRIPTSSSSS -->


            <script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>

            <!-- Bootstrap tooltips -->
            <script type="text/javascript" src="js/tether.min.js"></script>

            <!-- Bootstrap core JavaScript -->
            <script type="text/javascript" src="js/bootstrap.min.js"></script>

            <!-- MDB core JavaScript -->
            <script type="text/javascript" src="js/mdb.min.js"></script>

        </form>
        
       
    </body>
</html>
