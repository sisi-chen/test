<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="com.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<TITLE>我学我会网上订餐系统</TITLE>
   <link rel="stylesheet" type="text/css" href="css/styles.css">
  <script type="text/javascript"src="js/Order.js"></script>
<jsp:useBean class="com.model.User" id="user" scope="request"/>
<%
boolean judge=false;
String id[]=null;
String name[]=null;
String num[]=null;
String price[]=null;
float sum=0;
if(request.getAttribute("ids")!=null){
	id=request.getAttribute("ids").toString().split(",");
	name=request.getAttribute("names").toString().split(",");
	num=request.getAttribute("nums").toString().split(",");
	price=request.getAttribute("prices").toString().split(",");
	judge=true;
}
out.print(judge);
%>
  </head>
 <body style="padding-top:20">

		<form action="createOrder" method="post" >
			<table cellspacing=1 cellpadding=2 width="92%"  border=0 align="CENTER" bgcolor="#c0c0c0">
				<tr bgcolor="#dadada">
					<td height="42" width="20%">
						<div align="CENTER"><font color="#000000">编号</font></div>
					</td >
					<td width="20%">
						<div align="CENTER"><font color="#000000">商品名称</font></div>
					</td >
					<td width="20%">
						<div align="CENTER"><font color="#000000">单价</font></div>
					</td>
					<td width="20%">
						<div align="CENTER"><font color="#000000">数量</font></div>
					</td>
					<td width="20%">
						<div align="CENTER"><font color="#000000">金额</font></div>
					</td>
				</tr>
				<%if(judge){for(int i=0;i<id.length;i++){ sum+=Float.parseFloat(price[i])*Integer.parseInt(num[i]);%>
				<tr bgcolor="#ffffff">
					<td height="32"width="20%">
						<div align="CENTER"><font color="#000000"><%=id[i] %></font></div>
						<input style="display:none;" type="text" value="<%=id[i] %>" name="menuid">
					</td>
					<td width="20%">
						<div align="CENTER"><font color="#000000"><%=name[i] %></font></div>
					</td>
					<td width="20%">
						<div align="CENTER"><font color="#000000"><%=price[i] %></font></div>
					</td>
					<td width="20%">
						<div align="CENTER"><font color="#000000"><%=num[i] %></font></div>
						<input style="display:none;" type="text" value="<%=num[i] %>" name="num">
					</td>
					<td width="20%">
						<div align="CENTER"><font color="#000000"><%=Float.parseFloat(price[i])*Integer.parseInt(num[i])%></font></div>
					</td>
				</tr>
				<% }}%>
			</table>
			<table cellspacing=1 cellpadding=4 width="92%" height="100" border=0 align="CENTER" bgcolor="#c0c0c0">
				
				
				
				<tr bgcolor="#dadada">
					<td colspan="5" height="25" align=center><font color="#000000">请确认支付和配送信息</font></td>
				</tr>
				<tr bgcolor="#ffffff">
					<td width="22%" align="RIGHT"><font color="#000000">订 餐 人：</font></td>
					<td colspan=4 width="78%"><input type="text" name="name" value="<%=user.getName() %>"
					 maxlength="20" onblur="checkName()">
					 <font id="us"></font></td>
				</tr>
				<tr bgcolor="#ffffff">
					<td width="22%" align="RIGHT"><font color="#000000">送货地址：</font></td>
					<td colspan=4 width="78%"><input type="text" name="address" value="<%=user.getAddress() %>"
					 maxlength="200" onblur="address()">
					 <font id="addr"></font>
						</td>
				</tr>
				<tr bgcolor="#ffffff">
					<td width="22%" height="31" align="RIGHT"><font
						color="#000000">联系电话：</font></td>
					<td colspan=4 width="78%" height="31"><input type="text" name="phone"  value="<%=user.getPhone()%>"
					maxlength="13" onblur="telcalled()"> 
						<font id="telmsg"></font></td>
				</tr>
				<tr bgcolor="#ffffff">
					<td width="22%" align="RIGHT"><font color="#000000">应付金额：</font></td>
					<td colspan=4 width="78%">
						人民币:<%=sum %>元
						<font id="money"></font></td>
				</tr>
				<tr bgcolor="#ffffff">
					<td width="22%" height="31" align="RIGHT"><font
						color="#000000">配送方式：</font></td>
					<td colspan=4 width="78%" height="31">
					<table width='100%' border='0' cellpadding='3' cellspacing='1'
						bgcolor='#c0c0c0'>
						<tr bgcolor='#ffffff'>
							<td align='center' width='20'><input type='radio'
								name='sendradio' value='送餐上门'></td>
							<td nowrap><font color='#000000'>&nbsp;送餐上门&nbsp;</font></td>
							<td><font color='#000000'>10元起送</font></td>
						</tr>
		</table>
		<tr bgcolor="#ffffff">
					<td  width="22%" height="31" align="right"><font
						color="#000000">订单附言：</font></td>
					<td colspan=4 width="78%" height="25"><textarea name="content"
						 rows="6"></textarea></td>
				</tr>
				<tr bgcolor="#dadada">
					<td colspan="5" height="12" align="center"><input type="submit"
						value="确认以上信息无误,提交"></td>
				</tr>
			</table>
		</form>			
	</body>
	</html>