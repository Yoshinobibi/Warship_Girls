<%--
  Created by IntelliJ IDEA.
  User: 95
  Date: 2016/4/7
  Time: 19:30
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
    <title>JQuery-validation demo | Bootstrap</title>
    <link  href="<%=path%>/webpage/plug-in/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="<%=path%>/webpage/plug-in/jquery/jquery-1.12.2.min.js"></script>
    <script src="<%=path%>/webpage/plug-in/bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=path%>/webpage/plug-in/jquery/jquery.validate.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-8 col-sm-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Simple Form</h3>
                </div>
                <div class="panel-body">
                    <form id="Register_Form" method="post" class="form-horizontal" action="userController.do?do_register">

                        <div class="form-group">
                            <label class="col-sm-4 control-label" for="username">Username</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="username" name="username" placeholder="Your Name" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-4 control-label" for="password">Password</label>
                            <div class="col-sm-5">
                                <input type="password" class="form-control" id="password" name="password" placeholder="Choose a password" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-4 control-label" for="confirm_password">Confirm password</label>
                            <div class="col-sm-5">
                                <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Confirm your password" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-9 col-sm-offset-4">
                                <button type="submit" class="btn btn-primary" name="signup" value="Sign up">Sign up</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $.validator.setDefaults( {
        submitHandler: function () {
            alert( "submitted!" );
        }
    } );
    $( document ).ready( function () {
        $( "#Register_Form" ).validate( {
            rules: {
                username: {
                    required: true,
                    minlength: 3
                },
                password: {
                    required: true,
                    minlength: 6
                },
                confirm_password: {
                    required: true,
                    minlength: 6,
                    equalTo: "#password"
                },
            },
            messages: {
                username: {
                    required: "A name is required",
                    minlength: "A name must be at least 3 character"
                },
                password: {
                    required: "A password is required",
                    minlength: "Password must be at least 6 characters"
                },
                confirm_password: {
                    required: "Confirm password is required",
                    minlength: "Password must be at least 6 characters",
                    equalTo: "Passwords do not match"
                },
            },
            errorElement: "em",
            errorPlacement: function ( error, element ) {
                // Add the `help-block` class to the error element
                error.addClass( "help-block" );

                if ( element.prop( "type" ) === "checkbox" ) {
                    error.insertAfter( element.parent( "label" ) );
                } else {
                    error.insertAfter( element );
                }
            },
            highlight: function ( element, errorClass, validClass ) {
                $( element ).parents( ".col-sm-5" ).addClass( "has-error" ).removeClass( "has-success" );
            },
            unhighlight: function (element, errorClass, validClass) {
                $( element ).parents( ".col-sm-5" ).addClass( "has-success" ).removeClass( "has-error" );
            },
            submitHandler: function(form){
                var username = $('#username').val().trim();
                var password = $('#password').val().trim();
                $.ajax({
                    type:"post",
                    url: "userController.do?do_register",
                    data:{
                        username:username,
                        password:password,
                    },
                    dataType: "json",
                    success: function(data) {
                        alert(data.message);
                    },
                })
            },
        } );
    } );
</script>
</body>
</html>


