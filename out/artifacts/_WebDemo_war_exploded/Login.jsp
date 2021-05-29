<%--
  Created by IntelliJ IDEA.
  User: 10721
  Date: 5/29/2021
  Time: 12:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ include file="Database.jsp" %>
<html>
<head>
    <title>借书证管理</title>
    <link rel="stylesheet" type="text/css" href="Login.css">
    <script>
        function validateForm() {
            var x = document.forms["input"]["cardID"].value;
            var y = document.forms["input"]["name"].value;
            var z = document.forms["input"]["unit"].value;
            if (x == null || x == "") {
                alert("请填写完整信息！");
            }
            if (y == null || y == "") {
                alert("请填写完整信息！");
            }
            if (z == null || z == "") {
                alert("请填写完整信息！");
            }
        }
    </script>
</head>
<body>
<%
    //登陆成功，显示借书卡
    if (login) {
        String sql = "select * from card";
        PreparedStatement stmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        ResultSet rs = stmt.executeQuery();%>
<h2><span style="color: antiquewhite">借书证管理</span></h2>
<table>
    <tr>
        <th>卡号</th>
        <th>姓名</th>
        <th>单位</th>
    </tr>
    <%
        while (rs.next()) {%>
    <tr>
        <td><%=rs.getString("CardID")%>
        </td>
        <td><%=rs.getString("name")%>
        </td>
        <td><%=rs.getString("UNIT")%>
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
<form name="input" action="Card.jsp" method="post" onsubmit="validateForm()">
    卡号：<input type="text" name="cardID"><br>
    姓名：<input type="text" name="name"><br>
    单位：<input type="text" name="unit"><br>
    <input type="submit" value="增加借书证">
</form>
</body>
</html>