//用户
var uname = /^\w{6,10}$/;
//密码
var upwd = /^\d{6,10}$/;
//证件
var uemail = /^([a-zA-Z0-9_-]+)@([a-zA-Z0-9_-]+)(\.[a-zA-Z0-9_-]+)$/;
//年龄
var uage = /^[1-9]\d{1}$/;

//提交所有的信息
function valitotal() {
	if (valiname() && valipwd() && valirpwd() && valiemail()) {
		return true;
	}
	return false;
}
 //输出信息
function showmesge(id, fag, msg) {
	var img1 = "<img src='images/right.gif' border='0'>";
	var img2 = "<img src='images/bookmark.gif' border='0'>";
	var msgfont = document.getElementById(id);
	if (fag == "1") {
		msgfont.innerHTML = img1 + msg;
	} else {
		msgfont.innerHTML = img2 + msg;
	}
}		 
 //用户名
function valiname() {
	var name = document.forms[0].uid.value;
	if (name == "") {
		showmesge("namemsg", "2", "\u7528\u6237\u540d\u4e0d\u80fd\u4e3a\u7a7a");
		return false;
	} else {
		if (uname.test(name)) {
			showmesge("namemsg", "1", "");
			return true;
		} else {
			showmesge("namemsg", "2", "\u7528\u6237\u540d\u5fc5\u987b6-10\u4f4d\u6570\u5b57");
			return false;
		}
	}
}
 //密码
function valipwd() {
	var pwd = document.forms[0].pwd.value;
	if (pwd == "") {
		showmesge("pwdmsg", "2", "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a");
		return false;
	} else {
		if (upwd.test(pwd)) {
			showmesge("pwdmsg", "1", "");
			return true;
		} else {
			showmesge("pwdmsg", "2", "\u5bc6\u7801\u5fc5\u987b6-10\u4f4d");
			return false;
		}
	}
}
 //  确认密码
function valirpwd() {
	var pwd = document.forms[0].pwd.value;
	var rpwd = document.forms[0].rpwd.value;
	if (rpwd == "") {
		showmesge("rpwdmsg", "2", "\u786e\u8ba4\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a");
		return false;
	} else {
		if (pwd == rpwd) {
			showmesge("rpwdmsg", "1", "");
			return true;
		} else {
			showmesge("rpwdmsg", "2", "\u5bc6\u7801\u548c\u786e\u8ba4\u5bc6\u7801\u4e0d\u4e00\u81f4");
			return false;
		}
	}
}
 //邮件
function valiemail() {
	var emaill = document.forms[0].email.value;
	if (emaill == "") {
		showmesge("emailmsg", "2", "\u90ae\u4ef6\u4e0d\u80fd\u4e3a\u7a7a");
		return false;
	} else {
		if (uemail.test(emaill)) {
			showmesge("emailmsg", "1", "");
			return true;
		} else {
			showmesge("emailmsg", "2", "\u90ae\u4ef6\u8981\u6709@\u7b26\u53f7\u548c.\u7b26\u53f7");
			return false;
		}
	}
}
 //年龄
//function valiage() {
	//var agee = document.forms[0].age.value;
	//if (agee == "") {
		//showmesge("agemsg", "1", "");
		//return true;
	//} else {
		//if (uage.test(agee)) {
			//showmesge("agemsg", "1", "");
			//return true;
		//} else {
			//showmesge("agemsg", "2", "\u5e74\u9f84\u5fc5\u987b2\u4f4d");
			//return false;
		//}
	//}
//}
//注册
