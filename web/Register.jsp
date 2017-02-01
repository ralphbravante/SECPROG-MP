<%-- 
    Document   : Register
    Created on : 02 1, 17, 4:01:32 AM
    Author     : ralph
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>SIGN UP</title>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="css/mdb.min.css" rel="stylesheet">
        <!-- Your custom styles (optional) -->
        <link href="css/style.css" rel="stylesheet">
        <title>Register</title>
    </head>

    <style>
        body{
            background-color:#F05053;

            /* background-image: url("pic1.jpeg");
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;*/
        }




        .card{
            width: 650px;
            margin-right:auto;
            margin-left: auto;
            border-radius: 10px;

        }

        .card-header{
            background-color: inherit;

        }

        .md-form{

            margin-right:auto;
            margin-left: auto;
            text-align: left;
            border-bottom-color: #F05053;


        }
        #InputLabel{
            font-size: 12px;
            font-weight:600;

        }




        #InputLabel.active{
            color:#F05053;
        }

        .fa.fa-user.prefix.active, .fa.fa-lock.prefix.active, 
        .fa.fa-home.prefix.active, .fa.fa-envelope.prefix.active, 
        .fa.fa-mail-forward.prefix.active, .fa.fa-phone.prefix.active{
            color:#F05053;
        }


        .btn-danger{
            border-radius: 20px;
            width:300px;
            margin-right:auto;
            margin-left: auto;
        }



        .col-md-6{
            width:200;
        }

    </style>

    <body>
        <form method="post" action="Register">
            <div class="container">
                <br>
                <div class="card text-center">
                    <h3 class="card-header  red darken-4 white-text">SIGN UP</h3>

                    <br>

                    <div class="container">
                        <form>
                            <div class="row">

                                <div class="col-md-5">
                                    <div class="md-form">
                                        <i class="fa fa-user prefix"></i>
                                        <input type="text" id="LastName" name="LastName" class="form-control">
                                        <label id="InputLabel" for="LastName">Last Name</label>
                                    </div>
                                </div>

                                <div class="col-md-5">
                                    <div class="md-form">

                                        <input type="text" id="FirstName" name="FirstName" class="form-control">
                                        <label id="InputLabel" for="FirstName">First Name</label>
                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <div class="md-form">

                                        <input type="text" id="MI" name="MI" class="form-control">
                                        <label id="InputLabel" for="MI">M.I.</label>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="md-form">
                                        <i class="fa fa-user prefix"></i>
                                        <input type="text" id="Username" name="Username" class="form-control">
                                        <label id="InputLabel" for="Username">Username</label>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="md-form">
                                        <i class="fa fa-envelope prefix"></i>
                                        <input type="email" id="Email" name="Email" class="form-control">
                                        <label id="InputLabel" for="Email">Email Address</label>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="md-form">
                                        <i class="fa fa-lock prefix"></i>
                                        <input type="password" id="Password" name="Password" class="form-control">
                                        <label id="InputLabel" for="Password">Password</label>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="md-form">
                                        <i class="fa fa-lock prefix"></i>
                                        <input type="password" id="RePassword" name="RePassword" class="form-control">
                                        <label id="InputLabel" for="RePassword">Re-Enter Password</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="md-form">
                                        <i class="fa fa-phone prefix"></i>
                                        <input type="tel" id="MobileNum" name="MobileNum" class="form-control">
                                        <label id="InputLabel" for="MobileNum">Mobile Number</label>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="md-form">
                                        <i class="fa fa-mail-forward prefix"></i>
                                        <input type="text" id="BillAdd" name="BillAdd" class="form-control">
                                        <label id="InputLabel" for="BillAdd">Billing Address</label>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="md-form">
                                        <i class="fa fa-home prefix"></i>
                                        <input type="text" id="DelAdd" name="DelAdd" class="form-control">
                                        <label id="InputLabel" for="DelAdd">Delivery Address</label>
                                    </div>
                                </div>

                            </div>

                            <br>
                                <input type="submit" id="SubmitButton" class="btn btn-danger" value="Sign Up"/>
                            <br>

                            <br><br>
                            <p>Already have an account?? <a href="Login.jsp">Sign in here</a></p>

                        </form>
                    </div>

                </div>




            </div>






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
