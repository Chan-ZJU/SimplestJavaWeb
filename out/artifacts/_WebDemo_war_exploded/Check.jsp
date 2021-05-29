<%--
  Created by IntelliJ IDEA.
  User: 10721
  Date: 5/29/2021
  Time: 4:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="Database.jsp" %>
<%
    String sql = "select * from manager where ID = ? and password = ? ";
    PreparedStatement stmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    stmt.setString(1, request.getParameter("account"));
    stmt.setString(2, request.getParameter("pwd"));
    ResultSet rs = stmt.executeQuery();
    if (!rs.first()) //没有账号或密码错误，登陆失败
    {
        login = false;
        out.println("<script>" +
                "alert(\"账号不存在或密码错误\");" +
                "window.location.href=\"./index.jsp\";" +
                "</script>");
    } else {
        login = true;
        out.println("<script>" +
                "alert(\"登陆成功\");" +
                "window.location.href=\"./Login.jsp\";" +
                "</script>");
    }
%>
