<%--
  Created by IntelliJ IDEA.
  User: dd
  Date: 2020/11/14
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String id =request.getParameter("id");
        String pwd =request.getParameter("pwd");
        out.println("id:"+id+"<br>");
        out.println("pwd:"+pwd);
    %>
</body>
</html>
