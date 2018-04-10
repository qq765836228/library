<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD id=Head1>
<TITLE>导航</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/view/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/theme.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/view/font-awesome/css/font-awesome.css">
<script src="${pageContext.request.contextPath }/view/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/view/bootstrap/js/bootstrap.js"></script>

<STYLE type=text/css>
BODY {
	PADDING-RIGHT: 0px;
	PADDING-LEFT: 0px;
	PADDING-BOTTOM: 0px;
	MARGIN: 0px;
	PADDING-TOP: 0px;
}
.search form-inline{
	width: 20px;
}
</STYLE>
<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY>
	 <div class="sidebar-nav">
        <a href="#dashboard-menu" class="nav-header" data-toggle="collapse"><i class="icon-reorder"></i>图书信息管理<i class="icon-chevron-up"></i></a>
        <ul id="dashboard-menu" class="nav nav-list collapse ">
      		<li><a href="${pageContext.request.contextPath}/Category_findByPage.action" target=main>图书分类显示</a></li>
      		<li><a href="${pageContext.request.contextPath}/Category_addUI.action" target=main>图书分类添加</a></li>
            <li><a href="${pageContext.request.contextPath}/Book_findByPage.action" target=main>图书信息显示</a></li>
            <li ><a href="${pageContext.request.contextPath}/Book_addUI.action" target=main>图书信息添加</a></li>
            
        </ul>

        <a href="#accounts-menu" class="nav-header" data-toggle="collapse"><i class="icon-user"></i>用户信息管理<i class="icon-chevron-up"></i><!-- <span class="label label-info">+3</span> --></a>
        <ul id="accounts-menu" class="nav nav-list collapse">
            <li ><a href="#" target=main>用户信息显示</a></li>
            <li ><a href="#" target=main>用户信息添加</a></li>
        </ul>

        <a href="#error-menu" class="nav-header collapsed" data-toggle="collapse"><i class="icon-resize-horizontal"></i>借书与还书管理<i class="icon-chevron-up"></i></a>
        <ul id="error-menu" class="nav nav-list collapse">
            <li ><a href="#" target=main>借书登记</a></li>
            <li ><a href="#" target=main>借书订单</a></li>
        </ul>

        <a href="#legal-menu" class="nav-header" data-toggle="collapse"><i class="icon-legal"></i>Legal</a>
        <ul id="legal-menu" class="nav nav-list collapse">
            <li ><a href="privacy-policy.html">Privacy Policy</a></li>
            <li ><a href="terms-and-conditions.html">Terms and Conditions</a></li>
        </ul>

        <a href="help.html" class="nav-header" ><i class="icon-question-sign"></i>Help</a>
        <a href="faq.html" class="nav-header" ><i class="icon-comment"></i>Faq</a>
    </div>
       
</BODY>
</HTML>