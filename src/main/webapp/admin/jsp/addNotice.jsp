<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>图书添加--交理图书馆后台管理系统</title>
		<meta name="keywords" content="图书添加--交理图书馆后台管理系统" />
		<meta name="description" content="图书添加--交理图书馆后台管理系统" />
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
	</head>
	<script type="text/javascript">
	$(function(){	
		$("#add").click(function(){
			var oDiv = document.createElement('div');
			oDiv.innerHTML = '<div id="loading"  style="opacity:1;position: fixed;top: 0;left: 0;width: 100%;height: 100%;background: rgba(0, 0, 0, 0.7);z-index: 15000;">'+
								'<div class="fitting-mask3 " style="position: absolute;top: 35%;left: 40%;width: 400px;height: 200px;background-color:white;margin-top: -15px;margin-left: -15px;opacity:1;" id="choose">'+
									'<form style="border:1px solid red;width:400px;height:200px">'+
										'<div class="fitting-header" style="width:400px;height:100px;" align="center" >'+
											'<h4 style="line-height:100px;"> 密码修改成功 ,点击返回登陆界面</h4>'+
										'</div>'+
										'<div class="sure" style="width:400px;height:96px">'+
											'<div align="center">'+
												'<div  class="btn btn-primary " style="right:20px;"><a href="${pageContext.request.contextPath }/admin/jsp/login.jsp" style="color: white;text-decoration:none;">返回登陆</a></div>'+												
											'</div>'+
										'</div>'+
									'</form>'+
								'</div>'+
							'</div>';
			
			
			var admin_card=$("#admin_card").val();
			var old_password=$("#old_password").val();
			var new_password=$("#new_password").val();
			var new_password2=$("#new_password2").val();
			if(old_password==null || old_password== ""){
				err("原始密码不能为空");
				return false;
			}
			else if(new_password==null || new_password== ""){
				err("现在密码不能为空");
				return false;
			}
			else if(new_password2==null || new_password2== ""){
				err("确认密码不能为空");
				return false;
			}
			else if(new_password != new_password2){
				err("确认密码输入有误");
				return false;
			}
			else{
				
				$.ajax({
					url:"${pageContext.request.contextPath }/Admin/editAdmin",
					data:{"admin_card":admin_card,"old_password":old_password,"new_password":new_password},
					type:"post",
					dataType:"json",
					success:function(data){	
						if(data=="0"){		
							err("原始密码输入有误");
						}
						if(data=="1"){		
							document.body.appendChild(oDiv); 
						}	
					}					
				})
				return false
			}
			
		})
	});
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
	<body id="bod">
		<!--头部  -->
		<div class="navbar navbar-default" id="navbar" >
			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand" >
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
						<!--图 书信息管理  -->
						<li class="active">
							<a href="#" class="dropdown-toggle">
								<i class="icon-tag"></i><span class="menu-text">用 户 信 息 管 理 </span><b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu" >
								<li class="active"><a href="${pageContext.request.contextPath }/admin/jsp/bookAdd.jsp" class="dropdown-toggle"><i class="icon-double-angle-right"></i> 添 加 图 书 信 息 </a></li>
								<li><a href="${pageContext.request.contextPath }/admin/jsp/Books.jsp" class="dropdown-toggle"><i class="icon-double-angle-right"></i> 显 示 所 有 图 书 </a></li>	
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
							<li class="active">添 加 图 书</li>
						</ul><!-- .breadcrumb -->
					</div>

					
					<div class="page-content">
						<div class="page-header">
							<h1>
								图 书 详 细 信 息
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">							
							<form class="form-horizontal">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" > 公告内容</label>

										<div class="col-sm-9">
											<input type="text"   class="col-xs-6 col-sm-3" id="admin_name" value="${ADMIN.admin_name }" readonly="readonly"/>
										</div>
									</div>

									<div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" > 管理员账号</label>

										<div class="col-sm-9">
											<input type="text"   class="col-xs-6 col-sm-3" id="admin_card" value="${ADMIN.admin_card }" readonly="readonly"/>
										</div>
									</div>

									<div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" > 原始密码</label>

										<div class="col-sm-9">
											<input type="password"   class="col-xs-6 col-sm-3" id="old_password"  />
										</div>
									</div>

									<div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" > 现在密码</label>

										<div class="col-sm-9">
											<input type="password"   class="col-xs-6 col-sm-3" id="new_password"  />
										</div>
									</div>

									
									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" > 确认密码</label>

										<div class="col-sm-9">
											<input type="password"   class="col-xs-6 col-sm-3" id="new_password2"  />
										</div>
									</div>

									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
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
						</div>
					</div>
				</div><!-- /.main-content -->
				
			</div><!-- /.main-container-inner -->
		</div><!-- /.main-container -->
    

		<!-- basic scripts -->
		<script type="text/javascript">window.jQuery || document.write("<script src='${pageContext.request.contextPath }/admin/assets/js/jquery-2.0.3.min.js'>"+"<"+"script>");</script>
		<script type="text/javascript">if("ontouchend" in document) document.write("<script src='${pageContext.request.contextPath }/admin/assets/js/jquery.mobile.custom.min.js'>"+"<"+"script>");</script>
		<script src="${pageContext.request.contextPath }/admin/assets/js/bootstrap.min.js"></script>	
		<script src="${pageContext.request.contextPath }/admin/assets/js/ace.min.js"></script>

		
</body>
</html>
