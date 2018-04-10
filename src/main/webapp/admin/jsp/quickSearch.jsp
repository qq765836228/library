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
		background-color:white;
		}
	</style>
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
						<li >
							<a href="${pageContext.request.contextPath }/admin/jsp/index.jsp">
								<i class="icon-dashboard"></i>
								<span class="menu-text"> 首  页 </span>
							</a>
						</li>

						<li class="active">
							<a href="${pageContext.request.contextPath }/admin/jsp/quickSearch.jsp">
								<i class="icon-text-width"></i>
								<span class="menu-text"> 快 速 查 询  </span>
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
							<li class="active">快 速 查 询</li>
						</ul><!-- .breadcrumb -->
					</div>

					<div class="page-content" style="position:relative">
						<div class="page-header" style="text-align: center;font-size: 40px">
							<p>
								快 速 查 询	
							</p>
						</div><!-- /.page-header -->
						
						<div class="row">
							<div class="col-md-5 col-md-offset-3"  style="padding:0px">
								 <input  type="text" value="${name }" class="form-control"  id="quick" placeholder="快速查询" >		
							</div>
							<div class="col-md-2">
							 	 <button onclick="sub()"  type="submit" >&nbsp;&nbsp;搜 索&nbsp;&nbsp;</button>	
							</div>  
							<div id="more"  class="col-md-5 col-md-offset-3" style="padding-top:20px">
							
							</div>	  						
						</div><!-- /.row -->
						<c:if test="${BVO!=null }">
						<div class="table-responsive" >
											<table id="sample-table-2" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
													   <th></th>
														<th class="center">
															<!-- <label>
																<input type="checkbox" class="ace" />
																<span class="lbl"></span>
															</label> -->
															id
														</th>
														<th>名 称</th>
														<th>类 型</th>
														<th>ISBN码</th>
														<th>作 者</th>
														<th>出 版 社</th>
														<th>页 码</th>
														<th>被借次数</th>
														<th>
															<i class="icon-time bigger-110 hidden-480"></i>
															入馆时间
														</th>
														<th class="hidden-480">状态</th>

														<!-- <th>操作</th> -->
													</tr>
												</thead>

												<tbody>
												<c:forEach items="${BVO.list }" var="c"  varStatus="status">											
													<tr>
														<td>${status.count+(BVO.currentPage*10) }</td>

														<td>${c.book_id }</td>
														<td>${c.book_name }</td>
														<td>${c.category.category_name }</td>
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
														<%-- <td>
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
														</td> --%>
													</tr>
													</c:forEach>
												</tbody>
											</table>
											<div class="col-md-3">
												总页数：${BVO.totalPage }\当前页：${BVO.currentPage+1 }
											</div>
											<div  style="float: right;">
												<a class="btn btn-info" href="${pageContext.request.contextPath }/Book/findByBookName/${name}/1">首页</a>
														<c:if test="${BVO.currentPage == 0 }">
															<a class="btn btn-info">上一页</a>
													 		<a class="btn btn-info" href="${pageContext.request.contextPath }/Book/findByBookName/${name}/${BVO.currentPage+2 }">下一页</a>
														</c:if>
														<c:if test="${BVO.currentPage+1 == BVO.totalPage }">
															<a class="btn btn-info" href="${pageContext.request.contextPath }/Book/findByBookName/${name}/${BVO.currentPage }">上一页</a>
													 		<a class="btn btn-info" >下一页</a>
														</c:if>
														<c:if test="${1 < BVO.currentPage+1 && BVO.currentPage+1 < BVO.totalPage }">
															<a class="btn btn-info" href="${pageContext.request.contextPath }/Book/findByBookName/${name}/${BVO.currentPage }">上一页</a>
													 		<a class="btn btn-info" href="${pageContext.request.contextPath }/Book/findByBookName/${name}/${BVO.currentPage+2 }">下一页</a>
														</c:if>
														<a class="btn btn-info" href="${pageContext.request.contextPath }/Book/findByBookName/${name}/${BVO.totalPage}">尾页</a>
													
											</div>
										</div>
										</c:if>
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
			$("#quick").keyup(function () {
				var name=$("#quick").val();
				$("#more").html("");
				$("#more").removeClass("more");
				if(name!=null && name.trim() !=""){					
					$.ajax({
						url:"${pageContext.request.contextPath }/Book/findByName",
						data:"book_name="+name,
						dataType:"json",
						success:function(data){
							if(data.length<6){
							  var aa=40*data.length;
							}else{
							  var aa=240;
							}					
							$.each(data,function(index,book) {
								if(index<6){
									$("#more").addClass("more");
									$("#more").height(aa);
									//$("#more").append("<option id='search2' value='"+book.book_name+"' style='width:600.79px;height: 40px;'><a  href='${pageContext.request.contextPath}/Book/findByBookName/'"+book.book_name+">"+book.book_name+"</a></option>");
									$("#more").append("<table class='table table-condensed'"+
												           "<tr><a  href='${pageContext.request.contextPath}/Book/findByBookName/"+book.book_name+"/1'>"+book.book_name+"</a></tr>"+
														"</table>");
										
								}
							});
						}
						
					})
				}
	         }); 
			
			function sub(){
				var name=$("#quick").val();
				if(name!=null && name.trim() !=""){	
					window.location.href = "${pageContext.request.contextPath}/Book/findByBookName/"+name+"/1";
				}
			}
			/* $("#search2").click(function(){
				var name=$("#search2").val();
				alert(name);
			}) */
		</script>
</body>
</html>

