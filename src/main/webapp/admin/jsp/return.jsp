<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
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
							<li class="active">修 改 图 书</li>
						</ul><!-- .breadcrumb -->
					</div>

					
					<div class="page-content">
						<div class="page-header">
							<h1>
								归 还 处 理
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">							
							<form class="form-horizontal">
									<div class="form-group">
										<input type="hidden" id="page"  class="col-xs-10 col-sm-5"   name="page"  value="${page }"/>
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 借 书 订 单 号 </label>

										<div class="col-sm-9">
											<input type="text" class="ccol-xs-6 col-sm-3"   name="order_id"  value="${order.order_id }" readonly="readonly"/>
										</div>
									</div>

									<div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 读者姓名 </label>
										<div class="col-sm-9">
											<input type="text" class="ccol-xs-6 col-sm-3"   name="user_name"  value="${order.user.user_name }" readonly="readonly"/>
										</div>
									</div>

									<div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 读者账号 </label>
										<div class="col-sm-9">
											<input type="text" class="ccol-xs-6 col-sm-3"   name="user_idcard"  value="${order.user_idcard }" readonly="readonly"/>
										</div>
									</div>

									<div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 图书名称 </label>
										<div class="col-sm-9">
											<input type="text" class="ccol-xs-6 col-sm-3"   name="book_name"  value="${order.book.book_name }" readonly="readonly"/>
										</div>
									</div>

									<div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 图书ISBN码 </label>
										<div class="col-sm-9">
											<input type="text" class="ccol-xs-6 col-sm-3"   name="book_isbn"  value="${order.book_isbn }" readonly="readonly"/>
										</div>
									</div>

									<div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 借书时间</label>
										<div class="col-sm-9">
											<input type="text" class="ccol-xs-6 col-sm-3"   name="borrow_time"  value="<fmt:formatDate value="${order.borrow_time }" pattern="yyyy-MM-dd"></fmt:formatDate>" readonly="readonly"/>
										</div>
									</div>

									<div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 应还时间 </label>
										<div class="col-sm-9">
											<input type="text" class="ccol-xs-6 col-sm-3"   name="return_time"  value="<fmt:formatDate value="${order.return_time }" pattern="yyyy-MM-dd"></fmt:formatDate>" readonly="readonly"/>
										</div>
									</div>

									<div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 实际归还时间 </label>
										<div class="col-sm-9">
											<input type="text" class="ccol-xs-6 col-sm-3"   name="is_return_time"  value="<fmt:formatDate value="${order.is_return_time }" pattern="yyyy-MM-dd"></fmt:formatDate>" readonly="readonly"/>
											<span class="help-inline col-xs-12 col-sm-7">
												<span class="middle">*默认为当前时间，无法更改</span>
											</span>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button id="returns" class="btn btn-info">
												<i class="icon-ok bigger-110"></i>
												确 认 归 还
											</button>

											&nbsp; &nbsp; &nbsp;
											<button id="re" class="btn" type="reset">
												<i class="icon-undo bigger-110"></i>
												取消
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
		<script type="text/javascript">
			$("#re").click(function(){
				javascript:history.back(-1);
			})
			$("#returns").click(function(){
				var order_id=$("#order_id").val();
				var page=$("#page").val();
				window.location.href="${pageContext.request.contextPath }/Order/returns/"+order_id+"/"+page;
			})
		</script>
		
</body>
</html>

