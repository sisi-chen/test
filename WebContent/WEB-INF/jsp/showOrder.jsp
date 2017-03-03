<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="com.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<jsp:useBean class="com.model.OrderDto" id="list" scope="request"/>
<jsp:useBean class="com.model.lyDto" id="lylist" scope="request"/>
</head>
<body>
<%for(int i=0;i<list.size();i++){ %>
<%Order order=list.getOrder(i); %>
订单号：<%=order.getOrderid() %>&nbsp;&nbsp;||&nbsp;&nbsp;
餐品：<%=order.getMenuid() %>&nbsp;&nbsp;||&nbsp;&nbsp;
数量：<%=order.getNum() %>&nbsp;&nbsp;||&nbsp;&nbsp;
订餐人：<%=order.getUserid() %>&nbsp;&nbsp;||&nbsp;&nbsp;
时间：<%=order.getTime() %>
<br>
<%} %>
<br><br><br>
<%for(int i=0;i<lylist.size();i++){ %>
<%ly ly=lylist.getly(i); %>
订餐人：<%=ly.getId() %>&nbsp;&nbsp;||&nbsp;&nbsp;
时间：<%=ly.getTime() %>&nbsp;&nbsp;||&nbsp;&nbsp;
留言：<%=ly.getContent() %>
<br>
<%} %>

</body>
</html>