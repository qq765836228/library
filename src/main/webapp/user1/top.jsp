<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD id=Head1>
<TITLE>顶部</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">


<link rel="stylesheet" type="text/css" href="view/bootstrap/css/bootstrap.css">

<link rel="stylesheet" type="text/css" href="css/theme.css">
<link rel="stylesheet" href="view/font-awesome/css/font-awesome.css">

<script src="view/bootstrap/js/bootstrap.js"></script>
<script src="view/jquery-1.7.2.min.js" type="text/javascript"></script>

<STYLE type=text/css>
.brand {       	
        	font-family: "黑体";
}    
.brand .first {
   color: #fff;
}
</STYLE>
<%-- 
<link rel="shortcut icon" href="${pageContext.request.contextPath }/assets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath }/assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath }/assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath }/assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath }/assets/ico/apple-touch-icon-57-precomposed.png">  --%>
</HEAD>
<BODY>
	 <div class="navbar" >
        <div class="navbar-inner">
                <ul class="nav pull-right">
                     <li id="fat-menu" >
                        <a href="#">
                            <i class="icon-user"></i> ${admins.admin_name }
                        </a>
                    </li>
                    <li><a href="${pageContext.request.contextPath }/Admin_loginOut.action" target=_top>退出</a></li>                 
                </ul>
                <a class="brand" href="index.html"><span class="first">图书馆管理系统</span></a>
        </div>
    </div>  
</BODY>
</HTML>


</body>
</html>