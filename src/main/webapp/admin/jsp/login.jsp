<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
    pageEncoding="utf-8"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>登陆</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath }/admin/css/bootstrap.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath }/admin/css/login.css"  rel="stylesheet">
   	<script type="text/javascript" src="${pageContext.request.contextPath }/admin/js/jquery-1.11.3.min.js"></script>
	
  </head>

  <body>

    <div class="container" >
      <form class="form-login" align="center" >
        <img class="mb-4" src="../../assets/img/2.png" alt="" width="120px" height="120px"/>
        <h2 class="form-login-head">登陆</h2>
        <input type="text" id="username" class="form-control" name="admin_card"  placeholder="账号"required autofocus>
        <input type="password" id="password" class="form-control" name="admin_password"  placeholder="密码"required>
        <input type="button" class="btn btn-lg btn-primary btn-block" id="tj" value="登陆"> 
      </form>

    </div> 


    
  </body>
    	<script type="text/javascript">
		/*验证提交表单  */
		$("#tj").click(function(){		  
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            $.ajax({
                url: "${pageContext.request.contextPath }/Admin/login",
                dataType: "json",
                data: {"admin_card":username,"admin_password":password},
                type: "POST",
                success: function(data){
                	if(data == "0"){
                		alert("用户名或者密码输入有误，请重新输入！");
                	}else{
                		window.location.href='${pageContext.request.contextPath }/Admin/indexUI/'+data;
                	}
                	
                }
            });
		})	
	</script>
</html>