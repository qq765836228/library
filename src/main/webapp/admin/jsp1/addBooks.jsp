<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>图书添加 -交理图书馆后台管理系统</title>
		<meta name="keywords" content="交理图书馆后台管理系统" />
		<meta name="description" content="交理图书馆后台管理系统" />
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
	</head>

	<body>
		<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

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
									Jason
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">								
								<li>
									<a href="#">
										<i class="icon-off"></i>
										退出
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>
					
					<ul class="nav nav-list">
						<li>
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
							<a href="${pageContext.request.contextPath }/admin/jsp/addBooks.jsp" class="dropdown-toggle">
								<i class="icon-desktop"></i>
								<span class="menu-text"> 添 加 图 书 信 息 </span>
							</a>

						</li>

						<li>
							<a href="${pageContext.request.contextPath }/admin/jsp/Books.jsp" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"> 显 示 所 有 图 书 </span>
							</a>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-edit"></i>
								<span class="menu-text"> 订 单 管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="form-elements.html">
										<i class="icon-double-angle-right"></i>
										显 示 所 有 订 单
									</a>
								</li>

								<li>
									<a href="form-wizard.html">
										<i class="icon-double-angle-right"></i>
										执 行 中 订 单
									</a>
								</li>

								<li>
									<a href="wysiwyg.html">
										<i class="icon-double-angle-right"></i>
										违 规 订 单
									</a>
								</li>

							</ul>
						</li>

						<li>
							<a href="widgets.html">
								<i class="icon-list-alt"></i>
								<span class="menu-text"> 用 户 信 息 添 加 </span>
							</a>
						</li>

						<li>
							<a href="calendar.html">
								<i class="icon-calendar"></i>

								<span class="menu-text">显 示 所 有 用 户</span>
							</a>
						</li>					

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-tag"></i>
								<span class="menu-text">系 统 设 置 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="profile.html">
										<i class="icon-double-angle-right"></i>
										更 改 密 码
									</a>
								</li>

								<li>
									<a href="inbox.html">
										<i class="icon-double-angle-right"></i>
										404错误页面
									</a>
								</li>

								<li>
									<a href="login.html">
										<i class="icon-double-angle-right"></i>
										登录 &amp; 注册
									</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-file-alt"></i>

								<span class="menu-text">
									其他页面
									<span class="badge badge-primary ">5</span>
								</span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="faq.html">
										<i class="icon-double-angle-right"></i>
										帮助
									</a>
								</li>

								<li>
									<a href="error-404.html">
										<i class="icon-double-angle-right"></i>
										404错误页面
									</a>
								</li>

								<li>
									<a href="error-500.html">
										<i class="icon-double-angle-right"></i>
										500错误页面
									</a>
								</li>

								<li>
									<a href="grid.html">
										<i class="icon-double-angle-right"></i>
										网格
									</a>
								</li>

								<li>
									<a href="blank.html">
										<i class="icon-double-angle-right"></i>
										空白页面
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.nav-list -->

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>

				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs" >
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

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
								<!-- PAGE CONTENT BEGINS -->

								<form class="form-horizontal" role="form">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 图 书 名 称 </label>

										<div class="col-sm-9">
											<input type="text" id="form-field-1"  class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2"> 所 属 类 别 </label>

										<div class="col-sm-9" >
										    <select class="col-xs-8 col-sm-4">
										    	<option>--  请选择   --</option>
										    </select>
										    <span class="help-inline col-xs-12 col-sm-7">
												<span class="middle">*必填</span>
											</span>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-input-ISBN">ISBN 码 </label>

										<div class="col-sm-9">
											<input  type="text" class="col-xs-6 col-sm-3" id="form-input-ISBN" />
											<span class="help-inline col-xs-12 col-sm-7">
												<label class="middle">
													<span class="lbl">*必填</span>
												</label>
											</span>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-4">作 者</label>

										<div class="col-sm-4">
											<input class="input-sm" type="text" id="form-field-4"  />											
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-5">出 版 社</label>

										<div class="col-sm-9">
											<div class="clearfix">
												<input class="col-xs-3" type="text" id="form-field-5"  />
											</div>
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right">总 页 数</label>

										<div class="col-sm-9">
											<input  type="text" class="col-xs-2 col-sm-1" id="form-input-ISBN" />
											<span class="help-inline col-xs-12 col-sm-7">
												<label class="middle">
													<span class="lbl">页</span>
												</label>
											</span>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-6">总 数 量</label>

										<div class="col-sm-9">
											<input  type="text" class="col-xs-2 col-sm-1" id="form-input-ISBN" />
											<span class="help-inline col-xs-12 col-sm-7">
												<label class="middle">
													<span class="lbl">本</span>
												</label>
											</span>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-tags"> 备 注 </label>

										<div class="col-sm-9">
											<textarea rows="6" cols="50" name="others"></textarea>
										</div>
									</div>

									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button class="btn btn-info" type="button">
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
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->
			</div><!-- /.main-container-inner -->
			<!--置顶按钮  -->
			<!-- <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a> -->
		</div><!-- /.main-container -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='${pageContext.request.contextPath }/admin/assets/js/jquery-2.0.3.min.js'>"+"<"+"script>");
		</script>
		
		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='${pageContext.request.contextPath }/admin/assets/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
		</script>
		<script src="${pageContext.request.contextPath }/admin/assets/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath }/admin/assets/js/typeahead-bs2.min.js"></script>
		
		<script src="${pageContext.request.contextPath }/admin/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="${pageContext.request.contextPath }/admin/assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="${pageContext.request.contextPath }/admin/assets/js/jquery.slimscroll.min.js"></script>
		<script src="${pageContext.request.contextPath }/admin/assets/js/jquery.easy-pie-chart.min.js"></script>
		<script src="${pageContext.request.contextPath }/admin/assets/js/jquery.sparkline.min.js"></script>
		<script src="${pageContext.request.contextPath }/admin/assets/js/flot/jquery.flot.min.js"></script>
		<script src="${pageContext.request.contextPath }/admin/assets/js/flot/jquery.flot.pie.min.js"></script>
		<script src="${pageContext.request.contextPath }/admin/assets/js/flot/jquery.flot.resize.min.js"></script>

		<!-- ace scripts -->

		<script src="${pageContext.request.contextPath }/admin/assets/js/ace-elements.min.js"></script>
		<script src="${pageContext.request.contextPath }/admin/assets/js/ace.min.js"></script>

	
</body>
</html>

