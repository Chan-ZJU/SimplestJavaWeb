<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: 10721
  Date: 5/29/2021
  Time: 2:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ include file="Database.jsp" %>
<html>
<head>
    <title>增加借书证</title>
</head>
<body>
<%
    String cardID = request.getParameter("cardID");
    String name = request.getParameter("name");
    String unit = request.getParameter("unit");
    String sql = "select * from card where cardid = ?";
    PreparedStatement stmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    stmt.setString(1, cardID);
    ResultSet rs = stmt.executeQuery();
    if (rs.first()) //有这个借书证了
    {%>
<script>
    alert("借书证已存在！");
    window.location.href = "./Login.jsp";
</script>
<%
} else {
    sql = "insert into card values(?,?,?,'S')";
    stmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    stmt.setString(1, cardID);
    stmt.setString(2, name);
    stmt.setString(3, unit);
    stmt.execute();%>
<script>
    alert("增加借书证成功！");
    window.location.href = "./Login.jsp";
</script>
<%
    }
%>
</body>
</html>
