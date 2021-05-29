<%--
  Created by IntelliJ IDEA.
  User: 10721
  Date: 5/27/2021
  Time: 8:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%--
    index.jsp:首页
    此页面用于连接数据库和验证登陆
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*" %>
<html>
<head>
    <title>管理员登陆</title>
</head>
<body>
<h1>管理员登陆</h1>
<form name="input" action="Check.jsp" method="post">
    账号：<input type="text" name="account"><br>
    密码：<input type="password" name="pwd"><br>
    <input type="submit" value="登陆">
</form>
</body>
</html>