<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/frameset.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>图书馆管理系统</title>
    <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">
	
	<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript">
		/*验证提交表单  */
		function checkForm(){
		    var code = document.getElementById("admin_code").value;
            var patrn = /^[a-zA-Z0-9_]{5,16}$/;
            if(!patrn.exec(code)){
                  alert('用户名只能是5-16位，由字母、数字或下划线组成！');
                  return false;
            }
            var password = document.getElementById("admin_password").value;
            patrn = /^[a-zA-Z0-9_]{6,16}$/;
            if(!patrn.exec(password)){
                alert('密码只能是6-16位，由字母、数字或下划线组成！');
                return false;
            }
            return true;
		}		
	</script>
	
  </head>

  <body background="${pageContext.request.contextPath }/images/login1.png">
	<form class="form-signin" action="${pageContext.request.contextPath }/Admin_login.action" onsubmit="return checkForm()" method=post> 
		<div class="container-fluid">
		  <div class="row">	
		  	<div class="col-md-4 col-md-offset-4" style="margin-top: 200px">	     
		     	<div class="col-md-9">
		     		<h2 class="form-signin-heading" align="center" style="font-family: '黑体'">图书馆管理系统</h2>
		     	</div>
 			    <div class="col-md-12" style="margin-top: 50px">
					<div  class="col-md-9">
		        	 	<label for="inputPassword" class="sr-only">
		        		用户名
		       			 </label>
	       	    		 <input type="text" id="admin_code" name="admin_code" class="form-control" placeholder="用户名" required="required" >
		        	 </div>
					 <div  class="col-md-3">
					 	<SPAN id="code_error"  style="FONT-WEIGHT: bold;" ></SPAN>
					 </div>	
				</div>        	
		        <div class="col-md-12" style="margin-top: 20px">
		        	 <div  class="col-md-9">
		        	 	<label for="inputPassword" class="sr-only">
		        		密码
		       			 </label>
	       	    		 <input type="password" id="admin_password" name="admin_password" class="form-control" placeholder="密码" required="required" >
		        	 </div>
					 <div  class="col-md-3">
					 	<SPAN id="password_error" style="FONT-WEIGHT: bold;" ></SPAN>
					 </div>	       	    	 
				</div>		
				 <!-- <div class="col-md-5 col-md-offset-1" style="margin-top: 10px">
					<div class="checkbox">
		          		<label>
		            		<input type="checkbox" value="remember-me"> 记住用户名
		         		 </label>
		       		 </div>
				</div>	 -->	        
		        <div class="col-md-9" style="margin-top: 30px">
		        	 <div class="col-md-6 col-md-offset-3">
		        		 <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
		        	 </div>	            
				</div>
     		</div>
		  </div>
		</div>
	</form>	 
  </body>
</html>