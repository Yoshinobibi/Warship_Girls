<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>register</title>
    <link href="<%=path%>/webpage/plug-in/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="<%=path%>/webpage/plug-in/css/main.css" rel="stylesheet" type="text/css">
    <script src="<%=path%>/webpage/plug-in/jquery/jquery-1.12.2.min.js"></script>
    <script src="<%=path%>/webpage/plug-in/bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=path%>/webpage/plug-in/jquery/jquery.validate.min.js"></script>
    <script src="<%=path%>/webpage/plug-in/js/main.js"></script>
    <style type="text/css">
        #register-wrap {
            text-align: center;
            max-width: 455px;
            margin: 0 auto;
            margin-top: 0px;
            margin-right: auto;
            margin-bottom: 0px;
            margin-left: auto;
            padding: 80px 0 100px;
        }
        #register-wrap h2 {
            font-weight: 300;
            line-height: 37px;
            margin-bottom: 54px;
            margin-top: 8px;
        }
    </style>
    <%%>
</head>
<body>
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">Warship Girls</a>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class>
                    <a href="warshipController.do?go_warship">Warship</a>
                </li>
                <li class>
                    <a href="#">Home2</a>
                </li>
                <li class>
                    <a href="#">Home3</a>
                </li>
            </ul>
            <form id="navi_form" class="navbar-right">
                <a class="btn btn-primary" href="loginController.do?go_login">Sign In</a>
                <a class="btn btn-primary" href="userController.do?go_register">Sign Up</a>
            </form>
        </div>
    </div>
</div>

<div id="Sign Up">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div id="register-wrap">
                    <h2 class="title text-center">Sign Up</h2>
                    <form id="Register_Form" method="post" class="animated fadeIn" action="userController.do?do_register">

                        <div class="form-group">
                            <div class="input-with-icon right">
                                <input type="text" class="form-control" id="username" name="username" placeholder="Your Name" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-with-icon right">
                                <input type="password" class="form-control" id="password" name="password" placeholder="Choose a password" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-with-icon right">
                                <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Confirm your password" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-with-icon right">
                                <input type="submit" class="btn btn-primary btn-block" name="signup" value="Sign up"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $( document ).ready( function () {
        $( "#Register_Form" ).validate( {
            rules: {
                username: {
                    required: true,
                    minlength: 3,
                    maxlength:20
                },
                password: {
                    required: true,
                    minlength: 6,
                    maxlength:20
                },
                confirm_password: {
                    required: true,
                    minlength: 6,
                    equalTo: "#password"
                }
            },
            messages: {
                username: {
                    required: "A name is required",
                    minlength: "A name must be at least 3 characters",
                    maxlength:"A name must be at most 20 characters"
                },
                password: {
                    required: "A password is required",
                    minlength: "Password must be at least 6 characters",
                    maxlength:"A name must be at most 20 characters"
                },
                confirm_password: {
                    required: "Confirm password is required",
                    minlength: "Password must be at least 6 characters",
                    equalTo: "Passwords do not match"
                }
            },
            errorElement: "em",
            errorPlacement: function ( error, element ) {
                error.addClass( "help-block" );

                if ( element.prop( "type" ) === "checkbox" ) {
                    error.insertAfter( element.parent( "label" ) );
                } else {
                    error.insertAfter( element );
                }
            },
            highlight: function ( element, errorClass, validClass ) {
                $( element ).parents( ".input-with-icon" ).addClass( "has-error" ).removeClass( "has-success" );
            },
            unhighlight: function (element, errorClass, validClass) {
                $( element ).parents( ".input-with-icon" ).addClass( "has-success" ).removeClass( "has-error" );
            },
            submitHandler: function(form){
                var username = $('#username').val().trim();
                var password = $('#password').val().trim();
                $.ajax({
                    type:"post",
                    url: "userController.do?do_register",
                    data:{
                        username:username,
                        password:password
                    },
                    dataType: "json",
                    success: function(data) {
                        alert(data.message);
                        if (data.success){
                            window.location="loginController.do?go_login"
                        }else if (!data.success){
                            window.location.href="##"
                        }
                    }
                })
            }
        } );
    } );
</script>
<input type="hidden" id="session" value="<%=session.getAttribute("name")%>">
</body>
</html>


