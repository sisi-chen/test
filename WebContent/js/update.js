//密码
var upwd = /^\d{6,10}$/;


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
   function valitotal() {
	if (valipwd() && valirpwd()) {
		return true;
	}
	return false;
}
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
   