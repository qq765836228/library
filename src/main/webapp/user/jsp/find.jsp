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
                            <li><a  class="menu-top-active"  href="">&nbsp;&nbsp;&nbsp;&nbsp; 图书查询 &nbsp;&nbsp; &nbsp;&nbsp;</a></li>
                            <c:if test="${USER != null }">
                            	<li><a href="${pageContext.request.contextPath }/Order/findOrder/${USER.user_idcard }/1"> &nbsp;&nbsp;&nbsp;&nbsp; 订单查询 &nbsp;&nbsp;&nbsp;&nbsp; </a></li>
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
<%--  <c:import url="header.jsp"></c:import> --%> 
 <!-- MENU SECTION END-->
    <div class="content-wrapper">
        <div class="container">
       			 <div class="row">   
					<div class="col-md-6 col-md-offset-3">
				        <div class="form-group has-error has-feedback" style="margin: 20px auto;text-align: center;font-size: 20px">
				          <label class="control-label" for="inputError2">快 速 搜 索</label>						  						
						<form id="form11" action="" method="post" class="form-inline">
							  <div class="form-group">
							    <div class="input-group" style="width: 500px ">
							      <input type="text" class="form-control" id="book_name" name="book_name"  value="${name }"/>
						  		 <div class="input-group-addon" onclick="sou()">
									<a style="text-decoration: none;">Go</a>
								</div>
							    </div>
							  </div>
							</form>
						</div>	
					</div>
				</div>
				<c:if test="${BVO.list.size() != null && BVO.list.size() != 0 }">
                     <!--    Context Classes  -->
                    <div class="panel panel-default">
                        <!-- <div class="panel-heading">
                            <div class="row">   
							  <div class="col-xs-3">
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
							  <div class="col-xs-4">
							  	<h5>作  者：</h5>	
							    <input type="text" class="form-control" placeholder="老舍">
							  </div>
							  <div class="col-xs-2">
							  	 <a href="#" class="button button-glow button-border button-rounded button-primary" style="margin-top: 30px;">搜索</a>
							 </div> 
							</div>
                        </div> -->
                        
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
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
                                                 
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${BVO.list }" var="c"  varStatus="status">	
                                    		<c:if test="${status.count%1 == 0 }">
                                    			 <tr class="success">
                                    		</c:if>	
                                    		<c:if test="${status.count%2 == 0 }">
                                    			 <tr class="warning">
                                    		</c:if>	
                                    		<c:if test="${status.count%3 == 0 }">
                                    			 <tr class="info">
                                    		</c:if>		
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
													</tr>
													</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="panel-heading">
                            <div class="row">   
							  <div class="col-xs-3">
									总页数：${BVO.totalPage }\当前页：${BVO.currentPage+1 }
							  </div>
							  <c:if test="${BVO.totalPage != 1 }">
						 	 <div  style="float: right;margin-right: 20px">
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
							</div>
                        </div>
                    </div>
                    </c:if>	
                    <!--  end  Context Classes  -->
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
   <script type="text/javascript">
   	function sou(){
   		var a=document.getElementById("form11");
		var name=$("#book_name").val();
		if(name!=null && name.trim()!=""){
			a.action="${pageContext.request.contextPath }/Book/findByBookName2/"+name+"/1";
			a.submit();
		}
		else{
			
		}
   	}
   	
   	function first(){
		var testform=document.getElementById("form11");
		var name="${name}";
		testform.action="${pageContext.request.contextPath }/Book/findByBookName2/"+name+"/1";
		testform.submit();
	}
	function next(){
		var testform=document.getElementById("form11");
		var name="${name}";
		var Page="${BVO.currentPage+2 }";
		testform.action="${pageContext.request.contextPath }/Book/findByBookName2/"+name+"/"+Page;
		testform.submit();
	}
	function before(){
		var testform=document.getElementById("form11");
		var name="${name}";
		var Page="${BVO.currentPage }";
		testform.action="${pageContext.request.contextPath }/Book/findByBookName2/"+name+"/"+Page;
		testform.submit();
	}
	function last(){
		var testform=document.getElementById("form11");
		var name="${name}";
		var Page="${BVO.totalPage}";		
		testform.action="${pageContext.request.contextPath }/Book/findByBookName2/"+name+"/"+Page;
		testform.submit();
	}
   	
   </script>
</body>
</html>

  
