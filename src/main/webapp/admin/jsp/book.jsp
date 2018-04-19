<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>图书信息</title>
		<meta name="keywords" content="图书信息" />
		<meta name="description" content="图书信息" />
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
	
		function findother(){
		var others=$("#others").val();
		var oDiv = document.createElement('div');
		oDiv.innerHTML = '<div id="loading"  style="opacity:1;position: fixed;top: 0;left: 0;width: 100%;height: 100%;background: rgba(0, 0, 0, 0.7);z-index: 15000;">'+
							'<div class="fitting-mask3 " style="position: absolute;top: 35%;left: 40%;width: 500px;height: 300px;background-color:white;margin-top: -15px;margin-left: -15px;opacity:1;" id="choose">'+
								'<form style="border:1px solid #AEEEEE;width:500px;height:300px">'+
									'<div class="fitting-header" style="width:500px;height:30px;">'+
										'<h4> 图书描述</h4>'+
									'</div>'+
									'<hr/>'+
									'<div class="fitting-header" style="width:500px;height:120px;" >'+
										'<h4> '+others+
										'</h4>'+
									'</div>'+
									'<hr/>'+
									'<div class="sure" style="width:500px;height:96px">'+
										'<div align="center">'+
											'<div  class="btn btn-primary "  ><a href="javascript:void(0)" onclick="location.reload()" style="color: white;text-decoration:none;">返回</a></div>'+
										'</div>'+
									'</div>'+
								'</form>'+
							'</div>'+
						'</div>';
		document.body.appendChild(oDiv); 
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
						<li class="active">
							<a href="#" class="dropdown-toggle"  >
								<i class="icon-book"></i><span class="menu-text">图 书  信 息 管 理 </span><b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath }/Book/bookAddUI" class="dropdown-toggle">添 加 图 书 信 息 </a></li>
								<li  class="active"><a href="${pageContext.request.contextPath }/Book/findAll/1" class="dropdown-toggle">显 示 所 有 图 书 </a></li>	
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
						<li  >
							<a href="#" class="dropdown-toggle">
								<i class="icon-user"></i><span class="menu-text">用 户 信 息 管 理 </span><b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath }/admin/jsp/userAdd.jsp">用 户 信 息 添 加</a></li>
								<li><a href="${pageContext.request.contextPath }/User/findAll/1">显 示 所 有 用 户</a></li>		
							</ul>
						</li>
						<!--图 书 分 类 管 理   -->
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-th-large"></i><span class="menu-text">图 书 分 类 管 理 </span><b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath }/admin/jsp/categoryadd.jsp">新 增 分 类</a></li>
								<li><a href="${pageContext.request.contextPath }/Category/findAll/1">查 询 所 有 分 类</a></li>
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
							<li class="active">图书信息管理</li>
						</ul><!-- .breadcrumb -->
					</div>
					<div class="page-content">
						<div class="row">
								<div class="col-xs-12">
										<div class="table-header">
											图 书 基 本 信 息
										</div>

										<div class="table-responsive">
										<form id="form11" action="${pageContext.request.contextPath }/Book/findAll/1" method="post">
											<table id="sample-table-2" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
													  
														<th>
															名 称：<input type="text" name="book_name" value="${boo.book_name}"/>
														</th>
														<th>
															类 型:<select name="category_id">
																	<c:choose>
																		<c:when test="${boo.category_id !=null &&boo.category_id !='' }">
																			<option value="${boo.category_id}">-${boo.category.category_name}-</option>
																			<option value="">-请选择-</option>
																		</c:when>
																		<c:otherwise>
																		     <option value="">-请选择-</option>
																		</c:otherwise>
																	</c:choose>												 		
															 		<c:forEach items="${CVO.list }" var="c">
															 			<option value="${c.category_id }">${c.category_name }</option>
															 		</c:forEach>
																</select>
														</th>
														<th>ISBN码：<input name="book_isbn" type="text" value="${boo.book_isbn}"/></th>
														<th>作 者：<input name="book_autor" type="text" value="${boo.book_autor}"/></th>
														
														<th>
															状态:<select name="book_state">
																	<c:choose>
																		<c:when test="${boo.book_state!=null }">
																			<c:if test="${boo.book_state == 0 }">
																				<option value="0" style="color:green">-正常-</option>
																				<option value="">-请选择-</option>
																		 		<option value="1" style="color:blue">-被借中-</option>
																		 		<option value="2" style="color:red">-遗失-</option>
																			</c:if>	
																			<c:if test="${boo.book_state == 1 }">
																				<option value="1" style="color:blue">-被借中-</option>
																				<option value="">-请选择-</option>
																				<option value="0" style="color:green">-正常-</option>
																		 		<option value="2" style="color:red">-遗失-</option>
																			</c:if>
																			<c:if test="${boo.book_state == 2 }">
																				<option value="2" style="color:red">-遗失-</option>
																				<option value="">-请选择-</option>
																				<option value="0" style="color:green">-正常-</option>
																		 		<option value="1" style="color:blue">-被借中-</option>
																			</c:if>		
																		</c:when>
																		<c:otherwise>
																		     <option value="">-请选择-</option>
																		     <option value="0" style="color:green">-正常-</option>
																	 		<option value="1" style="color:blue">-被借中-</option>
																	 		<option value="2" style="color:red">-遗失-</option>
																		</c:otherwise>
																	</c:choose>
																		
																</select>
														</th>

														<th><input type="submit" value="搜索" ></th>
													</tr>
												</thead>
											</table>
											<table id="sample-table-2" class="table table-striped table-bordered table-hover">											
												<thead>
													<tr>
													   <th></th>
														<th class="center">
															id
														</th>
														<th class="center">名 称</th>
														<th class="center">类 型</th>
														<th class="center">书架号</th>
														<th class="center">ISBN码</th>
														<th class="center">作 者</th>
														<th class="center">出 版 社</th>
														<th class="center">页 码</th>
														<th class="center">被借次数</th>
														<th class="center">
															<i class="icon-time bigger-110 hidden-480"></i>
															入馆时间
														</th>
														<th class="center">状态</th>

														<th class="center">操作</th>
													</tr>
												</thead>

												<tbody>
												<c:forEach items="${BVO.list }" var="c"  varStatus="status">											
													<tr>
														<td>${status.count+(BVO.currentPage*10) }</td>

														<td>${c.book_id }</td>
														<td>${c.book_name }</td>
														<td>${c.category.category_name }</td>
														<td>${c.category.category_case }</td>
														<td>${c.book_isbn }</td>
														<td>${c.book_autor }</td>	
														<td>${c.book_pubhouse }</td>	
														<td>${c.book_page }</td>	
														<td>${c.book_borrownum }<input type="hidden" id="others" value="${c.others }"></td>															
														<td><fmt:formatDate value="${c.book_inDate }" pattern="yyyy-MM-dd"></fmt:formatDate></td>	
														<td>
															<c:if test="${c.book_state==0 }">
																<font color="green">正常</font>
															</c:if>
															<c:if test="${c.book_state==1 }">
																<font color="blue">被借中</font>
															</c:if>
															<c:if test="${c.book_state==2 }">
																<font color="red">遗失</font>
															</c:if>
														</td>	
														<td>
															<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
																<a class="blue" id="more">
																	<i class="icon-zoom-in bigger-130" onclick="findother()"></i>
																</a>

																<a class="green" href="${pageContext.request.contextPath }/Book/editUI/${c.book_id }/${BVO.currentPage+1 }">
																	<i class="icon-pencil bigger-130"></i>
																</a>

																<a class="red" href="${pageContext.request.contextPath }/Book/delete/${c.book_id }/${BVO.totalNumber }/${BVO.currentPage+1 }" onClick="return confirm('确定删除?');">
																	<i class="icon-trash bigger-130"></i>
																</a>
																<a class="blue" href="${pageContext.request.contextPath }/Book/addTwo/${c.book_id }">
																	复制
																</a>
															</div>
														</td>
													</tr>
													</c:forEach>
												</tbody>
											</table>
											
											<div class="col-md-3">
												总页数：${BVO.totalPage }\当前页：${BVO.currentPage+1 }
											</div>
											<c:if test="${BVO.totalPage != 1 }">
												<div  style="float: right;">
															<a class="btn btn-info" onclick="first()" >首页</a>
															<c:if test="${BVO.currentPage == 0 }">
																<a class="btn btn-info">上一页</a>
														 		<a class="btn btn-info" onclick="next()">下一页</a>
															</c:if>
															<c:if test="${BVO.currentPage+1 == BVO.totalPage }">
																<a class="btn btn-info" onclick="before()" >上一页</a>
														 		<a class="btn btn-info" >下一页</a>
															</c:if>
															<c:if test="${1 < BVO.currentPage+1 && BVO.currentPage+1 < BVO.totalPage }">
																<a class="btn btn-info" onclick="before()">上一页</a>
														 		<a class="btn btn-info" onclick="next()">下一页</a>
															</c:if>
															<a class="btn btn-info" onclick="last()">尾页</a>
												</div>	
											</c:if>
											</form>
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

		<script type="text/javascript">
			function first(){
				var testform=document.getElementById("form11");
				testform.action="${pageContext.request.contextPath }/Book/findAll/1";
				testform.submit();
			}
			function next(){
				var testform=document.getElementById("form11");
				var Page="${BVO.currentPage+2 }";
				testform.action="${pageContext.request.contextPath }/Book/findAll/"+Page;
				testform.submit();
			}
			function before(){
				var testform=document.getElementById("form11");
				var Page="${BVO.currentPage }";
				testform.action="${pageContext.request.contextPath }/Book/findAll/"+Page;
				testform.submit();
			}
			function last(){
				var testform=document.getElementById("form11");
				var Page="${BVO.totalPage}";		
				testform.action="${pageContext.request.contextPath }/Book/findAll/"+Page;
				testform.submit();
			}
		</script>
		
</body>
</html>

