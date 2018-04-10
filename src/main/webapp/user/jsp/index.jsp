<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>图书馆管理系统</title>
      <link href="${pageContext.request.contextPath }/assets/css/bootstrap.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/assets/css/font-awesome.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/assets/css/style.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/assets/css/button.css" rel="stylesheet" />
  
  	<style type="text/css">
  	.d1 {background: #A3D0C3;}
.d1 input {
  width: 100%;
  height: 42px;
  padding-left: 10px;
  border: 2px solid #7BA7AB;
  border-radius: 5px;
  outline: none;
  background: #F9F0DA;
  color: #9E9C9C;
}
.d1 button {
  position: absolute; 
  top: 68px;
  right: -5px;
  width: 42px;
  height: 42px;
  border: none;
  background: #7BA7AB;
  border-radius: 0 5px 5px 0;
  cursor: pointer;
}
.d1 button:before {
  content: "\f002";
  font-family: FontAwesome;
  font-size: 16px;
  color: #F9F0DA;
}       

#sou{
		width:66%;
		height: 200px;
		margin:40px auto;
		padding-top:30px;
		background-image: url(../../assets/img/搜索1.jpg);
		
		text-align: center;
}  
         
  	</style>
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
                            <li><a class="menu-top-active" href="index.jsp">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;首页 &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                            <li><a href="find.jsp">&nbsp;&nbsp;&nbsp;&nbsp; 图书查询 &nbsp;&nbsp; &nbsp;&nbsp;</a></li>
                            <li><a href="order.jsp"> &nbsp;&nbsp;&nbsp;&nbsp; 订单查询 &nbsp;&nbsp;&nbsp;&nbsp; </a></li>
                            <li><a href="user.jsp">&nbsp;&nbsp;&nbsp;&nbsp;个人中心&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                             <li><a href="about.jsp">&nbsp;&nbsp;&nbsp;&nbsp;概况&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                           
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
     <%-- <c:import url="header.jsp"></c:import>  --%>
    <!-- MENU SECTION END-->
   	<!--  <div id="sou" class="container">
          <div class="row">
          		 <div class="col-md-7 col-md-offset-2" >
          		 	<h1 >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;搜  索</h1>
		             <form class="d1">
						 <input type="text" placeholder="搜索从这里开始...">
						<button type="submit"></button>
					</form>     
		         </div>
		    </div>
		    
	</div> -->
	
    	<div class="content-wrapper">
       			 <div class="container">
       			 <h3><img alt="新闻" src="../../assets/img/新闻.png">&nbsp;&nbsp;&nbsp;新 闻 中 心</h3>
       			 <hr>
          			  <div class="row">       			 	 
				        <div class="col-md-3">
				               <div class="panel panel-primary">
				                    <div class="panel-heading">
				                       		 <h4><img alt="服务中心" src="../../assets/img/服务中心.png">&nbsp;&nbsp;&nbsp;服 务 时 间</h4>
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
	                          		<h4><img alt="资源中心" src="../../assets/img/资源中心.png">&nbsp;&nbsp;&nbsp;常 用 资 源</h4>
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
					         	<h2><img alt="通知" src="../../assets/img/通知.png">&nbsp;&nbsp;&nbsp;通 知 公 告</h2>
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
				     </div>
           		</div>
    <div class="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h4 class="page-head-line"><img alt="热门" src="../../assets/img/热门.png">&nbsp;&nbsp;&nbsp;热  门  图  书  推  荐</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="alert alert-success">
                    	假 如 你 来 到 这 里 ， 不 知 寻 找 哪 本 书 ， 那 么 你 不 妨 试 试 这 几 本 大 家 都 在 读 的 书 吧 ！ ！ ！ ！    
                    </div>
                </div>

            </div>
            <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
            <div class="row">
                 <div class="col-md-3 col-sm-3 col-xs-6">
                   	 <div class="dashboard-div-wrapper bk-clr-one">
                        	<i><img alt="" src="../../assets/img/书1.jpg" width="80%" style="margin-bottom: 10px"></i>
                        	<div class="progress progress-striped active">
					 		 	<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
						  		</div>
	                  		</div>
                        	 <h5>致  岁 月 迢 迢</h5>
                 	 </div>
            	</div>
                 <div class="col-md-3 col-sm-3 col-xs-6">
                    <div class="dashboard-div-wrapper bk-clr-two">
                        <i><img alt="" src="../../assets/img/书2.jpg" width="80%" style="margin-bottom: 10px"></i>
                        <div class="progress progress-striped active">
							  <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
							  </div>
						</div>
                         <h5>执 子 之 手   ，  一 生 不 走 </h5>
                    </div>
                </div>
                 <div class="col-md-3 col-sm-3 col-xs-6">
                    <div class="dashboard-div-wrapper bk-clr-three">
                        <i><img alt="" src="../../assets/img/书3.jpg" width="80%" style="margin-bottom: 10px"></i>
                        <div class="progress progress-striped active">
							  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
							  </div>
						</div>
                         <h5>半  是  蜜  糖  半  是  伤 </h5>
                    </div>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-6">
                    <div class="dashboard-div-wrapper bk-clr-four">
                        <i><img alt="" src="../../assets/img/书4.jpg" width="80%" style="margin-bottom: 10px"></i>
                        <div class="progress progress-striped active">
							  <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
							  </div>
						</div>
                         <h5>你  以  为  你  是  谁  ？</h5>
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
                    &copy; 华东交通大学理工学院 | By 计算机科学与技术1班 <a href="http://www.cssmoban.com/" target="_blank" title="熊超">熊超</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">chao.xiong</a>
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
