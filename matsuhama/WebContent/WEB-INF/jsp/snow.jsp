<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,model.SnowBean" %>

<%
List<SnowBean> lister = (List<SnowBean>)request.getAttribute("list");
String hoge = (String)session.getAttribute("hoge");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
snow
<a href="/matsuhama/WelcomServlet">書き込む</a>
<% if(lister == null){ %>
<p><%= "失敗" %></p>
<%} %>
${hogehoge}
<%= lister.size() %>
</body>
</html>