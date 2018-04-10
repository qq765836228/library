<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>客户列表</TITLE> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/Manage.css" type=text/css
	rel=stylesheet>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
		function to_page(page){
			if(page){
				$("#pageCode").val(page);
			}
			document.categoryForm.submit();
		}
</script>

<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY>
	<FORM id="categoryForm" name="categoryForm" action="${pageContext.request.contextPath}/Category_findByPage.action" method=post>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD vAlign=top width="100%" bgColor=#ffffff>
						<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
							<TR>
								<TD class=manageHead>当前位置：图书信息管理 &gt; 分类列表</TD>
							</TR>
							<TR>
								<TD height=2></TD>
							</TR>
						</TABLE>
						<hr>
						<TABLE borderColor=#cccccc cellSpacing=0 cellPadding=0
							width="100%" align=center border=0>
							<TBODY>
								<TR>
									<TD height=25>
										<TABLE cellSpacing=0 cellPadding=2 border=0>
											<TBODY>
												<TR>
													<TD>分类名称：</TD>
													<TD>
														<INPUT class=textbox id=sChannel2 style="WIDTH: 80px" maxLength=50 name="category_name" value="${ model.category_name }">
													</TD>
													
													<TD>
														<INPUT class=button id=sButton2 type=submit value=" 筛选 " name=sButton2>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
							    
								<TR>
									<TD>
										<TABLE id=grid
											style="BORDER-TOP-WIDTH: 0px; FONT-WEIGHT: normal; BORDER-LEFT-WIDTH: 0px; BORDER-LEFT-COLOR: #cccccc; BORDER-BOTTOM-WIDTH: 0px; BORDER-BOTTOM-COLOR: #cccccc; WIDTH: 100%; BORDER-TOP-COLOR: #cccccc; FONT-STYLE: normal; BACKGROUND-COLOR: #cccccc; BORDER-RIGHT-WIDTH: 0px; TEXT-DECORATION: none; BORDER-RIGHT-COLOR: #cccccc"
											cellSpacing=1 cellPadding=2 rules=all border=0>
											<TBODY>
												<TR
													style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
													<TD>分类ID</TD>
													<TD>分类名称</TD>	
													<TD>书架</TD>	
													<TD>操作</TD>													
   											   </TR>
												<c:forEach items="${page.beanList }" var="c">
												<TR style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
													<TD>${c.category_id }</TD>
													<TD>${c.category_name }</TD>
													<TD>${c.book_case }</TD>
													<TD>
													<a href="${pageContext.request.contextPath }/Category_initUpdateUI?category_id=${c.category_id}">修改</a>
													&nbsp;&nbsp;
													<a href="${pageContext.request.contextPath }/Category_delete?category_id=${c.category_id}" onclick="return window.confirm('你确定删除吗？')">删除</a>
													</TD>
												</TR>
												
												</c:forEach>

											</TBODY>
										</TABLE>
									</TD>
								</TR>
								
								<TR>
									<TD>
										<SPAN id=pagelink>
												<DIV style="LINE-HEIGHT: 20px; HEIGHT: 20px; TEXT-ALIGN: right">
													共[<B>${page.totalCount}</B>]条记录, 共 [<B>${page.totalPage}</B>]页
													,每页显示
													<select name="pageSize">
													
													<option value="2" <c:if test="${page.pageSize==2 }">selected</c:if>>2</option>
													<option value="3" <c:if test="${page.pageSize==3 }">selected</c:if>>3</option>
													<option value="4" <c:if test="${page.pageSize==4 }">selected</c:if>>4</option>
													<option value="5" <c:if test="${page.pageSize==5 }">selected</c:if>>5</option>
													<option value="6" <c:if test="${page.pageSize==6 }">selected</c:if>>6</option>
													<option value="7" <c:if test="${page.pageSize==7 }">selected</c:if>>7</option>
													</select>
													条
												
													[<A
														<c:if test="${page.pageCode>1 }">
													 		href="javascript:to_page(1)"
													 	</c:if>
													 >首页</A>]
													[<A 
														<c:if test="${page.pageCode>1 }">
															 href="javascript:to_page(${page.pageCode-1})"
													 	</c:if>
													>前一页</A>]
													
													
													<B>${page.pageCode}</B>
													
																									
													[<A 
														<c:if test="${page.pageCode<page.totalPage }">	
															 href="javascript:to_page(${page.pageCode+1})"
													 	</c:if>
													>后一页</A>] 
													[<A 
														<c:if test="${page.pageCode<page.totalPage }">	
															 href="javascript:to_page(${page.totalPage })"
														 </c:if>
													>尾页</A>] 
													
													
													
													到
													<input type="text" size="3" id="pageCode" name="pageCode" />
													页
													
													<input type="button" value="Go" onclick="to_page()"/>
												</DIV>
										</SPAN> 
									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</TD>				
				</TR>
			</TBODY>
		</TABLE>
		
	</FORM>
</BODY>
</HTML>
