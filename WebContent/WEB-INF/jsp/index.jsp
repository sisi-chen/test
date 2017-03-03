<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="com.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<TITLE>我学我会网上订餐系统</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="css/styles.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">

<jsp:useBean class="com.model.MenuDto" id="list" scope="request"/>


<table cellSpacing=0 cellPadding=0 width=776 align=center border=0>
	<tr>
		<td width="220" rowspan="3"><img src="images/2.jpg"
			width="160"></td>
		<td width="556" height="36">&nbsp;</td>
	</tr>
	<tr>
		<TD
			style="FONT-SIZE: 24pt; FILTER: blur(add=1, direction=120, strength=5); WIDTH: 100%; COLOR: #000000; FONT-FAMILY: arial; POSITION: relative"
			noWrap><strong><span class="STYLE1"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;天天订餐</span> 网上订餐系统</strong></TD>
	</tr>
	<tr>
		<td>&nbsp;</td>
	</tr>
</table>

<TABLE cellSpacing=0 cellPadding=0 width=776 align=center border=0>
	<TBODY>
		<TR>
			<TD background="images/001.gif" height=42>
			<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
				<TBODY>
					<TR>
						<TD width=0 height=20></TD>
						<TD align=middle><FONT
							style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;|&nbsp;</FONT><A
							href="#" target=_self><FONT
							style="FONT-SIZE: 13px; COLOR: #000000">网站首页</FONT></A><FONT
							style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;|&nbsp;</FONT><A
							href="#" target=_self><FONT
							style="FONT-SIZE: 13px; COLOR: #000000">关于我们</FONT></A><FONT
							style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;|&nbsp;</FONT><A
							href="#" target=_self><FONT
							style="FONT-SIZE: 13px; COLOR: #000000">定餐帮助</FONT></A><FONT
							style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;|&nbsp;</FONT><A
							href="#" target=_self><FONT
							style="FONT-SIZE: 13px; COLOR: #000000">网上定餐</FONT></A><FONT
							style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;|&nbsp;</FONT><A
							href="#" target=_self><FONT
							style="FONT-SIZE: 13px; COLOR: #000000">客服中心</FONT></A><FONT
							style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;|&nbsp;</FONT></TD>
					</TR>
				</TBODY>
			</TABLE>
			</TD>
		</TR>
	</TBODY>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=776 align=center border=0>
	<TBODY>
		<TR vAlign=top>
			<TD width=181 background="images/002.gif">
			<TABLE cellSpacing=0 cellPadding=0 width=1 border=0>
				<TBODY>
					<TR>
						<TD><IMG height=800 src="images/left.jpg" width=180></TD>               
                        
					</TR>
				</TBODY>
			</TABLE>
                        
			<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
				<TBODY>
					<TR>
						<TD align=middle height=30><FONT color=#000000> <SCRIPT
							language=javascript src="images/DateTime2.js"></SCRIPT> <SCRIPT
							language=javascript>tick('cn');</SCRIPT> </FONT></TD>
					</TR>
				</TBODY>
			</TABLE>
			<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
				<TBODY>
					<TR>
						<TD>&nbsp;</TD>
					</TR>
					<TR>
						<TD background="images/003.gif" height=4></TD>
					</TR>
					<TR>
						<TD>&nbsp;</TD>
				</TBODY>
			</TABLE>
			<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
				<TBODY>
					<TR>
						<TD>&nbsp;</TD>
					</TR>
					<TR>
						<TD background="images/003.gif" height=4></TD>
					</TR>
					<TR>
						<TD align=middle>
						<TABLE cellSpacing=0 cellPadding=0 width="94%" border=0>
							<TBODY>
								<TR>
									<TD>&nbsp;</TD>
								</TR>
							</TBODY>
						</TABLE>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			</TD>
			<TD>
			<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
				<TBODY>
					<TR>
						<TD><IMG height=72 src="images/001.jpg" width=595></TD>
					</TR>
				</TBODY>
			</TABLE>
			<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
				<TBODY>
					<TR>
						<TD width="90%">
						<div class='cnt'><marquee
							style="FONT-SIZE: 13px; COLOR: #0000FF" scrollamount='5'
							direction='left'><IMG height=10 src="images/tp009.gif"
							width=15> 欢迎您使用天天订餐订餐系统，祝您用餐愉快！</marquee></div>
						&nbsp;&nbsp;</TD>
					</TR>
				</TBODY>
			</TABLE>
			
			<TABLE cellSpacing=0 cellPadding=0 width="96%" align=center border=0>
				<TBODY>
					<TR>
						<TD>

						<TABLE cellSpacing=1 cellPadding=1 width="100%" align=center
							bgColor=#c0c0c0 border=0>
							<TBODY>
								<TR bgColor=#dadada>

									<TD width="100%" align="right"><a href="#"><img
										src="images/lcart_cn.gif" border=0></a></TD>
								</TR>
							</TBODY>
						</TABLE>
						<BR>
						<TABLE cellSpacing=2 cellPadding=1 width="100%" align=center
							border=0>
							<TBODY>
	
	
<form action="zhu" method="post" name="form1">

查询：id &nbsp;&nbsp;&nbsp;<input type="text" name="menuid" value="${menuid}">
查询：name<input type="text" name="name" value="${name}"><br>
查询：price <input type="text" name="price1" value="${price1}">
&nbsp;&nbsp;&nbsp;and&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="price2" value="${price2}">
<input type="submit"  value="搜一搜">
</form>						

<form method="post" action="orderSubmit" name="form2" onSubmit="return orderFood()">
<input type="submit" value="订全部" ><br>	
<span id="listSize">共搜索到 <%=list.size() %>条记录 </span>				
<%
Menu menu=null;
for(int i=0;i<list.size();i++){menu = list.getMenu(i);%>
	


							
								<TR>
									<TD>
									<TABLE height="100%" cellSpacing=1 cellPadding=2 border=0>
										<TBODY>
											<TR>
												<TD vAlign=top width=90 height=90><A href=#
													target=_blank><IMG height=80 alt=点击图片查看内容
													src="images/500047.jpg" width=80 border=0></A></TD>
												<TD vAlign=top>
												<TABLE cellSpacing=1 cellPadding=0 width="100%" align=center
													border=0>
													<TBODY>
														<TR>
															<TD><A href=# target=_blank>名称：<STRONG><%=menu.getname() %></STRONG></A></TD>
														</TR>
														<TR>
															<TD height=21><FONT color=#ff0000>现价：人民币<%= menu.getprice()%>元</FONT><BR>
															时令绿色蔬菜！</TD>
														</TR>
														<TR>
															<TD>
																<input style="display:none;" type="text" name="id" value="<%=menu.getmenuid() %>" disabled="disabled" id="id<%=i %>">
																<input style="display:none;" type="text" name="name" value="<%=menu.getname() %>" disabled="disabled" id="name<%=i %>">
																<input style="display:none;" type="text" name="price" value="<%= menu.getprice()%>" disabled="disabled" id="price<%=i %>">
																<button  onclick="return numAdd('<%=i %>');" style="border:0;width:15px;height:13px;border-radius:5px 5px 5px 5px;">+</button>
																<input type="text" value="0" size="1" name="num" disabled="disabled" id="num<%=i %>" >
																<button  onclick="return numReduce('<%=i %>');" style="border:0;width:15px;height:13px;border-radius:5px 5px 5px 5px;">-</button>
															</TD>
														</TR>
													</TBODY>
												</TABLE>
												</TD>
											</TR>
											<TR>
												<TD height=28>编号: <%=menu.getmenuid() %></TD>
												<TD>
												<TABLE cellSpacing=1 cellPadding=0 width=145 border=0>
													<TBODY>
														<TR>
															<TD align="middle" width="70"><a href="#"><img
																src="images/buy_cn.gif" border="0"
																longdesc="shoppingCart.html"></a></TD>
															<TD align=middle width=70><A href=# target=_blank><IMG
																src="images/detail_cn.gif" border=0></A></TD>
														</TR>
													</TBODY>
												</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									</TD>
									
									<%if(i+1!=list.size()){ menu=list.getMenu(i+1);i++;%>
									<TD>
									<TABLE height="100%" cellSpacing=1 cellPadding=2 border=0>
										<TBODY>
											<TR>
												<TD vAlign=top width=90 height=90><A href=#
													target=_blank><IMG height=80 alt=点击图片查看内容
													src="images/500046.jpg" width=80 border=0></A></TD>
												<TD vAlign=top>
												<TABLE cellSpacing=1 cellPadding=0 width="100%" align=center
													border=0>
													<TBODY>
														<TR>
															<TD><A href=# target=_blank>名称：<STRONG><%=menu.getname() %></STRONG></A></TD>
														</TR>
														<TR>
															<TD height=21><FONT color=#ff0000>现价：人民币<%= menu.getprice()%>元</FONT><BR>
															时令绿色蔬菜！</TD>
														</TR>
														<TR>
															<TD>
																<input style="display:none;" type="text" name="id" value="<%=menu.getmenuid() %>" disabled="disabled" id="id<%=i %>">
																<input style="display:none;" type="text" name="name" value="<%=menu.getname() %>" disabled="disabled" id="name<%=i %>">
																<input style="display:none;" type="text" name="price" value="<%= menu.getprice()%>" disabled="disabled" id="price<%=i %>">
																<button  onclick="return numAdd('<%=i %>');" style="border:0;width:15px;height:13px;border-radius:5px 5px 5px 5px;">+</button>
																<input type="text" value="0" size="1" name="num" disabled="disabled" id="num<%=i %>" >
																<button  onclick="return numReduce('<%=i %>');" style="border:0;width:15px;height:13px;border-radius:5px 5px 5px 5px;">-</button>
															</TD>
														</TR>
													</TBODY>
												</TABLE>
												</TD>
											</TR>
											<TR>
												<TD height=28>编号: <%=menu.getmenuid() %></TD>
												<TD>
												<TABLE cellSpacing=1 cellPadding=0 width=145 border=0>
													<TBODY>
														<TR>
															<TD align=middle width=70><A href=#><IMG
																src="images/buy_cn.gif" border=0></A></TD>
															<TD align=middle width=70><A href=# target=_blank><IMG
																src="images/detail_cn.gif" border=0></A></TD>
														</TR>
													</TBODY>
												</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									</TD>
									<%} %>
								</TR>
								
								
			<%}%>								
</form>						
								
			<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
				<TBODY>
					<TR>
						<TD align=middle><BR>
						<P align=center><FONT color=#000000>天天订餐 &copy;
						2016&nbsp;&nbsp;&nbsp;&nbsp; 祝您订餐愉快！</FONT></P>
						<P align=center>&nbsp;</P>
						<BR>
						<BR>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			</TD>
		</TR>
	</TBODY>
</TABLE>

<script type="text/javascript">
function numAdd(i){
	var num = document.getElementById("num"+i);
	var name = document.getElementById("name"+i);
	var id = document.getElementById("id"+i);
	var price = document.getElementById("price"+i);
	if(num.value!=10){
		num.value++;
		name.disabled="";
		id.disabled="";
		price.disabled="";
		num.disabled="";
	}
	//alert("1");
	return false;
}
function numReduce(i){
	var num = document.getElementById("num"+i);
	var name = document.getElementById("name"+i);
	var id = document.getElementById("id"+i);
	var price = document.getElementById("price"+i);
	if(num.value!=0)
		num.value--;
	if(num.value==0){
		name.disabled="disabled";
		id.disabled="disabled";
		price.disabled="disabled";
		num.disabled="disabled";
	}
	//alert("num"+i);
	return false;
}
function orderFood(){
	var num = <%=list.size() %>;

	var i=0;
	for(;i<num;i++){
		if(document.getElementById("id"+i).disabled=="")
			break;
	}

	if(i!=num)
		return true;
	else{
		alert("请修改您要订购的餐品的数量");
		return false;
	}
}
</SCRIPT>

</BODY>
</HTML>
