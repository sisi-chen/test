<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="com.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

<form action="zhu" method="post" name="form1">
<jsp:useBean class="com.model.MenuDto" id="list" scope="request"/>

查询：<input type="text" name="menuid" value="${menuid}"><br>;
	<input type="text" name="sellerid" value="${sellerid}"><br>;
	<input type="text" name="name" value="${name}"><br>;
	<input type="text" name="price" value="${price}"><br>;
	<input type="submit"  value="aa">
</form>
<%
Menu menu=null;
for(int i=0;i<list.size();i++){
	menu = list.getMenu(i);
	out.println("menuid:"+menu.getmenuid()+"&nbsp");
	out.println("sellerid:"+menu.getsellerid()+"&nbsp");
	out.println("name:"+menu.getname()+"&nbsp");
	out.println("price:"+menu.getprice()+"<br>");
}%>
</body>
</html>