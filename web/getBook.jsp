<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: dd
  Date: 2020/11/14
  Time: 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost:3306/shiyan7?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
    String sql = "select id,name,author,price,image,description,category_id from book" +
            " where category_id = ?";
    String categoryID = request.getParameter("id");
    Connection conn = DriverManager.getConnection(url, "root", "xjt123456");
    PreparedStatement pstat = conn.prepareStatement(sql);
    pstat.setString(1, categoryID);
    ResultSet rs = pstat.executeQuery();
    while (rs.next()) {
%>
<div class="col-sm-9 col-md-3">
    <div class="thumbnail" height="200px"><img src="images/book.jpg">
        <div class="caption" >
            <h4>
            <%=rs.getString("name")%></h4>
            <textarea rows="10" cols="10"><%=rs.getString("description")%></textarea>
            <p>
                <a href="#" class="btn btn-primary" role="button">加入购物车</a> <a href="#" class="btn btn-default" role="button">查看详情</a>
            </p>
        </div>
    </div>
</div>
<%
    }
    pstat.close();
    conn.close();
%>
</body>
</html>
