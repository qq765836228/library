<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>添加客户</TITLE> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/Manage.css" type=text/css rel=stylesheet>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>

<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY>
	<FORM id=form1 name=form1 action="${pageContext.request.contextPath }/Book_save.action" method="post">
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD vAlign=top width="100%" bgColor=#ffffff>
						<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
							<TR>
								<TD class=manageHead>当前位置：图书信息管理 &gt; 添加图书</TD>								
							</TR>						
						</TABLE>
						<hr>
						<TABLE cellSpacing=0 cellPadding=5  border=0>						    
							<tr>
								<td>图书名称：</td>
								<td>
									<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="book_name">
								</td>	
								<td>图书类型：</td>
								<td>
									<select name="category.category_id">
										<c:forEach items="${list }" var="c">
											<option value="${c.category_id }">${c.category_name }</option>
										</c:forEach>
									</select>
								</td>														
   							</tr>
							<tr>
								<td>作者：</td>
								<td>
									<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="book_autor">
								</td>	
								<td>出版社：</td>
								<td>
									<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="book_pubHouse">
								</td>	
							</tr>
							<tr>
								<td>图书价格：</td>
								<td>
									<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="book_price">
								</td>	
								<td>图书数量：</td>
								<td>
									<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="book_num">
								</td>
							</tr>
							<tr>
								<td>入馆时间：</td>
								<td>
									<INPUT type="date" style="WIDTH: 180px" maxLength=50 name="book_inDate">
								</td>	
								<td>操作人：</td>
								<td>
									<input type="hidden" name="admin.admin_id" value="${admins.admin_id }">
									<INPUT readonly="readonly" style="WIDTH: 180px" maxLength=50  value="${admins.admin_name }">
								</td>														
							</tr>							
							<tr>
							<td rowspan=2>
								<INPUT class=button id=sButton2 type=submit value=" 保存 " name=sButton2>
								</td>
							</tr>
						</TABLE>
						
						
					</TD>				
				</TR>
			</TBODY>
		</TABLE>
		
	</FORM>
</BODY>
</HTML>
