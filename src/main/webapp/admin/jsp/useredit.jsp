<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>修改读者</title>
		<meta name="keywords" content="修改读者" />
		<meta name="description" content="修改读者" />
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
		/* $("#user_idcard").blur(function(){			
			var user_idcard=$("#user_idcard").val();
			var ouser_idcard="${user.user_idcard }";	
			if(user_idcard != null && user_idcard != "" && user_idcard.trim() != ouser_idcard.trim()){
				$.ajax({
					url:"${pageContext.request.contextPath }/User/findByIdcard",
					data:"user_idcard="+user_idcard,
					type:"post",
					dataType:"json",
					success:function(data){	
						if(data=="0"){
							$(".error").html("");
							$(".error").html("<font>*必填</font>");
							$("#add").removeAttr("disabled");
							
						}
						if(data=="1"){
							$(".error").html("");
							$(".error").html("<font color='red'>此账号已经存在！</font>");
							$("#add").attr("disabled","true");
						}
						return false;
					}
				})
			}
			$(".error").html("");
			$(".error").html("<font>*必填</font>");
		}) */
		
		$("#add").click(function(){
			
			var user_idcard=$("#user_idcard").val();
			var user_id=$("#user_id").val();
			var page=$("#page").val();
			var user_cardtype=$("#user_cardtype").val();
			var user_sex=$("#user_sex").val();
			var user_telphone=$("#user_telphone").val();
			var user_name=$("#user_name").val();
			if(user_name==null || user_name== ""){
				err("读者名字不能为空");
				return false;
			}
			/* else if(user_idcard==null || user_idcard== ""){
				err("读者账号不能为空");
				return false;
			} */
			else if(user_telphone==null || user_telphone== ""){
				err("联系方式不能为空");
				return false;
			}
			else{
				
				$.ajax({
					url:"${pageContext.request.contextPath }/User/editUser/"+page,
					data:{"user_id":user_id,"user_cardtype":user_cardtype,"user_sex":user_sex,"user_telphone":user_telphone,"user_name":user_name},
					type:"post",
					dataType:"json",
					success:function(data){		
						var oDiv = document.createElement('div');
						oDiv.innerHTML = '<div id="loading"  style="opacity:1;position: fixed;top: 0;left: 0;width: 100%;height: 100%;background: rgba(0, 0, 0, 0.7);z-index: 15000;">'+
											'<div class="fitting-mask3 " style="position: absolute;top: 35%;left: 40%;width: 400px;height: 200px;background-color:white;margin-top: -15px;margin-left: -15px;opacity:1;" id="choose">'+
												'<form style="border:1px solid red;width:400px;height:200px">'+
													'<div class="fitting-header" style="width:400px;height:100px;" align="center" >'+
														'<h4 style="line-height:100px;"> 修改成功</h4>'+
													'</div>'+
													'<div class="sure" style="width:400px;height:96px">'+
														'<div align="center">'+
															'<div  class="btn btn-primary "  ><a href="${pageContext.request.contextPath }/User/findAll/'+page+'" style="color: white;text-decoration:none;">返回</a></div>'+
														'</div>'+
													'</div>'+
												'</form>'+
											'</div>'+
										'</div>';
						document.body.appendChild(oDiv); 
					}					
				})
				return false
			}
			
		})
		
		$("#re").click(function(){
			javascript:history.back(-1);
		})
	})
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
						<li  class="active">
							<a href="#" class="dropdown-toggle">
								<i class="icon-user"></i><span class="menu-text">用 户 信 息 管 理 </span><b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath }/admin/jsp/userAdd.jsp">用 户 信 息 添 加</a></li>
								<li  class="active"><a href="${pageContext.request.contextPath }/User/findAll/1">显 示 所 有 用 户</a></li>		
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
							<li class="active">用户信息管理</li>
							<li class="active">修改用户</li>
						</ul><!-- .breadcrumb -->
					</div>

					
					<div class="page-content">
						<div class="page-header">
							<h1>
								用 户 详 细 信 息
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">							
							<form class="form-horizontal">
									<div class="form-group">
									<input type="hidden" id="user_id"  class="col-xs-10 col-sm-5"   value="${user.user_id }"/>
										<input type="hidden" id="page"  class="col-xs-10 col-sm-5"  value="${page }"/>
										<label class="col-sm-3 control-label no-padding-right" for="ISBN">读者姓名</label>

										<div class="col-sm-9">
											<input  type="text" class="col-xs-6 col-sm-3" id="user_name" value="${user.user_name }"/>
											<span class="help-inline col-xs-12 col-sm-7">
												<label class="middle">
													<span class="error1">*必填</span>
												</label>
											</span>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right">账号类型 </label>

										<div class="col-sm-9">
											<select id="user_cardtype"  class="col-xs-4 col-sm-2" disabled="disabled" >
												<c:if test="${user.user_cardtype=='身份证' }">
													<option value="身份证">身份证</option>
													<option value="学生证">学生证</option>
												</c:if>
												<c:if test="${user.user_cardtype=='学生证' }">
													<option value="学生证">学生证</option>
													<option value="身份证">身份证</option>
												</c:if>
											</select>
											<span class="help-inline col-xs-12 col-sm-7">
												<label class="middle">
													<span class="error">*不可修改</span>
												</label>
											</span>
										</div>
									</div>


									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right">账号 </label>

										<div class="col-sm-9">
											<input  type="text" class="col-xs-4 col-sm-2" id="user_idcard" value="${user.user_idcard }" readonly="readonly"/>
											<span class="help-inline col-xs-12 col-sm-7">
												<label class="middle">
													<span class="error">*不可修改</span>
												</label>
											</span>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right">性别 </label>

										<div class="col-sm-9">
											<select id="user_sex"  class="col-xs-2 col-sm-1"  >
												<c:if test="${user.user_sex =='男' }">
													<option value="男">男</option>
													<option value="女">女</option>
												</c:if>
												<c:if test="${user.user_sex=='女' }">
													<option value="女">女</option>
													<option value="男">男</option>
												</c:if>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" >联系方式</label>

										<div class="col-sm-9">
											<input  type="text" class="col-xs-4 col-sm-2" id="user_telphone" value="${user.user_telphone }"/>
											<span class="help-inline col-xs-12 col-sm-7">
												<label class="middle">
													<span class="error2">*必填</span>
												</label>
											</span>
										</div>
									</div>
									<div class="space-4"></div>								

									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button id="add" class="btn btn-info" type="submit">
												<i class="icon-ok bigger-110"></i>
												提 交
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

		
</body>
</html>

