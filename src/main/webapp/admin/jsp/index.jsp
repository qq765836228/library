<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>交理图书馆后台管理系统</title>
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
						<li class="active">
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
						<!--借 书 登 记 -->
						<li>
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
								<li><a href="${pageContext.request.contextPath }/Book/bookAddUI" class="dropdown-toggle"><i class="icon-double-angle-right"></i> 添 加 图 书 信 息 </a></li>
								<li><a href="${pageContext.request.contextPath }/Book/findAll/1" class="dropdown-toggle"><i class="icon-double-angle-right"></i> 显 示 所 有 图 书 </a></li>	
							</ul>
						</li>
						
						<!--订单管理  -->
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-tag"></i><span class="menu-text"> 借 书 订 单 管 理 </span><b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath }/admin/jsp/order.jsp"><i class="icon-double-angle-right"></i>显 示 所 有 订 单</a></li>
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
								<li><a href="${pageContext.request.contextPath }/admin/jsp/categoryadd.jsp"><i class="icon-double-angle-right"></i> 新 增 分 类</a></li>
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
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb" style="line-height:41px;">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">首页</a>
							</li>
						</ul><!-- .breadcrumb -->
					</div>
					<div class="page-content">
						<div class="page-header">
							<h1>W E L C O M E&nbsp;&nbsp;&nbsp;&nbsp;T O&nbsp;&nbsp;&nbsp;&nbsp; 交理图书馆</h1>
						</div><!-- /.page-header -->					
						<div class="hr hr32 hr-dotted"></div>
				 		<div class="row">       			 	 
				        	<div class="col-md-3">
				               <div class="panel panel-primary">
				                    <div class="panel-heading">
				                       		 <h4><img alt="服务中心" src="${pageContext.request.contextPath }/assets/img/服务中心.png">&nbsp;&nbsp;&nbsp;服 务 时 间</h4>
				                    </div>
				                    <div class="panel-body">
				                    	<a> 网上图书馆、自助图书馆全天候服务：（0:00至24:00）</a><br>
							            <a> 周二至周日主馆舍开放时间：</a><br>
							            <a> 一楼至四楼：9:00-21:00</a><br>
							            <a> 五楼至六楼：9:00-17:00</a><br>
							            <a> 少儿服务区：周二至周五12:00(周末10：00)-18:00</a><br>
							            <a> 逢周一内务整理，主馆舍不开放。</a><br>
							            <a> 了解详情</a><br> 
				                     </div>
				              </div>
				             	<div class="panel panel-primary">
				                 <div class="panel-heading">
				                       		 <h4>服 务 推 介</h4>
				                    </div>
				                    <div class="panel-body">
				                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                     	 实行“全面开放、免证进馆、分层管理、
				                     	 一卡通行”方式，全面推行自助服务。 
				                     	 “图书馆之城”统一服务、自助图书馆
				                     	 网提供了便利的服务，“深圳文献港”
				                     	 及其移动门户打造了数字资源共享平台。
				                     </div>
				              </div>
				        	</div>
				        	<div class="col-md-5">
					        	<div class="panel panel-success">
	                        	<div class="panel-heading">
	                          		<h4><img alt="资源中心" src="${pageContext.request.contextPath }/assets/img/资源中心.png">&nbsp;&nbsp;&nbsp;常 用 资 源</h4>
	                       		</div>
	                        	<div class="panel-body">
	                            	<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本馆2016年累计馆藏资源近900万册、件，
	                            	其中纸质文献480万册，中外文报刊6000种，
	                            	音像资料14万件，引进电子数据库30余个，
	                            	提供港台、时装和深圳地方文献等特色文献服务。</p>
		                        	<h4><a>数字资源更多>></a></h4>
									<a>1.“深圳记忆”专题数据库</a><br>
									<a>2.自建专题资源</a><br>
									<a>3.CNKI中国知网</a><br>
									<a>4.维普考试资源系统</a><br>
									<a>5.台湾学术在线</a><br>
									<a>6.超星“书世界”</a><br>
									<a>7.新东方多媒体学习库</a><br>
									<a>8.网上报告厅</a><br>
									<a>9.龙源电子期刊</a><br>
									<a>10.EBSCOHost数据库</a><br>
									<a>11.广东省地方特色资源</a><br>							
	                       		 </div>
	                        <div class="panel-footer">
	                            Panel Footer
	                        </div>
                   			</div>
				        </div>
				        	<div  class="col-md-4">
					        	<div class="alert alert-danger">
						         	<h2><img alt="通知" src="${pageContext.request.contextPath }/assets/img/通知.png">&nbsp;&nbsp;&nbsp;通 知 公 告</h2>
						         	<hr>
					                <a>关 于 3 月 份 深 图 活 动 “ 捕 捉 光 影 ， 发 现 美 好 ” 地 点 变 更 的 通 知</a><br>
									2 0 1 8 - 3 - 8<br>
									<a>关 于 “ 经 典 诵 读 ” 之 “ 声 律 启 蒙 ” 活 动 的 复 课 通 知</a><br>		
									2 0 1 8 - 3 - 5<br>
									<a>深 圳 图 书 馆 2 0 1 8 年 春 节 开 放 时 间 和 服 务 范 围 公 告</a>	<br>							
									2 0 1 8 - 2 - 6<br>
									<a>关 于 “ 全 国 青 少 年 S c r a t c h 创 意 编 程 大 赛 颁 奖 仪 式 暨 A I 时 代 下 的 生 存 之 道 主 题 峰 会 ” 取消 的 通 知</a><br>						
									2 0 1 8 - 1 - 1 6 <br>
									<a>关 于 深 图 活 动 “ 创 客 活 动 ： 硬 币 分 拣 机 ” 举 办 时 间 调 整 的 通 知 </a><br>			
									2 0 1 8 - 1 - 2<br>					
								</div><br>
			                </div>
	       				</div>
					</div><!-- PAGE CONTENT ENDS -->
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

