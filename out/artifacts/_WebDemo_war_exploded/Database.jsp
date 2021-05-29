<%--
  Created by IntelliJ IDEA.
  User: 10721
  Date: 5/29/2021
  Time: 3:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%!
    boolean login = true;
    //数据库信息
    String userName = "root";
    //密码
    String userPasswd = "cz3190102358";
    //数据库名
    String dbName = "library";
    String url = "jdbc:mysql://localhost/" + dbName + "?useUnicode=true&characterEncoding=utf8&user=" + userName + "&password=" + userPasswd;
%>
<%
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection(url);
    //数据库连接
%>
