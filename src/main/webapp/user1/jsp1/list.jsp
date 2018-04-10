<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户资料</title>
<link href="${pageContext.request.contextPath }/css/bootstrap.css" rel="stylesheet"> 
</head>
<body>
<div>
	
    <div class="container">
	    <div class="row">
		  <form name="form3" action="${pageContext.request.contextPath }/login/findAll2" method="post">
			<table  class="table table-striped">
				<tr>    
					<td style="width: 200px" colspan="8">
					账户名:<input type="text"  name="username" style="width: 130px" value="${username }"> 
					&nbsp;&nbsp;&nbsp;&nbsp;姓名:<input type="text" style="width: 130px" name="name" value="${name }" >	
					&nbsp;&nbsp;&nbsp;&nbsp;年龄:<input type="text"  name="age1" value="${age1 }" style="width: 50px">--
									<input type="text"  name="age2" value="${age2 }" style="width: 50px">	
					
					
									
					&nbsp;&nbsp;性别:
					<c:if test="${sex == '男'}">
			    		<input type="radio" name="sex" value="" >全部
						<input type="radio" name="sex" value="男" checked="checked">男
			    		<input type="radio" name="sex" value="女" >女
					</c:if>
					<c:if test="${sex == '女'}">
			    		<input type="radio" name="sex" value="" >全部
						<input type="radio" name="sex" value="男" >男
			    		<input type="radio" name="sex" value="女" checked="checked">女
					</c:if>
					<c:if test="${sex == null}">
						<input type="radio" name="sex" value="" checked="checked">全部
						<input type="radio" name="sex" value="男" >男
			    		<input type="radio" name="sex" value="女" >女
					</c:if>
					&nbsp;&nbsp;<input type="submit" class="btn btn-info" style="width: 60px" value="搜索"> 
					</td>
			    	<td style="width: 200px" colspan="2" align="right">
			    		类型:<select name="type" >
						    		<c:if test="${type == 'id'}">
						    			<option value="id" selected="selected">-  Id  -</option>
						    		</c:if>
						    		<c:if test="${type == 'age'}">
						    			<option value="age" selected="selected">-  年龄  -</option>
						    		</c:if>
						    		<c:if test="${type == 'inDate'}">
						    			<option value="inDate" selected="selected">-  注册日期   -</option>
						    		</c:if>
				    				<option value="">-  默认排序  -</option>
				    				<option value="id" >-  Id  -</option>
				    				<option value="age">-  年龄  -</option>
				    				<option value="inDate">-  注册日期  -</option>
			    		</select>
			    		<input type="submit" class="btn btn-info" style="width: 60px" value="排序">
			    	</td>
			    	
				</tr>  
				<tr>    
					<td style="width: 100px">ID</td>
					<td style="width: 150px">账户名</td>
					<td style="width: 150px">密码</td>
					<td style="width: 100px">姓名</td>
					<td style="width: 100px">性别</td>
					<td style="width: 100px">年龄</td>
					<td style="width: 150px">出生日期</td>
					<td style="width: 100px">联系方式</td>
					<td style="width: 200px">注册日期</td>
					<td style="width: 200px">操作</td>
				</tr>   
				<c:forEach items="${list }" var="c">
				<tr>
					<td>${c.id }</td>
					<td>${c.username }</td>
					<td>${c.password }</td>
					<td>${c.name }</td>
					<td>${c.sex }</td>					
					<td>${c.age }</td>
					<td><fmt:formatDate value="${c.birthday }" pattern="yyyy-MM-dd"/></td>
					<td>${c.phone }</td>
					<td><fmt:formatDate value="${c.inDate }" pattern="yyyy-MM-dd hh:mm:ss"/></td>
					<td><a href="${pageContext.request.contextPath }/login/updateUI/${c.id }">修改</a>
						<a href="${pageContext.request.contextPath }/login/delete/${c.id }" onclick="return window.confirm('你确定删除吗？')">删除</a></td>
				</tr>
				</c:forEach>
			</table>
		</form>
		</div>
	      <h1><a class="btn btn-info"  href="${pageContext.request.contextPath }/login/indexUI/${user.id }">返回主页</a></h1>

      </div>

		
		
</div>		
</body>
</html>