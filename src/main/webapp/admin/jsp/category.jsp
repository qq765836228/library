<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>图书分类</title>
		<meta name="keywords" content="图书分类" />
		<meta name="description" content="图书分类" />
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
						<li>
							<a href="${pageContext.request.contextPath }/admin/jsp/index.jsp">
								<i class="icon-dashboard"></i>
								<span class="menu-text"> 首  页 </span>
							</a>
						</li>

						<li>
							<a href="${pageContext.request.contextPath }/admin/jsp/quickSearch.jsp">
								<i class="icon-search"></i>
								<span class="menu-text"> 快 速 查 询  </span>
							</a>
						</li>
						<!--借 书 登 记 -->
						<li>
							<a href="${pageContext.request.contextPath }/admin/jsp/borrow.jsp">
								<i class="icon-pencil"></i>
								<span class="menu-text"> 借 书 登 记  </span>
							</a>
						</li>
						<!--图 书 信 息 管 理  -->
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-book"></i><span class="menu-text">图 书  信 息 管 理 </span><b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath }/Book/bookAddUI" class="dropdown-toggle">添 加 图 书 信 息 </a></li>
								<li><a href="${pageContext.request.contextPath }/Book/findAll/1" class="dropdown-toggle">显 示 所 有 图 书 </a></li>	
							</ul>
						</li>
						
						<!--订单管理  -->
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-reorder"></i><span class="menu-text"> 借 书 订 单 管 理 </span><b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath }/Order/findAll/1">显 示 所 有 订 单</a></li>
								<li><a href="${pageContext.request.contextPath }/Order/findAllByIsreturn/0/1">执 行 中 订 单</a></li>
								<li><a href="${pageContext.request.contextPath }/Order/findAllByIsreturn/1/1">超 时 订 单</a></li>
								<li><a href="${pageContext.request.contextPath }/Order/findAllByIsreturn/2/1">已 完 成 订 单</a></li>
							</ul>
						</li>
						<!--用 户 信 息 管 理  -->
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-user"></i><span class="menu-text">用 户 信 息 管 理 </span><b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath }/admin/jsp/userAdd.jsp">用 户 信 息 添 加</a></li>
								<li><a href="${pageContext.request.contextPath }/User/findAll/1">显 示 所 有 用 户</a></li>		
							</ul>
						</li>
						<!--图 书 分 类 管 理   -->
						<li  class="active">
							<a href="#" class="dropdown-toggle">
								<i class="icon-th-large"></i><span class="menu-text">图 书 分 类 管 理 </span><b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath }/admin/jsp/categoryadd.jsp">新 增 分 类</a></li>
								<li  class="active"><a href="${pageContext.request.contextPath }/Category/findAll/1">查 询 所 有 分 类</a></li>
							</ul>
						</li>
						<!--系 统 设 置  -->
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-cog"></i><span class="menu-text">系 统 设 置</span><b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath }/Admin/editNoticeUI/1">更改服务时间</a></li>
								<li><a href="${pageContext.request.contextPath }/admin/jsp/addNotice.jsp">发布公告</a></li>
								<li><a href="${pageContext.request.contextPath }/Admin/editPasswordUI">修改密码</a></li>
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
								<a href="${pageContext.request.contextPath }/admin/jsp/index.jsp">首 页</a>
							</li>
							<li class="active">图书分类管理</li>
						</ul><!-- .breadcrumb -->
					</div>
					<div class="page-content">
						<div class="row">
								<div class="col-xs-12">
										<h3 class="header smaller lighter blue">类 别</h3>
										<div class="table-header">
											图 书 类 别 信 息
										</div>

										<div class="table-responsive">
											<table id="sample-table-2" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th></th>
														<th class="center">
															<!-- <label>
																<input type="checkbox" class="ace" />
																<span class="lbl"></span>
															</label> -->
															id 编 号
														</th>
														<th>类 别 名 称</th>
														<th>书 架  编 号</th>														
														<th>操作</th>
													</tr>
												</thead>
											
												<tbody>
												<c:forEach items="${CVO.list }" var="c"  varStatus="status">
													<tr>
														<td>${status.count+(CVO.currentPage*10) }</td>
														<td class="center">
															<!-- <label>
																<input type="checkbox" class="ace" />
																<span class="lbl"></span>
															</label> -->
															${c.category_id }
														</td>
														<td>
															<a href="#">${c.category_name }</a>
														</td>
														<td>${c.category_case }</td>
														<td>
															<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">													
																<a class="green" href="${pageContext.request.contextPath }/Category/editUI/${c.category_id }/${CVO.currentPage+1 }">
																	<i class="icon-pencil bigger-130"></i>
																</a>
																<c:if test="${c.category_state == 0}">
																<a class="red" href="${pageContext.request.contextPath }/Category/delete/${c.category_id }/${CVO.totalNumber }/${CVO.currentPage+1 }" onClick="return confirm('确定删除?');">
																	<i class="icon-trash bigger-130"></i>
																</a>
																</c:if>
															</div>														
														</td>
													</tr>
													</c:forEach>
												</tbody>
												
											</table>
											<div class="col-md-3">
												总页数：${CVO.totalPage }\当前页：${CVO.currentPage+1 }
											</div>
											<div  style="float: right;">
												<a class="btn btn-info" href="${pageContext.request.contextPath }/Category/findAll/1">首页</a>
														<c:if test="${CVO.currentPage == 0 }">
															<a class="btn btn-info">上一页</a>
													 		<a class="btn btn-info" href="${pageContext.request.contextPath }/Category/findAll/${CVO.currentPage+2 }">下一页</a>
														</c:if>
														<c:if test="${CVO.currentPage+1 == CVO.totalPage }">
															<a class="btn btn-info" href="${pageContext.request.contextPath }/Category/findAll/${CVO.currentPage }">上一页</a>
													 		<a class="btn btn-info" >下一页</a>
														</c:if>
														<c:if test="${1 < CVO.currentPage+1 && CVO.currentPage+1 < CVO.totalPage }">
															<a class="btn btn-info" href="${pageContext.request.contextPath }/Category/findAll/${CVO.currentPage }">上一页</a>
													 		<a class="btn btn-info" href="${pageContext.request.contextPath }/Category/findAll/${CVO.currentPage+2 }">下一页</a>
														</c:if>
														<a class="btn btn-info" href="${pageContext.request.contextPath }/Category/findAll/${CVO.totalPage}">尾页</a>
													
											</div>	
										</div>
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

