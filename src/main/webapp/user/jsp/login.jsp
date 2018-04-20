<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
    pageEncoding="utf-8"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>登陆</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" rel="stylesheet">
 	<script src="${pageContext.request.contextPath }/admin/assets/js/jquery-2.0.3.min.js"></script>
    <style type="text/css">
    body{
	  height: 100%;
	}
	
	body{
	  display: -ms-flexbox;
	  display: -webkit-box;
	  display: flex;
	  -ms-flex-align: center;
	  -ms-flex-pack: center;
	  -webkit-box-align: center;
	  align-items: center;
	  -webkit-box-pack: center;
	  justify-content: center;
	  padding-top: 40px;
	  padding-bottom: 40px;
	  background-color: #f5f5f5;
	}
	
	.form-signin {
	  width: 100%;
	  max-width: 330px;
	  padding: 15px;
	  margin: 0 auto;
	}
	.form-signin .checkbox {
	  font-weight: 400;
	}
	.form-signin .form-control {
	  position: relative;
	  box-sizing: border-box;
	  height: auto;
	  padding: 10px;
	  font-size: 16px;
	}
	.form-signin .form-control:focus {
	  z-index: 2;
	}
	.form-signin input[type="text"] {
	  margin-bottom: 5px;
	  border-bottom-right-radius: 0;
	  border-bottom-left-radius: 0;
	}
	.form-signin input[type="password"] {
	  margin-bottom: 10px;
	  border-top-left-radius: 0;
	  border-top-right-radius: 0;
	}   
    </style>
  </head>

  <body class="text-center">
    <form class="form-signin">
    <img class="mb-4" src="${pageContext.request.contextPath }/assets/img/2.png" alt="" width="120px" height="120px">
      <h1 class="h3 mb-3 font-weight-normal">登  陆</h1>
      <label for="username" class="sr-only">username</label>
      <input type="text" id="user_idcard" class="form-control" name="username" placeholder="用户名" required autofocus>
      <label for="password" class="sr-only">Password</label>
      <input type="password" id="user_password" class="form-control" name="password" placeholder="密码" required>    
      <input type="button" class="btn btn-lg btn-primary btn-block" id="tj" value="登陆"> 
      <p class="mt-5 mb-3 text-muted"><a href="index.jsp">返回首页</a></p>
      <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
    </form>
  </body>
   <script type="text/javascript">
		/*验证提交表单  */
		$("#tj").click(function(){		  
            var user_idcard = document.getElementById("user_idcard").value;
            var user_password = document.getElementById("user_password").value;
            $.ajax({
                url: "${pageContext.request.contextPath }/User/checks",
                
                data: {"user_idcard":user_idcard,"user_password":user_password},
                type: "POST",
                dataType: "text",
                async: false,
                success: function(data){
                	if(data == "0"){
                		alert("用户名或者密码输入有误，请重新输入！");
                	}else if(data == "s2"){
                		alert("该用户违规次数过多，已被封停，请联系管理员解封");
                	}else{
                		window.location.href='${pageContext.request.contextPath }/User/indexUI/'+data;
                	}
                	
                }
            });
		})	
	</script>
</html>
   