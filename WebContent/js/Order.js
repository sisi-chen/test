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
			document.getElementById("addr").innerHTML="��ַ����Ϊ�գ�";
			return false;
		}
			document.getElementById("addr").innerHTML="";
			return true;
	}
function checkName(){

	var ch=document.forms[0].name.value;
	if(ch==""){
		document.getElementById("us").innerHTML="�û�������Ϊ�գ�";
		return false;
	} if(!user.test(ch)){
		document.getElementById("us").innerHTML="�û���ֻ����6-10λ��";
		return false;
	}
		document.getElementById("us").innerHTML="";
		return true;
			
}
function checkPass(){

	var pa=document.forms[0].pass.value;
	if(pa==""){
		document.getElementById("2").innerHTML="���벻��Ϊ�գ�";
		return false;
	}if(!password.test(pa)){
		document.getElementById("2").innerHTML="����ֻ����6-10λ";
		return false;
	}
		document.getElementById("2").innerHTML="";
		return true;
	
}
function checkrePass(){

	var rep=document.forms[0].repass.value;
	var pa=document.forms[0].pass.value;
	if(rep==""){
		document.getElementById("3").innerHTML="ȷ�����벻��Ϊ��";
		return false;
	}
	if(rep!=pa){
		document.getElementById("3").innerHTML="�����������һ��";
		return false;
	}
		document.getElementById("3").innerHTML="";
		return true;
	
}
function checkRName(){

	var realn=document.forms[0].reaname.value;
	if(realn==""){
		document.getElementById("4").innerHTML="��ʵ��������Ϊ��";
		return false;
	} if(!realname.test(realn)){
		document.getElementById("4").innerHTML="��ʵ����ֻ��������";
		return false;
	}
		document.getElementById("4").innerHTML="";
		return true;
	
}
function checkEmail(){

	var em=document.forms[0].email.value;
	if(em==""){
		document.getElementById("6").innerHTML="���䲻��Ϊ��";
		return false;
	}if(!emails.test(em)){
		document.getElementById("6").innerHTML="��������ȷ�������ַ";
		return false;
	}
		document.getElementById("6").innerHTML="";
		return true;
	
}
function checkZip(){

	var zi=document.forms[0].zip.value;
	if(zi!=""){
	if(!reszip.test(zi)){
		document.getElementById("5").innerHTML="�ʱ�ֻ����6λ����";
		return false;
		}
	}
		return true;
		
}
function checkCard(){

	var ca=document.forms[0].card.value;
	if(!idcard.test(ca)){
		document.getElementById("7").innerHTML="��������ȷ�����֤����";
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