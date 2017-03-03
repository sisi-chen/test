<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="com.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

<%
User user = null;
if(request.getAttribute("user")!=null){
	user=(User)request.getAttribute("user");
	out.println(user.getUserid());
	out.println(user.getPassword());
	out.println(user.getAddress());
	out.println(user.getName());
	out.println(user.getPhone());
}

%>

搜索:
<form action="home" method="post" name="form1">
id:<input type="text" name="userid">
<input type="submit" name="actiontype" value="select">
</form><br>

插入:
<form action="home" method="post" name="form2">
id:<input type="text" name="userid">
password:<input type="text" name="password">
address:<input type="text" name="address">
name:<input type="text" name="name">
phone:<input type="text" name="phone">
<input type="submit" name="actiontype" value="insert">
</form><br>

删除
<form action="home" method="post" name="form3">
id:<input type="text" name="userid">
<input type="submit" name="actiontype" value="delete">
</form><br>

更新:
<form action="home" method="post" name="form4">
id:<input type="text" name="userid">
password:<input type="text" name="password">
address:<input type="text" name="address">
name:<input type="text" name="name">
phone:<input type="text" name="phone">
<input type="submit" name="actiontype" value="update">
</form><br>

</body>
</html>