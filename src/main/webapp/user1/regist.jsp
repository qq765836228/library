<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/frameset.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<STYLE type=text/css>
BODY {
	FONT-SIZE: 12px; COLOR: #ffffff; FONT-FAMILY: 宋体
}
TD {
	FONT-SIZE: 12px; COLOR: #ffffff; FONT-FAMILY: 宋体
}

.error{
   FONT-SIZE: 10px; COLOR: red; FONT-FAMILY: 宋体
}

</STYLE>

<META content="MSHTML 6.00.6000.16809" name=GENERATOR>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	function checkCode(){
		var usercode=$("#user_code").val();	
		if(usercode.trim() == ""){
			$("#error1").addClass("error");
			$("#error1").html("用户名不能为空");
		}else{
			var param={"user_code":usercode};
			$.post("${pageContext.request.contextPath}/user_check.action",param,function(d){
				if( d && d=="1"){
					$("#error1").removeClass("error");
					$("#error1").html("用户名可以注册");
				}else{
					$("#error1").addClass("error");
					$("#error1").html("用户名已被占用");
				}
			});
		}
	
	}
	function checkForm(){
		checkCode();
		if($(".error").size()>0){
			return false;
		}
	}
	
	
</script>

</HEAD>
<BODY>
<FORM id=form1  action="${pageContext.request.contextPath }/user_save.action" onsubmit="return checkForm()" method=post>
<DIV>
<TABLE cellSpacing=0 cellPadding=0 width=900 align=center border=0>
  <TBODY>
  <TR>
    <TD style="HEIGHT: 105px"><IMG src="images/login_1.gif" border=0></TD></TR>
  <TR>
    <TD background=images/login_2.jpg height=300>
      <TABLE height=300 cellPadding=0 width=900 border=0>
        <TBODY>
        <TR>
          <TD colSpan=2 height=35></TD></TR>
        <TR>
          <TD width=360></TD>
          <TD>
            <TABLE cellSpacing=0 cellPadding=2 border=0>
              <TBODY>
              <TR>
                <TD style="HEIGHT: 28px" width=80>账号：</TD>
                <TD style="HEIGHT: 28px" width=150>
                	<INPUT id=user_code style="WIDTH: 130px" name=user_code onblur="checkCode()">
                </TD>
                <TD style="HEIGHT: 28px" width=370>
                	<SPAN id=error1 style="FONT-WEIGHT: bold;" ></SPAN>
                </TD>
              </TR>
              <TR>
                <TD style="HEIGHT: 28px">密码：</TD>
                <TD style="HEIGHT: 28px">
                	<INPUT id=user_password style="WIDTH: 130px" type="password" name=user_password>
                </TD>
                <TD style="HEIGHT: 28px">
                	<SPAN id=error2  style="FONT-WEIGHT: bold; VISIBILITY: hidden; COLOR: white"></SPAN>
                </TD>
              </TR>
              <TR>
                <TD style="HEIGHT: 28px">真实姓名：</TD>
                <TD style="HEIGHT: 28px">
                	<INPUT id=user_name style="WIDTH: 130px"  name=user_name>
                </TD>
                <TD style="HEIGHT: 28px">
                	<SPAN id=error3  style="FONT-WEIGHT: bold; VISIBILITY: hidden; COLOR: white"></SPAN>
                </TD>
              </TR>
              <!-- <TR>
                <TD style="HEIGHT: 28px">验证码：</TD>
                <TD style="HEIGHT: 28px"><INPUT id=txtcode 
                  style="WIDTH: 130px" name=txtcode></TD>
                <TD style="HEIGHT: 28px">&nbsp;</TD></TR> -->
              <TR>
                <TD style="HEIGHT: 18px"></TD>
                <TD style="HEIGHT: 18px"></TD>
                <TD style="HEIGHT: 18px"></TD></TR>
              <TR>
               
                 <TD>
                	 <INPUT id=btn type="submit"  value="注册" name=btn/>
                 </TD>
                 <TD>
                 		<a href="${pageContext.request.contextPath }/login.jsp"><INPUT id=btn type="button"  value="返回" name=btn/></a>
                 </TD>
               </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD><IMG src="images/login_3.jpg" 
border=0></TD></TR></TBODY></TABLE></DIV></DIV>


</FORM></BODY></HTML>


</body>
</html>