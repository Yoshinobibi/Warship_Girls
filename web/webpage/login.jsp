<%--
  Created by IntelliJ IDEA.
  User: 95
  Date: 2016/3/31
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>login</title>
    <link  href="<%=path%>/webpage/plug-in/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="<%=path%>/webpage/plug-in/jquery/jquery-1.12.2.min.js"></script>
    <script src="<%=path%>/webpage/plug-in/bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=path%>/webpage/plug-in/jquery/jquery.validate.min.js"></script>
    <style type="text/css">
        body {  padding-top: 40px;  }
    </style>
</head>
<body>
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand brand-white scrolled" href="/">Warship Girls</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class>
                    <a href="#">Home</a>
                </li>
                <li class>
                    <a href="##">Home2</a>
                </li>
                <li class>
                    <a href="###">Home3</a>
                </li>
            </ul>
            <form class="navbar-form navbar-right">
                <a class="btn btn-primary u-2 signin" href="loginController.do?go_login">Sign In</a>
                <a class="btn btn-primary u-1 signup" href="userController.do?go_register">Sign Up</a>
            </form>
        </div>
    </div>
</div>

<div id="Sign In">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="col-md-4 col-md-offset-4">
                    <h2 class="title sm-dv text-center">Sign In</h2>
                    <form id="Register_Form" method="post" class="animated fadeIn" action="loginController.do?do_login">

                        <div class="form-group">
                            <div class="input-with-icon right">
                                <input type="text" class="form-control" id="username" name="username" placeholder="Your Name" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-with-icon right">
                                <input type="password" class="form-control" id="password" name="password" placeholder="Your password" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-with-icon right">
                                <input type="submit" class="btn btn-primary btn-block" name="signin" value="Sign in"/>
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
                    required: true
                },
                password: {
                    required: true
                }
            },
            messages: {
                username: {
                    required: "A name is required"
                },
                password: {
                    required: "A password is required"
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
                    url: "loginController.do?do_login",
                    data:{
                        username:username,
                        password:password
                    },
                    dataType: "json",
                    success: function(data) {
                        alert(data.message);
                        if (data.success){
                            window.location.href="http://www.baidu.com"
                        }else if (!data.success){
                            window.location.href="##"
                        }
                    }
                })
            }
        } );
    } );
</script>
</body>
</html>
