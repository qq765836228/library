<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>添加客户</TITLE> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link href="../../assets/css/bootstrap.min.css" rel="stylesheet">
	 <script src="${pageContext.request.contextPath }/admin/assets/js/jquery-2.0.3.min.js"></script>
  	 <script src="${pageContext.request.contextPath }/assets/js/bootstrap.js"></script>
</HEAD>

 <style type="text/css">
    /* .error
    {
    	display: none;
    } */
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
	  font-size: 12px;
	}
	.form-login .form-control:focus {
	  z-index: 2;
	}
     .form-login input[type="text"] {
		  margin-bottom: 10px;
		  border-bottom-right-radius: 0;
		  border-bottom-left-radius: 0;
		}
		 .form-login select {
		  
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
			     	 <form class="form-login" action="${pageContext.request.contextPath }/User/edit" onsubmit="return check2()" method="post">
					        <h2 class="form-login-head">修 改 密 码</h2>
					        <input type="text" class="form-control"  name="user_idcard" value="${USER.user_idcard }" readonly="readonly">				      
					        <input type="password" class="form-control" id="Opassword"  placeholder="原始密码" required>
					        <input type="password" class="form-control" id="Npassword1" name="user_password"  placeholder="新密码" required>
					        <input type="password" class="form-control" id="Npassword2" placeholder="确定密码" required>
					         <button type="submit" id="add" class="btn btn-lg btn-primary btn-block"  >修改</button>
					   </form>
			     	 <p class="mt-5 mb-3 text-muted"><a href="javascript:(window.history.back(-1));">返回</a></p>
      				 <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
               </div> 
	          </div>


	 
</BODY>
<script type="text/javascript">
	function check2(){
		var Opassword1="${USER.user_password}";
		var Opassword2=$("#Opassword").val();
		var Npassword1=$("#Npassword1").val();
		var Npassword2=$("#Npassword2").val();
		if(Opassword2 != Opassword1){
			err("原始密码输入错误");
			return false;
		}else if(Npassword1 != Npassword2){
			err("两次输入的新密码不一致");
			return false;
		}else if(Opassword1 == Npassword1){
			err("新密码与旧密码一致");
			return false;
		}else{
			return true;
		}
		
	}
	
	function err(msg){
		var oDiv1 = document.createElement('div');
		oDiv1.innerHTML = '<div id="loading"  style="opacity:1;position: fixed;top: 0;left: 0;width: 100%;height: 100%;background: rgba(0, 0, 0, 0.7);z-index: 15000;">'+
							'<div class="fitting-mask3 " style="position: absolute;top: 35%;left: 40%;width: 400px;height: 200px;background-color:white;margin-top: -15px;margin-left: -15px;opacity:1;" id="choose">'+
								'<form style="border:1px solid red;width:400px;height:200px">'+
									'<div class="fitting-header" style="width:400px;height:100px;" align="center" >'+
										'<h4 style="line-height:100px;">'+msg+'</h4>'+
									'</div>'+
									'<div class="sure" style="width:400px;height:96px">'+
										'<div align="center">'+
											'<div  class="btn btn-primary " style="right:20px;"><a href="" style="color: white;text-decoration:none;">确认</a></div>'+												
										'</div>'+
									'</div>'+
								'</form>'+
							'</div>'+
						'</div>';
		document.body.appendChild(oDiv1);
}
</script>
</HTML>
