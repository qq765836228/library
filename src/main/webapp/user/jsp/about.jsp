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
			             <p>&#12288;&#12288;<strong>华东交通大学理工学院</strong>组建于2001年，坐落于黄家湖大学城（原华东交通大学黄家湖校区），组建之初名为“华东交通大学南洋科技学院”，后更名为“华东交通大学理工学院”。学院组建之初实行“2+2”模式（即本科前两年基础课在黄家湖校区就读，后两年专业课在华东交通大学校本部就读），随着黄家湖校区的各项设施逐渐完善，从2005级开始，各专业本科生四年全部在黄家湖校区就读。</p>
<p>&#12288;&#12288;<strong>华东交通大学理工学院</strong>继承校本部的综合优势，与学校其他兄弟学院齐头并进。充分发挥灵活的办学机制，采用先进的教育模式、现代化的教学手段和教学设施，教学质量和办学水平不断提高。理工学院各级党、团组织和学生会组织活动丰富多彩，为学生提供了施展才华的广阔天地。 现有在籍学生近13000人，总投资16亿元人民币，并将规划开发建设一座高新技术科技园，成为集教育、科研、生产为一体的一所综合性的普通高等学府，并将通过严谨、开拓、创新的教育，培养和造就一批懂技术、善管理的复合型高级专门应用型人才。</p>
<p>&#12288;&#12288;独特的办学理念、鲜明的学科优势。理工学院贯彻“育人为本、服务社会”的办学宗旨，恪守“质量立校、人才兴校、特色强校、依法治校”的办学理念，坚持培养具有实践能力和创新精神的高素质应用型人才的办学定位。理工学院依托华东交通大学的学科优势，坚持以市场需求为导向，不断加强学科专业建设，形成了以工为主，交通运输为优势，理、经、管、文、法等多学科协调发展的格局。</p>
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
	                        	<h4>所属分院：电子信息工程</h4>
	                        	<h4>专业：计算机科学与技术</h4>
		                    </div>
		                    <div class="panel-footer text-muted">
		                        <strong>@熊超</strong>
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
  
