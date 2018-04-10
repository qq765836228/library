<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>添加客户</TITLE> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link href="../../assets/css/bootstrap.min.css" rel="stylesheet">
 
 <script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery-1.11.1.js"></script>
</HEAD>
<script type="text/javascript">
	//验证用户是否存在
	function check(){
		var username=document.getElementById("username").value;
		if(username != null){
			$.ajax({					
	            url: "../login/check2",
	            dataType: "json",
	            data: {"username":username},
	            type: "POST",
	            success: function(data){
	            	if(data == "1"){
	            		$("#err").removeClass('error');
	            		return false;
	            	}else{
	            		$("#err").addClass('error');
	            		return true;
	            	}            	
	            }
	        });
		}		
	}
	function check2(){
		var a=$("#err").hasClass('error');
		if(a){
			return true;
		}
		return false;
	}

</script>
 <style type="text/css">
    .error
    {
    	display: none;
    }
    .form-login .form-login-head,
	.form-login .checkbox {
		text-align:center;
	  margin-bottom: 25px;
	}
	.form-login .checkbox {
	  font-weight: normal;
	}
	.form-login .form-control {
	  position: relative;
	  height: auto;
	  -webkit-box-sizing: border-box;
	     -moz-box-sizing: border-box;
	          box-sizing: border-box;
	  padding: 10px;
	  font-size: 16px;
	}
	.form-login .form-control:focus {
	  z-index: 2;
	}
     .form-login input[type="text"] {
		  margin-bottom: 10px;
		  border-bottom-right-radius: 0;
		  border-bottom-left-radius: 0;
		}
		.form-login input[type="password"] {
		  margin-bottom: 10px;
		  border-top-left-radius: 0;
		  border-top-right-radius: 0;
		}
		.form-login input[type="radio"] {
		  margin-bottom: 20px;
		  border-top-left-radius: 0;
		  border-top-right-radius: 0;
		}
    
    
</style>
<BODY style="background-color:#f5f5f5;">

        <div class="container">
            <div class="row">
                <div class="col-md-12" style="margin-top: 30px;text-align: inherit;" >
                    <h4 class="page-head-line"><img alt="注册图标" src="../../assets/img/注册图标.png">&nbsp;&nbsp;&nbsp;交  理  图  书  馆</h4>
                </div>
            </div>
            <hr>
	          <div class="col-md-4" style="text-align: center;margin: 0 auto;">
					<input type="hidden" name="msg" id ="error">
			     	 <form class="form-login" action="${pageContext.request.contextPath }/login/save.action" onsubmit="return check2()" method="post">
					        <h2 class="form-login-head">注  册</h2>
					        <input type="text" id="username" class="form-control" name="username" onblur="check()" placeholder="用户名"required autofocus>
					        <a id="err" class="error">用户名已存在</a>
					        <input type="password" id="password" class="form-control" name="password"  placeholder="密码" required>
					        <input type="text" id="name" class="form-control" name="name"  placeholder="姓名" required>
					        <input type="text" id="phone" class="form-control" name="phone"  placeholder="证件类型" required>
					        <input type="text" id="phone" class="form-control" name="phone"  placeholder="证件号码" required>
					        <input type="text" id="phone" class="form-control" name="phone"  placeholder="电话号码" required>
					        <input type="radio" name="sex" value="男" checked="checked">男
					        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="sex" value="女">女
					        <button type="submit" class="btn btn-lg btn-primary btn-block"  >注册</button>
					   </form>
			     	 <p class="mt-5 mb-3 text-muted"><a href="index.jsp">返回首页</a></p>
      				 <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
               </div> 
	          </div>


	 
</BODY>


</HTML>
