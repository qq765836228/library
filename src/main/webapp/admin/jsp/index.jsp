<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
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
								<li><a href="${pageContext.request.contextPath }/Order/findAll/1"><i class="icon-double-angle-right"></i>显 示 所 有 订 单</a></li>
								<li><a href="${pageContext.request.contextPath }/Order/findAllByIsreturn/0/1"><i class="icon-double-angle-right"></i>执 行 中 订 单</a></li>
								<li><a href="${pageContext.request.contextPath }/Order/findAllByIsreturn/1/1"><i class="icon-double-angle-right"></i>超 时 订 单</a></li>
								<li><a href="${pageContext.request.contextPath }/Order/findAllByIsreturn/2/1"><i class="icon-double-angle-right"></i>已 完 成 订 单</a></li>
							</ul>
						</li>
						<!--用 户 信 息 管 理  -->
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-tag"></i><span class="menu-text">用 户 信 息 管 理 </span><b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath }/admin/jsp/userAdd.jsp"><i class="icon-double-angle-right"></i> 用 户 信 息 添 加</a></li>
								<li><a href="${pageContext.request.contextPath }/User/findAll/1"><i class="icon-double-angle-right"></i> 显 示 所 有 用 户</a></li>		
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
								<i class="icon-tag"></i><span class="menu-text">系 统 设 置</span><b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath }/Admin/editNoticeUI/1"><i class="icon-double-angle-right"></i>更改服务时间</a></li>
								<li><a href="${pageContext.request.contextPath }/admin/jsp/addNotice.jsp"><i class="icon-double-angle-right"></i>发布公告</a></li>
								<li><a href="${pageContext.request.contextPath }/Admin/editPasswordUI"><i class="icon-double-angle-right"></i>修改密码</a></li>
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
				                    <div class="panel-body" style="font-size: 15px;">
				                    	${Notice.notice_text }
				                    </div>
				              </div>
				             	<div class="panel panel-primary">
				                 <div class="panel-heading">
				                       		 <h4>服 务 推 介</h4>
				                    </div>
				                    <div class="panel-body">
					                    
					                    <p style="font-size: 15px;"> 
					                    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					                    	实行“全面开放、免证进馆、分层管理、
					                     	 一卡通行”方式，全面推行自助服务。 
					                     	 “图书馆之城”统一服务、自助图书馆
					                     	 网提供了便利的服务，“深圳文献港”
					                     	 及其移动门户打造了数字资源共享平台。
					                     </p>
				                     	
				                     </div>
				              </div>
				        	</div>
				        	<div class="col-md-5">
					        	<div class="panel panel-success">
	                        	<div class="panel-heading">
	                          		<h4><img alt="资源中心" src="${pageContext.request.contextPath }/assets/img/资源中心.png">&nbsp;&nbsp;&nbsp;简介</h4>
	                       		</div>
	                        	<div class="panel-body">
	                            	<p style="font-size: 18px;">　华东交通大学是一所以工为主，经、管、文、理、法、教育、艺术等多学科协调发展，以交通为特色、轨道为核心的教学研究型大学，江西省属重点大学。学校是国家“中西部高校基础能力建设工程”重点建设大学、中国铁路总公司与江西省人民政府共建高校、教育部“卓越工程师教育培养计划”高校、江西省“2011计划”依托高校、原南京军区（现东部战区）招收和选拔培养后备军官（国防生）签约高校，为全国毕业生就业典型经验高校，首批全国高校创新创业50强和国家级知识产权培训基地，“中俄交通大学联盟”成员高校，“中国—东盟轨道交通教育培训联盟”成员高校。<br>

　　1971年，国家决定将上海交通大学机车车辆系以及同济大学铁道工程专业并入上海铁道学院，更名为华东交通大学，迁往江西；1978年，中央同意原上海铁道学院不再搬迁，华东交通大学继续在南昌建校，由原铁道部和江西省双重领导，以原铁道部为主；2000年，学校转制为“中央与地方共建，以地方管理为主”。<br>

　　截至2016年10月，学校占地面积近3000亩，建筑面积70余万平方米，教学科研仪器设备总值近3.5亿元；图书馆收藏纸质图书203万册，电子文献233万册，为中国学术期刊文献检索一级咨询站；学校有1个博士后科研工作站，1个博士后科研流动站，1个院士工作站，2个一级学科博士点，17个一级学科硕士点[4]；有在校学生23000余人，其中研究生2800余人[5]；有教职工1700余人，其中正副教授530余人；学校设有18个学院：其中17个直属二级学院、1个独立设置学院（理工学院），校本部共60个本科专业。						
	                       		 </div>
	                        <div class="panel-footer">
	                            @ 交 大 理 工
	                        </div>
                   			</div>
				        </div>
				        	<div  class="col-md-4">
					        	<div class="alert alert-danger">
						         	<h2><img alt="通知" src="${pageContext.request.contextPath }/assets/img/通知.png">&nbsp;&nbsp;&nbsp;通 知 公 告</h2>
						         	<hr>
						         	<c:forEach items="${List }" var="c">
						         		<a style="font-size: 20px;text-decoration: none;">${c.notice_text }</a>&nbsp;&nbsp;&nbsp;&nbsp;
						         		<a class="red" href="${pageContext.request.contextPath }/Admin/deleteNotice/${c.notice_id }" onClick="return confirm('确定删除?');">
												<i class="icon-trash bigger-130"></i>
										</a><br>
										<a style="font-size: 15px;text-decoration: none;color: blue"><fmt:formatDate value="${c.notice_date }" pattern="yyyy-MM-dd"></fmt:formatDate></a><br>
										
						         	</c:forEach>			
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

