<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>图书查询</title>
    <link href="${pageContext.request.contextPath }/assets/css/bootstrap.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/assets/css/font-awesome.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/assets/css/style.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/assets/css/button.css" rel="stylesheet" />
  
</head>
<body>
<header>
        <div class="container">
            <div class="row">
	           
	                <div class="col-md-12">
	                 	<c:if test="${USER==null }">
	                   <a href="${pageContext.request.contextPath }/user/jsp/login.jsp" class="button button-action button-pill">登陆</a>				
	                   &nbsp;&nbsp;
	                   <a href="${pageContext.request.contextPath }/user/jsp/register.jsp" class="button button-raised button-pill button-inverse">注册</a>
	                   </c:if>
	                </div>
	 			
            </div>
        </div>
    </header>
   
    <!-- HEADER END-->
    <div class="navbar navbar-inverse set-radius-zero">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="${pageContext.request.contextPath }/user/jsp/index.jsp">

                    <img src="${pageContext.request.contextPath }/assets/img/logo.png" />
                </a>

            </div>

            <div class="left-div">
                <div class="user-settings-wrapper">
                    <ul class="nav">

                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                                <span class="glyphicon glyphicon-user" style="font-size: 25px;"></span>                             
                            </a>
                            
                            <div class="dropdown-menu dropdown-settings">
                                <div class="media">
                                    <a class="media-left" href="#">
                                       <span class="glyphicon glyphicon-user" style="font-size: 35px;"></span>
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading">${USER.user_name } </h4>
                                        <h5>ID:${USER.user_id }</h5>

                                    </div>
                                </div>
                                <hr />
                                <h5><strong>联系方式 : </strong>${USER.user_telphone }</h5>
                                <h5><strong>违规次数 : </strong>${USER.user_error }</h5>
                                <h5><strong>注册日期 : </strong><fmt:formatDate value="${USER.user_inDate }" pattern="yyyy-MM-dd"></fmt:formatDate></h5>
                                <hr />
                                <c:if test="${USER != null }">
	                                 <a href="${pageContext.request.contextPath }/User/loginOut" class="btn btn-danger btn-sm">注销</a>
	 								<a href="${pageContext.request.contextPath }/user/jsp/editPassword.jsp" class="btn btn-info btn-sm">修改密码</a>
                                </c:if>
                            </div>
                        </li>
                        <li style="font-size: 20px;color:black;"> &nbsp;&nbsp;&nbsp;&nbsp;${USER.user_name }</li>
                        
                    </ul>
                </div>
            </div>
        </div>
    </div>
    
    
    <!-- LOGO HEADER END-->
    <section class="menu-section">
        <div class="container" >
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a href="${pageContext.request.contextPath }/user/jsp/index.jsp">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;首页 &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                            <li><a href="${pageContext.request.contextPath }/user/jsp/find.jsp">&nbsp;&nbsp;&nbsp;&nbsp; 图书查询 &nbsp;&nbsp; &nbsp;&nbsp;</a></li>
                            <c:if test="${USER != null }">
                            	<li><a href="${pageContext.request.contextPath }/Order/findOrder/${USER.user_idcard }/1"> &nbsp;&nbsp;&nbsp;&nbsp; 订单查询 &nbsp;&nbsp;&nbsp;&nbsp; </a></li>
                            	<li><a href="${pageContext.request.contextPath }/user/jsp/user.jsp">&nbsp;&nbsp;&nbsp;&nbsp;个人中心&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                            </c:if>
                            <c:if test="${USER == null }">
	                            <li><a href="${pageContext.request.contextPath }/user/jsp/login.jsp" onClick="return confirm('请先登录');"> &nbsp;&nbsp;&nbsp;&nbsp; 订单查询 &nbsp;&nbsp;&nbsp;&nbsp; </a></li>
	                            <li><a href="${pageContext.request.contextPath }/user/jsp/login.jsp" onClick="return confirm('请先登录');">&nbsp;&nbsp;&nbsp;&nbsp;个人中心&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                            </c:if>
                             <li><a class="menu-top-active"  href="">&nbsp;&nbsp;&nbsp;&nbsp;概况&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                           
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
 <%-- <c:import url="header.jsp"></c:import>  --%>
  <!-- MENU SECTION END-->
    <div class="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h4 class="page-head-line">关  于  我  们</h4>

                </div>

            </div>
            <div class="row">
	          <div class="col-md-6">
	           	 <div class="alert alert-danger">
			             <p>
			             	&#12288;&#12288;<strong>华东交通大学</strong>是一所以工为主，经、管、文、理、法、教育、艺术等多学科协调发展，以交通为特色、轨道为核心的教学研究型大学，江西省属重点大学。学校是国家“中西部高校基础能力建设工程”重点建设大学、中国铁路总公司与江西省人民政府共建高校、教育部“卓越工程师教育培养计划”高校、江西省“2011计划”依托高校、原南京军区（现东部战区）招收和选拔培养后备军官（国防生）签约高校，为全国毕业生就业典型经验高校，首批全国高校创新创业50强和国家级知识产权培训基地，“中俄交通大学联盟”成员高校，“中国—东盟轨道交通教育培训联盟”成员高校。
			             </p>
			             <p>
			             &#12288;&#12288;1971年，国家决定将上海交通大学机车车辆系以及同济大学铁道工程专业并入上海铁道学院，更名为华东交通大学，迁往江西；1978年，中央同意原上海铁道学院不再搬迁，华东交通大学继续在南昌建校，由原铁道部和江西省双重领导，以原铁道部为主；2000年，学校转制为“中央与地方共建，以地方管理为主”。
			             </p>
			             <p>
			              &#12288;&#12288;截至2016年10月，学校占地面积近3000亩，建筑面积70余万平方米，教学科研仪器设备总值近3.5亿元；图书馆收藏纸质图书203万册，电子文献233万册，为中国学术期刊文献检索一级咨询站；学校有1个博士后科研工作站，1个博士后科研流动站，1个院士工作站，2个一级学科博士点，17个一级学科硕士点[4]；有在校学生23000余人，其中研究生2800余人[5]；有教职工1700余人，其中正副教授530余人；学校设有18个学院：其中17个直属二级学院、1个独立设置学院（理工学院），校本部共60个本科专业。          
			             </p>
	               </div>
	          </div>
              <div class="col-md-6">
                  <div class="alert alert-info">
                  	从 删 库 到 跑 路 ， 我 就 是 大 佬     
                  </div>
                   <hr />
                   <div class="Compose-Message">               
               			 <div class="panel panel-success">
	                  			  <div class="panel-heading">
	                      			  开 发 者 
	                   			  </div>
	                   	 	<div class="panel-body">
		                        <img alt="" src="${pageContext.request.contextPath }/assets/img/22.jpg">
	                        	<h3 style="display:inline;">姓名：<strong>熊 超</strong></h3>
	                        	<h4>所属分院：电子信息工程</h4>
	                        	<h4>专业：计算机科学与技术</h4>
		                    </div>
		                    <div class="panel-footer text-muted">
		                        <strong>爱 我 你 就 亲 亲 我</strong>
		                    </div>
                		</div>
                   </div>
                </div>

            </div>
        </div>
    </div>
    <!-- CONTENT-WRAPPER SECTION END-->
     <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    &copy; 华东交通大学理工学院 | By 计算机科学与技术1班 <a href="https://baike.baidu.com/item/%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87/12343674?fr=aladdin" target="_blank" title="熊超">熊超</a> - Collect from <a href="https://baike.baidu.com/item/%E5%B0%8F%E7%8C%AA%E4%BD%A9%E5%A5%87/12343674?fr=aladdin"  target="_blank">chao.xiong</a>
                </div>

            </div>
        </div>
    </footer>
    <script src="${pageContext.request.contextPath }/assets/js/jquery-1.11.1.js"></script>
    <script src="${pageContext.request.contextPath }/assets/js/bootstrap.js"></script>
	</body>
</html>
  
