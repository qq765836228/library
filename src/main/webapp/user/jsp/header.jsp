<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<header>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                   <a href="login.jsp" class="btn btn-primary">登陆</a>				
                   &nbsp;&nbsp;
                   <a href="register.jsp" class="btn btn-default">注册</a>
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
                            <li><a class="menu-top-active" href="index.jsp">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;首页 &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                            <li><a href="find.jsp">&nbsp;&nbsp;&nbsp;&nbsp; 图书查询 &nbsp;&nbsp; &nbsp;&nbsp;</a></li>
                            <li><a href="order.jsp"> &nbsp;&nbsp;&nbsp;&nbsp; 订单查询 &nbsp;&nbsp;&nbsp;&nbsp; </a></li>
                            <li><a href="user.jsp">&nbsp;&nbsp;&nbsp;&nbsp;个人中心&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                             <li><a href="about.jsp">&nbsp;&nbsp;&nbsp;&nbsp;概况&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                            <li><a href="contact.jsp">&nbsp;&nbsp;&nbsp;&nbsp;联系我们&nbsp;&nbsp;&nbsp;&nbsp;</a></li>

                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
</body>
</html>