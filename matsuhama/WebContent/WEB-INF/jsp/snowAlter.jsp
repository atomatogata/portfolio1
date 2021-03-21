<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,model.SnowBean" %>

<%
List<SnowBean> list = (List<SnowBean>)session.getAttribute("list");
int alterId = Integer.parseInt(request.getParameter("alterId"));
int primaryId = list.get(alterId -1).getId();
session.setAttribute("primaryId", primaryId);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>snowAlter</p>
primary_key:<%= session.getAttribute("primaryId") %>
<form action="/matsuhama/SnowUpdate" method="GET">
<input type="submit" value="削除">
</form>
<form action="/matsuhama/SnowUpdate" method="POST">
種類：
<select name="type">
<%
String name1 = "";
String name2 = "";
String name3 = "";
String name4 = "";
String name5 = "";
String name6 = "";
switch(list.get(alterId - 1).getType()){
case 1:
	name1 = "selected";
	break;
case 2:
	name2 = "selected";
	break;
case 3:
	name3 = "selected";
	break;
case 4:
	name4 = "selected";
	break;
case 5:
	name5 = "selected";
	break;
case 6:
	name6 = "selected";
	break;
}


%>
<option value="1"<%= name1 %>>なんとかしたいと思っている </option>
<option value="2"<%= name2 %>>危険な場所なので注意して！</option>
<option value="3"<%= name3 %>>急がないけれど、助けて欲しい！ </option>
<option value="4"<%= name4 %>>ボランティアを募集しています！ </option>
<option value="5"<%= name5 %>>重大！すぐに助けて！</option>
<option value="6"<%= name6 %>> その他  </option>
</select>
名前：
<input type="text" name="name" value="<%= list.get(alterId - 1).getName() %>">
内容：
<input type="text" name="text" value="<%= list.get(alterId - 1).getText() %>">
<input type="submit" value="変更">
</form>





</body>
</html>