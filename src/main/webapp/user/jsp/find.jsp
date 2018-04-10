<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                   <a href="login.jsp" class="button button-action button-pill">登陆</a>				
                   &nbsp;&nbsp;
                   <a href="register.jsp" class="button button-raised button-pill button-inverse">注册</a>
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

                    <img src="../../assets/img/logo.png" />
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
                                        <img src="assets/img/64-64.jpg" alt="" class="img-rounded" />
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading">Jhon Deo Alex </h4>
                                        <h5>Developer & Designer</h5>

                                    </div>
                                </div>
                                <hr />
                                <h5><strong>Personal Bio : </strong></h5>
                                Anim pariatur cliche reprehen derit.
                                <hr />
                                <a href="#" class="btn btn-info btn-sm">Full Profile</a>&nbsp; <a href="login.html" class="btn btn-danger btn-sm">Logout</a>

                            </div>
                        </li>
                        
                        
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
                            <li><a href="index.jsp">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;首页 &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                            <li><a class="menu-top-active" href="find.jsp">&nbsp;&nbsp;&nbsp;&nbsp; 图书查询 &nbsp;&nbsp; &nbsp;&nbsp;</a></li>
                            <li><a  href="order.jsp"> &nbsp;&nbsp;&nbsp;&nbsp; 订单查询 &nbsp;&nbsp;&nbsp;&nbsp; </a></li>
                            <li><a href="user.jsp">&nbsp;&nbsp;&nbsp;&nbsp;个人中心&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                             <li><a href="about.jsp">&nbsp;&nbsp;&nbsp;&nbsp;概况&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                          
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
				        <div class="form-group has-error has-feedback" style="margin: 50px auto;text-align: center;font-size: 20px">
				          <label class="control-label" for="inputError2">快 速 搜 索</label>						  						
						<form class="form-inline">
							  <div class="form-group">
							    <label class="sr-only" for="exampleInputAmount">Amount (in dollars)</label>
							    <div class="input-group" style="width: 500px ">
							      <input type="text" class="form-control" id="inputError2" aria-describedby="inputError2Status">
						  		 <div class="input-group-addon">
									<a href="#" >Go</a>
								</div>
							    </div>
							  </div>
							</form>
						</div>	
					</div>
				</div>
                     <!--    Context Classes  -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
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
                        </div>
                        
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Username</th>
                                             <th>#</th>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Username</th>
                                                 
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="success">
                                            <td>1</td>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                             <td>1</td>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                                 
                                        </tr>
                                        <tr class="info">
                                            <td>2</td>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                             <td>2</td>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                        </tr>
                                        <tr class="warning">
                                            <td>3</td>
                                            <td>Larry</td>
                                            <td>the Bird</td>
                                            <td>@twitter</td>
                                             <td>2</td>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                        </tr>
                                        <tr class="danger">
                                            <td>4</td>
                                            <td>John</td>
                                            <td>Smith</td>
                                            <td>@jsmith</td>
                                             <td>2</td>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--  end  Context Classes  -->
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
    <script src="../assets/js/jquery-1.11.1.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="../assets/js/bootstrap.js"></script>
</body>
</html>

  
