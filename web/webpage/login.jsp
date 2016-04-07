<%--
  Created by IntelliJ IDEA.
  User: 95
  Date: 2016/3/31
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
    <form action="loginController.do?do_login" method="post">
        用户名：<input type="text" name="username"/>
        密码：<input type="text" name="password"/>
        <input type="submit" value="submit">
    </form>

</body>
</html>
