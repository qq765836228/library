<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>快速查询--交理图书馆后台管理系统</title>
		<meta name="keywords" content="快速查询--交理图书馆后台管理系统" />
		<meta name="description" content="快速查询--交理图书馆后台管理系统" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!-- basic styles -->
		<link href="${pageContext.request.contextPath }/admin/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/admin/assets/css/font-awesome.min.css" />
		<!-- fonts -->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/admin/assets/css/font.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/admin/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/admin/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/admin/assets/css/ace-skins.min.css" />

		<!-- ace settings handler -->

		<script src="${pageContext.request.contextPath }/admin/assets/js/ace-extra.min.js"></script>
		<script src="${pageContext.request.contextPath }/admin/assets/js/jquery-2.0.3.min.js"></script>
	
	<style type="text/css">
		.more{		
		border:1px solid red;
		}
	</style>
	</head>
	<script type="text/javascript">
		
	         function changeName(){
	        	 alert("dddd");
	         }
		</script>

	<body>
		<!--头部  -->
		<div class="navbar navbar-default" id="navbar">
			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
							交理图书馆后台管理系统
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<!--个人资料  -->
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="${pageContext.request.contextPath }/admin/assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>欢迎光临,</small>
									<font color="black" size="3">${ADMIN.admin_name}</font>
								</span>
								<i class="icon-caret-down"></i>
							</a>
							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">							
								<li><a href="${pageContext.request.contextPath }/Admin/loginOut"><i class="icon-off"></i>退出</a></li>
							</ul>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>

		<div class="main-container" id="main-container">		
			<div class="main-container-inner">
				<!--导航栏  -->
				<div class="sidebar" id="sidebar">
					<ul class="nav nav-list">
						<li >
							<a href="${pageContext.request.contextPath }/admin/jsp/index.jsp">
								<i class="icon-dashboard"></i>
								<span class="menu-text"> 首  页 </span>
							</a>
						</li>

						<li>
							<a href="${pageContext.request.contextPath }/admin/jsp/quickSearch.jsp">
								<i class="icon-text-width"></i>
								<span class="menu-text"> 快 速 查 询  </span>
							</a>
						</li>
						<li class="active">
							<a href="${pageContext.request.contextPath }/admin/jsp/borrow.jsp">
								<i class="icon-text-width"></i>
								<span class="menu-text"> 借 书 登 记  </span>
							</a>
						</li>
						<!--图 书 信 息 管 理  -->
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-tag"></i><span class="menu-text">图 书  信 息 管 理 </span><b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath }/admin/jsp/bookAdd.jsp" class="dropdown-toggle"><i class="icon-double-angle-right"></i> 添 加 图 书 信 息 </a></li>
								<li><a href="${pageContext.request.contextPath }/admin/jsp/bookUI" class="dropdown-toggle"><i class="icon-double-angle-right"></i> 显 示 所 有 图 书 </a></li>	
							</ul>
						</li>
						
						<!--订单管理  -->
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-tag"></i><span class="menu-text"> 订 单 管 理 </span><b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath }/admin/jsp/orderUI.jsp"><i class="icon-double-angle-right"></i>显 示 所 有 订 单</a></li>
								<li><a href="${pageContext.request.contextPath }/admin/jsp/orderIn.jsp"><i class="icon-double-angle-right"></i>执 行 中 订 单</a></li>
								<li><a href="${pageContext.request.contextPath }/admin/jsp/orderOut.jsp"><i class="icon-double-angle-right"></i>违 规 订 单</a></li>
							</ul>
						</li>
						<!--用 户 信 息 管 理  -->
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-tag"></i><span class="menu-text">用 户 信 息 管 理 </span><b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath }/admin/jsp/userAdd.jsp"><i class="icon-double-angle-right"></i> 用 户 信 息 添 加</a></li>
								<li><a href="${pageContext.request.contextPath }/admin/jsp/userUI.jsp"><i class="icon-double-angle-right"></i> 显 示 所 有 用 户</a></li>		
							</ul>
						</li>
						<!--图 书 分 类 管 理   -->
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-tag"></i><span class="menu-text">图 书 分 类 管 理 </span><b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath }/admin/jsp/addCategorys.jsp"><i class="icon-double-angle-right"></i> 新 增 分 类</a></li>
								<li><a href="${pageContext.request.contextPath }/Category/findAll/1"><i class="icon-double-angle-right"></i> 查 询 所 有 分 类</a></li>
							</ul>
						</li>
						<!--系 统 设 置  -->
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-tag"></i><span class="menu-text">系 统 设 置<span class="badge badge-primary ">5</span></span><b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath }/admin/jsp/system.jsp"><i class="icon-double-angle-right"></i>帮助</a></li>
								<li><a href="error-404.html"><i class="icon-double-angle-right"></i>404错误页面</a></li>
								<li><a href="error-500.html"><i class="icon-double-angle-right"></i>500错误页面</a></li>
                                <li><a href="grid.html"><i class="icon-double-angle-right"></i>网格</a></li>
							</ul>
						</li>
					</ul><!-- /.nav-list -->
				</div>
				<!--主内容  -->
				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs" >
						<ul class="breadcrumb" style="line-height:41px;">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">首 页</a>
							</li>
							<li class="active">登记</li>
						</ul><!-- .breadcrumb -->
					</div>

					<div class="page-content" style="position:relative">
						<div class="page-header" style="text-align: center;font-size: 40px">
							<p>
								借 书 登 记	
							</p>
						</div><!-- /.page-header -->
						<div id="more"  style="width:650px;position:absolute;top:148px;left:30%">
							
						</div>
						<div class="row" >
							<div class="col-md-12 " >							
							<form class=" form-horizontal">
									<div class="form-group">
										<label class="col-sm-3 col-md-offset-1  control-label no-padding-right" for="form-field-1"> 图 书  ISBN 码 </label>

										<div class="col-sm-8">
											<input type="text" id="book_isbn"  class="col-xs-10 col-sm-5"  name="book_isbn"/>
											<span class="help-inline col-xs-12 col-sm-7">
												<label class="middle">
													<span class="error">*必填</span>
												</label>
											</span>
										</div>
									</div>
									
							
									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 col-md-offset-1  control-label no-padding-right" for="form-field-1"> 用户账号 </label>

										<div class="col-sm-8">
											<input type="text" id="user_idcard"  class="col-xs-8 col-sm-4"  name="user_idcard"/>
											<span class="help-inline col-xs-12 col-sm-7">
												<label class="middle">
													<span class="error2">*必填</span>
												</label>
											</span>
										</div>
									</div>


									<div class="space-4"></div>
									
									<div class="form-group">
										<label class="col-sm-3 col-md-offset-1  control-label no-padding-right" for="form-field-1"> 借书天数 </label>

										<div class="col-sm-8">
											<input type="text"  id="borrow_day"  class="col-xs-2 col-sm-1"  name="borrow_day"/>&nbsp;&nbsp;&nbsp;<label>天</label>
										</div>
									</div>

									<div class="clearfix form-actions">
										<div class="col-md-offset-4 col-md-8">
											<button id="add" class="btn btn-info" type="submit">
												<i class="icon-ok bigger-110"></i>
												提 交
											</button>

											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="icon-undo bigger-110"></i>
												重 置
											</button>
										</div>
									</div>
								</form>
							</div>
					
						</div><!-- /.row -->
						
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->
				
			</div><!-- /.main-container-inner -->
		</div><!-- /.main-container -->

		<!-- basic scripts -->
		<script type="text/javascript">window.jQuery || document.write("<script src='${pageContext.request.contextPath }/admin/assets/js/jquery-2.0.3.min.js'>"+"<"+"script>");</script>
		<script type="text/javascript">if("ontouchend" in document) document.write("<script src='${pageContext.request.contextPath }/admin/assets/js/jquery.mobile.custom.min.js'>"+"<"+"script>");</script>
		<script src="${pageContext.request.contextPath }/admin/assets/js/bootstrap.min.js"></script>	
		<script src="${pageContext.request.contextPath }/admin/assets/js/ace.min.js"></script>
		<script type="text/javascript">
			$("#book_isbn").blur(function(){
				var book_isbn=$("#book_isbn").val();
				if(book_isbn != null && book_isbn != ""){
					$.ajax({
						url:"${pageContext.request.contextPath }/Book/findByISBN",
						data:"book_isbn="+book_isbn,
						type:"post",
						dataType:"json",
						success:function(data){	
							if(data=="1"){
								$(".error").html("");
								$(".error").html("<font color='green'>*可以使用</font>");
								$("#add").removeAttr("disabled");
								
							}
							if(data=="0"){
								$(".error").html("");
								$(".error").html("<font color='red'>此ISBN不存在！</font>");
								$("#add").attr("disabled","true");
							}
							return false;
						}
					})
				}
				$(".error").html("");
				$(".error").html("<font>*必填</font>");
			})
		
			$("#user_idcard").blur(function(){
				var user_idcard=$("#user_idcard").val();
				if(user_idcard != null && user_idcard != ""){
					$.ajax({
						url:"${pageContext.request.contextPath }/User/findByIdcard",
						data:"user_idcard="+user_idcard,
						type:"post",
						dataType:"json",
						success:function(data){	
							if(data=="1"){
								$(".error2").html("");
								$(".error2").html("<font color='green'>*可以使用</font>");
								$("#add").removeAttr("disabled");
								
							}
							if(data=="0"){
								$(".error2").html("");
								$(".error2").html("<font color='red'>此用户不存在！</font>");
								$("#add").attr("disabled","true");
							}
							return false;
						}
					})
				}
				$(".error2").html("");
				$(".error2").html("<font>*必填</font>");
			})
			
			$("#add").click(function(){
				var oDiv = document.createElement('div');
				oDiv.innerHTML = '<div id="loading"  style="opacity:1;position: fixed;top: 0;left: 0;width: 100%;height: 100%;background: rgba(0, 0, 0, 0.7);z-index: 15000;">'+
									'<div class="fitting-mask3 " style="position: absolute;top: 35%;left: 40%;width: 400px;height: 200px;background-color:white;margin-top: -15px;margin-left: -15px;opacity:1;" id="choose">'+
										'<form style="border:1px solid red;width:400px;height:200px">'+
											'<div class="fitting-header" style="width:400px;height:100px;" align="center" >'+
												'<h4 style="line-height:100px;"> 保存成功</h4>'+
											'</div>'+
											'<div class="sure" style="width:400px;height:96px">'+
												'<div align="center">'+
													'<div  class="btn btn-primary " style="right:20px;"><a href="${pageContext.request.contextPath }/Book/bookAddUI" style="color: white;text-decoration:none;">继续添加</a></div>'+
													'<div  class="btn btn-primary "  ><a href="${pageContext.request.contextPath }/Book/findAll/1" style="color: white;text-decoration:none;">显示所有</a></div>'+
												'</div>'+
											'</div>'+
										'</form>'+
									'</div>'+
								'</div>';
				
				var book_isbn=$("#book_isbn").val();
				var user_idcard=$("#user_idcard").val();
				var borrow_day=$("#borrow_day").val();
				if(book_isbn == null || book_isbn.trim() == ""){
					alert("图书ISBN码不能为空");
					return false;
				}
				else if(user_idcard == null || user_idcard.trim() == ""){
					alert("用户账号不能为空");
					return false;
				}
				else if(borrow_day == null || borrow_day.trim() == ""){
					alert("借阅天数不能为空");
					return false;
				}
				else{
					$.ajax({
						url:"${pageContext.request.contextPath }/Order/insertOrder",
						data:{"book_isbn":book_isbn,"user_idcard":user_idcard,"borrow_day":borrow_day},
						type:"post",
						dataType:"json",
						success:function(data){	
							if(data=="0"){
								document.body.appendChild(oDiv); 
							}
						}
					})
					return false
				}
			})
		</script>
</body>
</html>

