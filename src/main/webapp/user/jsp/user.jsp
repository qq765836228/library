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
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">

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
                                <a href="${pageContext.request.contextPath }/User/loginOut" class="btn btn-danger btn-sm">注销</a>

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
                            	<li><a href="${pageContext.request.contextPath }/User/findOrder/${USER.user_idcard }"> &nbsp;&nbsp;&nbsp;&nbsp; 订单查询 &nbsp;&nbsp;&nbsp;&nbsp; </a></li>
                            	<li><a  class="menu-top-active"  href="user.jsp">&nbsp;&nbsp;&nbsp;&nbsp;个人中心&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                            </c:if>
                            <c:if test="${USER == null }">
	                            <li><a href="${pageContext.request.contextPath }/user/jsp/login.jsp" onClick="return confirm('请先登录');"> &nbsp;&nbsp;&nbsp;&nbsp; 订单查询 &nbsp;&nbsp;&nbsp;&nbsp; </a></li>
	                            <li><a href="${pageContext.request.contextPath }/user/jsp/login.jsp" onClick="return confirm('请先登录');">&nbsp;&nbsp;&nbsp;&nbsp;个人中心&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                            </c:if>
                             <li ><a href="about.jsp">&nbsp;&nbsp;&nbsp;&nbsp;概况&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                           
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
                        <h1 class="page-head-line">个人信息中心 </h1>
                    </div>
                </div>
                <div class="row">
                	<div class="col-md-3">
			            <div class="alert alert-info">
		                        This is a simple admin template that can be used for your small project or may be large projects. This is free for personal and commercial use.
		                       This is a simple admin template that can be used for your small project or may be large projects. This is free for personal and commercial use.
		                           This is a simple admin template that can be used for your small project or may be large projects. This is free for personal and commercial use.
		                </div>
			         </div>
                    <div class="col-md-6">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                                                                   请 填 满 这 些 信 息 吧
                        </div>
                        <div class="panel-body">
                       <form>
							  <div class="form-group">
							    <label for="exampleInputEmail1">用 户 名</label>
							    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email" />
							  </div>
							  <div class="form-group">
							    <label for="exampleInputPassword1">密 码</label>
							    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" />
							  </div>
							   <div class="form-group">
							    <label for="exampleInputPassword1">姓 名</label>
							    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" />
							  </div>
							   <div class="form-group">
							    <label for="exampleInputPassword1">年 龄</label>
							    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" />
							  </div>
							   <div class="form-group">
							    <label for="exampleInputPassword1">Password</label>
							    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" />
							  </div>
							   <hr />
							   <textarea class="form-control" rows="5" placeholder="Text Area"></textarea>
							   <hr />  
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-3">
			            <div class="alert alert-warning">
		                        This is a simple admin template that can be used all project or may be l
		                        arge projects. This is free for personal and commercial use.
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
                    &copy; 2015 YourCompany | By : <a href="http://www.designbootstrap.com/" target="_blank">DesignBootstrap</a>
                </div>

            </div>
        </div>
    </footer>
    <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.11.1.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
</body>
</html>


  
