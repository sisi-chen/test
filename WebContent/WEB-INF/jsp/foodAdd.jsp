<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
  </head>
  
  <body>
    <form action="FoodAddServlet" method="post">
  <center>
   <table width="80%" border="0">
   <tr>
   <td></td>
   <td style="font-size: 23px">添加菜单</td>
   </tr>
   <tr>
   <td>菜 &nbsp; 名:</td>
   <td><input type="text" name="foodname" width="90px" style="width: 250px"></td>
   </tr>
   <tr>
   <td>单 &nbsp; 价:</td>
   <td><input type="text" name="foodprice" style="width: 250px"></td>
   </tr>
   <tr>

   <tr>
   <td>菜的简介:</td>
   <td><input type="text"  style="width: 250px"></td>
   </tr>
   <tr>
   <td>备 &nbsp; 注:</td>
   <td><input type="text"  style="width: 250px"></td>
   </tr>
   
   <td>图 &nbsp; 片:</td>
   <td align="left">
   	<input type="file" name="foodImg" style="width: 250px">
   </td>

   <tr>
   <tr>
   <td></td>
   <td><input type="submit" value="提  交"></td>
   <%if(request.getAttribute("message")!=null)
	   out.println("此菜已收入娘中");%>
   </tr>
   </table>
   </center>
   </form>
  </body>
</html>
