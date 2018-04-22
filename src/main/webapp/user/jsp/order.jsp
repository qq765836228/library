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
    <title>订单查询</title>
       <link href="${pageContext.request.contextPath }/assets/css/bootstrap.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/assets/css/font-awesome.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/assets/css/style.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath }/assets/css/button.css" rel="stylesheet" />
	
	<script src="${pageContext.request.contextPath }/admin/assets/js/jquery-2.0.3.min.js"></script>
  	 <script src="${pageContext.request.contextPath }/assets/js/bootstrap.js"></script>
  
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
                            	<li><a  class="menu-top-active"  href=""> &nbsp;&nbsp;&nbsp;&nbsp; 订单查询 &nbsp;&nbsp;&nbsp;&nbsp; </a></li>
                            	<li><a href="${pageContext.request.contextPath }/user/jsp/user.jsp">&nbsp;&nbsp;&nbsp;&nbsp;个人中心&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                            </c:if>
                            <c:if test="${USER == null }">
	                            <li><a href="${pageContext.request.contextPath }/user/jsp/login.jsp" onClick="return confirm('请先登录');"> &nbsp;&nbsp;&nbsp;&nbsp; 订单查询 &nbsp;&nbsp;&nbsp;&nbsp; </a></li>
	                            <li><a href="${pageContext.request.contextPath }/user/jsp/login.jsp" onClick="return confirm('请先登录');">&nbsp;&nbsp;&nbsp;&nbsp;个人中心&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                            </c:if>
                             <li><a href="${pageContext.request.contextPath }/user/jsp/about.jsp">&nbsp;&nbsp;&nbsp;&nbsp;概况&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                           
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
                        <h1 class="page-head-line">爱 读 书 的 都 是 好 孩 子 哦</h1>
                    </div>
             </div>
             <div class="row">
                <div class="col-md-12">
                  <!--   Kitchen Sink -->
                    <!-- <div class="panel panel-default">
                        <div class="panel-heading">
                            	<div class="row">   
							  <div class="col-xs-3 " style="left: 20px">
							  	 <h5>类  别：</h5>	
							  		<select class="form-control ">
								  		<option>-请选择-</option>
								  		<option>语文</option>
								  		<option>英语</option>
								  		<option>数学</option>
							  		</select>
							  </div>
							  <div class="col-xs-3">
							 	 <h5>书  名：</h5>	
							    <input type="text" class="form-control" placeholder="骆驼祥子">
							  </div>
							  <div class="col-xs-2" align="right">
							  	 <a href="#" class="button button-glow button-border button-rounded button-primary" style="margin-top: 30px;">搜索</a>
							 </div> 
                        </div> -->
                        <div class="panel-body">
                            <div class="table-responsive">
                            	<c:if test="${OrderVO.list.size()==0 }">
                            			你 还 没 有 借 过 书 ， 快 去 借 书 吧！
                            	</c:if>
                            	<c:if test="${OrderVO.list.size()>0 }">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th></th>
											<th class="center">订单id</th>
											<th>用户名</th>
											<th>用户账号</th>
											<th>联系方式</th>
											<th>图书名称</th>
											<th>图书ISBN码</th>
											<th>借出时间</th>
											<th>应还时间</th>
											<th>实际归还时间</th>
											<th>是否归还</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${OrderVO.list }" var="c"  varStatus="status">											
													<tr>
														<td>${status.count+(OrderVO.currentPage*10) }</td>

														<td>${c.order_id }</td>
														<td>${c.user.user_name }</td>
														<td>${c.user_idcard }</td>
														<td>${c.user.user_telphone }</td>
														<td>${c.book.book_name }</td>
														<td>${c.book_isbn }</td>	
																													
														<td><fmt:formatDate value="${c.borrow_time }" pattern="yyyy-MM-dd"></fmt:formatDate></td>														
														<td><fmt:formatDate value="${c.return_time }" pattern="yyyy-MM-dd"></fmt:formatDate></td>
														<td><fmt:formatDate value="${c.is_return_time }" pattern="yyyy-MM-dd"></fmt:formatDate></td>
														<td>
															<c:if test="${c.isreturn ==0 }">
																<font color="green">正在借书中</font>
															</c:if>
															<c:if test="${c.isreturn ==1 }">
																<font color="red">借书已超时</font>
															</c:if>
															<c:if test="${c.isreturn ==2 }">
																<font color="red">已完成</font>
															</c:if>
														</td>	
													</tr>
													</c:forEach>
                                    </tbody>
                                    
                                </table>
                               				 <div class="col-md-3">
												总页数：${OrderVO.totalPage }\当前页：${OrderVO.currentPage+1 }
											</div>
											<div  style="float: right;">
													<c:if test="${OrderVO.totalPage != 1 }">
														<a class="btn btn-info" href="${pageContext.request.contextPath }/Order/findOrder/${USER.user_idcard }/1">首页</a>
														<c:if test="${OrderVO.currentPage == 0 }">
															<a class="btn btn-info">上一页</a>
													 		<a class="btn btn-info" href="${pageContext.request.contextPath }/Order/findOrder/${USER.user_idcard }/${OrderVO.currentPage+2 }">下一页</a>
														</c:if>
														<c:if test="${OrderVO.currentPage+1 == OrderVO.totalPage }">
															<a class="btn btn-info" href="${pageContext.request.contextPath }/Order/findOrder/${USER.user_idcard }/${OrderVO.currentPage }">上一页</a>
													 		<a class="btn btn-info" >下一页</a>
														</c:if>
														<c:if test="${1 < OrderVO.currentPage+1 && OrderVO.currentPage+1 < OrderVO.totalPage }">
															<a class="btn btn-info" href="${pageContext.request.contextPath }/Order/findOrder/${USER.user_idcard }/${OrderVO.currentPage }">上一页</a>
													 		<a class="btn btn-info" href="${pageContext.request.contextPath }/Order/findOrder/${USER.user_idcard }/${OrderVO.currentPage+2 }">下一页</a>
														</c:if>
														<a class="btn btn-info" href="${pageContext.request.contextPath }/Order/findOrder/${USER.user_idcard }/${OrderVO.totalPage}">尾页</a>	
														
													</c:if>
											</div>	
								 </c:if>
                            </div>
                           
                        </div>
                    </div>
                     <!-- End  Kitchen Sink -->
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
</body>
</html>

  
