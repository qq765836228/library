<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>客户列表</TITLE> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/Manage.css" type=text/css rel=stylesheet>
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
	<FORM id="categoryForm" name="categoryForm" action="${pageContext.request.contextPath}/Book_findByPage.action" method=post>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD vAlign=top width="100%" bgColor=#ffffff>
						<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
							<TR>
								<TD class=manageHead>当前位置：图书信息管理 &gt; 图书列表</TD>
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
													<TD>图书名称：</TD>
													<TD>
														<INPUT class=textbox id=sChannel2 style="WIDTH: 80px" maxLength=50 name="book_name" value="${ model.book_name }">
													</TD>
													<TD>图书类型：</TD>
													<TD>
														<select name="category.category_id">
															<option value="">-请选择-</option>
															<c:forEach items="${list }" var="c">
																<option value="${c.category_id }">${c.category_name }</option>
															</c:forEach>
														</select>
													</TD>
													<TD>作者：</TD>
													<TD>
														<INPUT class=textbox id=sChannel2 style="WIDTH: 80px" maxLength=50 name="book_autor" value="${ model.book_autor }">
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
													<TD>图书ID</TD>
													<TD>图书名称</TD>	
													<TD>类型</TD>
													<TD>作者</TD>	
													<TD>出版社</TD>
													<TD>价格</TD>	
													<TD>书架</TD>	
													<TD>数量</TD>
													<TD>入馆时间</TD>	
													<TD>操作人</TD>
													<TD>被借次数</TD>														
   											   </TR>
   											   <!-- 	编号book_id   名称book_name  类型category_id 作者book_autor  
												出版社book_pubHouse 价格book_price  
												书架book_case 数量book_num  入馆时间book_inDate  
												操作人admin_id 被借次数borrowNum  -->
												<c:forEach items="${page.beanList }" var="c">
												<TR style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
													<TD>${c.book_id }</TD>
													<TD>${c.book_name }</TD>
													<TD>${c.category.category_name }</TD>
													<TD>${c.book_autor }</TD>
													<TD>${c.book_pubHouse }</TD>
													<TD>${c.book_price }</TD>
													<TD>${c.category.book_case }</TD>
													<TD>${c.book_num }</TD>
													<TD>${c.book_inDate }</TD>
													<TD>${c.admin.admin_name }</TD>
													<TD>${c.borrowNum }</TD>
													<TD>
													<a href="${pageContext.request.contextPath }/Book_initUpdateUI?book_id=${c.book_id }">修改</a>
													&nbsp;&nbsp;
													<a href="${pageContext.request.contextPath }/Book_delete?book_id=${c.book_id }" onclick="return window.confirm('你确定删除吗？')">删除</a>
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
