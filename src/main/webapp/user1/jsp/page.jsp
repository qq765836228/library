<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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