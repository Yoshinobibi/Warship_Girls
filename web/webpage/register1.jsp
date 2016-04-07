<%--
  Created by IntelliJ IDEA.
  User: 95
  Date: 2016/4/2
  Time: 0:31
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
    <title>register</title>

    <link  href="<%=path%>/webpage/plug-in/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="<%=path%>/webpage/plug-in/jquery/jquery-1.12.2.min.js"></script>
    <script src="<%=path%>/webpage/plug-in/bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=path%>/webpage/plug-in/jquery/jquery.validate.min.js"></script>
    <script>
        function  sub() {
            var username = $('#username').val().trim();
            var password = $('#password').val().trim();
            if (username==null||username==''||username==undefined){
                alert("请输入用户名！")
            }else
            if (password==null||password==''||password==undefined){
                alert("请输入密码！")
            }else {
                $.ajax({
                    type:"post",
                    url: "userController.do?do_register",
                    data:{
                        username:username,
                        password:password,
                    },
                    dataType: "json",
                    success: function(data) {
                        if (data.success){
                            alert(data.message);
                        }else
                        if (!data.success){
                            alert("失败！");
                        }
                    }
                })
            }

        }
    </script>
</head>
<body>
<h1>Hello, world!</h1>
<form role="form">
    <div class="input-group">
        <input type="text" class="form-control" name="username" id="username" placeholder="请输入账号！">
    </div>
    <div class="input-group">
        <input type="password" class="form-control" name="password" id="password" placeholder="请输入密码！">
    </div>
    <input type="button" value="Submit" class="btn btn-default" onclick="sub()">
</form>

</body>
</html>