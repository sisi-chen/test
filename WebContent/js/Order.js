// JavaScript Document
//<script type="text/javascript">	
	
	var user=/^\w{6,10}$/;
	var password=/^\w{6,10}$/;
	var reszip=/^\d{6}$/;
	var emails=/^([a-zA-Z0-9_-]+)@([a-zA-Z0-9_-]+)\.([a-zA-Z0-9_-])$/;
	var realname=/^[u0391-\uFFE5]+$/;
	var idcard=/^\d{15}|\d{18}|\d{17}[X,x]$/;
	function address(){
		if(document.forms[0].address.value==""){
			document.getElementById("addr").innerHTML="地址不能为空！";
			return false;
		}
			document.getElementById("addr").innerHTML="";
			return true;
	}
function checkName(){

	var ch=document.forms[0].name.value;
	if(ch==""){
		document.getElementById("us").innerHTML="用户名不能为空！";
		return false;
	} if(!user.test(ch)){
		document.getElementById("us").innerHTML="用户名只能在6-10位。";
		return false;
	}
		document.getElementById("us").innerHTML="";
		return true;
			
}
function checkPass(){

	var pa=document.forms[0].pass.value;
	if(pa==""){
		document.getElementById("2").innerHTML="密码不能为空！";
		return false;
	}if(!password.test(pa)){
		document.getElementById("2").innerHTML="密码只能是6-10位";
		return false;
	}
		document.getElementById("2").innerHTML="";
		return true;
	
}
function checkrePass(){

	var rep=document.forms[0].repass.value;
	var pa=document.forms[0].pass.value;
	if(rep==""){
		document.getElementById("3").innerHTML="确认密码不能为空";
		return false;
	}
	if(rep!=pa){
		document.getElementById("3").innerHTML="两次密码必须一致";
		return false;
	}
		document.getElementById("3").innerHTML="";
		return true;
	
}
function checkRName(){

	var realn=document.forms[0].reaname.value;
	if(realn==""){
		document.getElementById("4").innerHTML="真实姓名不能为空";
		return false;
	} if(!realname.test(realn)){
		document.getElementById("4").innerHTML="真实姓名只能是中文";
		return false;
	}
		document.getElementById("4").innerHTML="";
		return true;
	
}
function checkEmail(){

	var em=document.forms[0].email.value;
	if(em==""){
		document.getElementById("6").innerHTML="邮箱不能为空";
		return false;
	}if(!emails.test(em)){
		document.getElementById("6").innerHTML="请输入正确的邮箱地址";
		return false;
	}
		document.getElementById("6").innerHTML="";
		return true;
	
}
function checkZip(){

	var zi=document.forms[0].zip.value;
	if(zi!=""){
	if(!reszip.test(zi)){
		document.getElementById("5").innerHTML="邮编只能是6位数字";
		return false;
		}
	}
		return true;
		
}
function checkCard(){

	var ca=document.forms[0].card.value;
	if(!idcard.test(ca)){
		document.getElementById("7").innerHTML="请输入正确的身份证号码";
		return false;
	}
		return true;
	
}
function check(){
	if(checkName() && checkPass() && checkrePass() && checkRName() && checkZip() && checkEmail()&& checkCard()){
		return true;
	}
		return false;
}
//</script>