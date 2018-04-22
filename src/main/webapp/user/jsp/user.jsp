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
                            <li><a href="${pageContext.request.contextPath }/user/jsp/find.jsp">&nbsp;&nbsp;&nbsp;&nbsp; 图书查询 &nbsp;&nbsp; &nbsp;&nbsp;</a></li>
                            <c:if test="${USER != null }">
                            	<li><a href="${pageContext.request.contextPath }/Order/findOrder/${USER.user_idcard }/1"> &nbsp;&nbsp;&nbsp;&nbsp; 订单查询 &nbsp;&nbsp;&nbsp;&nbsp; </a></li>
                            	<li><a  class="menu-top-active"  href="">&nbsp;&nbsp;&nbsp;&nbsp;个人中心&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                            </c:if>
                            <c:if test="${USER == null }">
	                            <li><a href="${pageContext.request.contextPath }/user/jsp/login.jsp" onClick="return confirm('请先登录');"> &nbsp;&nbsp;&nbsp;&nbsp; 订单查询 &nbsp;&nbsp;&nbsp;&nbsp; </a></li>
	                            <li><a href="${pageContext.request.contextPath }/user/jsp/login.jsp" onClick="return confirm('请先登录');">&nbsp;&nbsp;&nbsp;&nbsp;个人中心&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                            </c:if>
                             <li ><a href="${pageContext.request.contextPath }/user/jsp/about.jsp">&nbsp;&nbsp;&nbsp;&nbsp;概况&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                           
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
		                     	 也许我们曾经踌躇满志，豪情万丈，想大展宏图，而生活的道路却总是磕磕绊绊，崎岖不平；也许我们乐于平凡，甘于淡泊，向往宁静以致远，而生活的海洋却总不时扬起风浪。于是，我们感到很苦，很累，很彷徨，很失意，很痛苦，而所有的这些烦恼，只缘于我们没学会忘记，总是对那伤心的昨天念念不忘，对过去的不如意耿耿于怀，使得宝贵的今天痛苦满溢，让忧伤占据，并在浑然不觉中与今天失之交臂。	  
						</div>
			         </div>
                    <div class="col-md-6">
                        <div class="panel panel-default">
                        <div class="panel-heading ">
                                                                   请 填 满 这 些 信 息 吧
                        </div>
                        <div class="panel-body">
                       <form id="form11" action="" method="post">
							  <div class="form-group">
							    <label for="exampleInputEmail1">账 号</label>
							    <input type="text" class="form-control" name="user_idcard" value="${USER.user_idcard }" readonly="readonly"/>
							  </div>
							  <div class="form-group">
							    <label for="exampleInputPassword1">姓 名</label>
							    <input type="text" class="form-control" name="user_name" value="${USER.user_name }" />
							  </div>
							   <div class="form-group">
							    <label>性别</label>
							    <select  class="form-control" name="user_sex">
							    	<c:if test="${USER.user_sex == '男' }">
							    		<option value="男">男</option>
							   			<option value="女">女</option>	
							    	</c:if>
							    	<c:if test="${USER.user_sex == '女' }">
							    		<option value="女">女</option>
							   			<option value="男">男</option>	
							    	</c:if>
							   				
							    </select>
							  </div>
							   <div class="form-group">
							    <label >联系方式</label>
							    <input type="text" class="form-control" name="user_telphone" value="${USER.user_telphone }"/>
							  </div>
							   <hr />
							   <div class="form-group" align="center"> 
							    <a onclick="bao()" class="button button-glow button-border button-rounded button-primary" style="margin-top: 30px;">保存</a>
							  </div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-3">
			            <div class="alert alert-warning">
		                      在现实工作中，有不少人不怕苦、不怕累、埋头苦干、不分白天与黑夜、一个心眼、一心一意把精力投放在事业上，把人生的精神寄托在工作上，当他智，就得准备接受打击和惩罚，因为理智不许做的事，都是在寻常下不应该做或不能够做的事。</div>
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
<script type="text/javascript">
	function bao(){
		var a=document.getElementById("form11");
		a.action="${pageContext.request.contextPath }/User/updateUser";
		a.submit();
	}
</script>
</html>


  
