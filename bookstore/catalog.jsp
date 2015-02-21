<html>
<%@ page import="java.util.*,mypack.*" contentType="text/html; charset=GBK" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body>
<A HREF="bookstore.jsp">返回主页</A></p>
<br>
请选择您要购买的图书
</br>
<table width="60%" align="center" cellpadding="0" cellspacing="0" border="1">
	<tr>
		<td>书号</td>
		<td>书名</td>
		<td>作者</td>
		<td>加入购物车</td>
	</tr>
<jsp:useBean id="book" class="mypack.BookDB" scope="session">
</jsp:useBean>
<%
		Collection books = book.getBooks();
		Iterator iterator = books.iterator();
		while (iterator.hasNext()) 
		{
		        BookDetails user = (BookDetails) iterator.next();
			out.println("<tr bordercolor=#990066>");
			out.println("<td>" + user.getBookId()+ "</td>");
			out.println("<td>" + user.getName() + "</td>");
        		out.println("<td>" + user.getAuthor() + "</td>");
			out.println("<td><a href='doadd.jsp?book=" + user + "'>删除</a></td>");
			out.println("<tr>");	
	        }
%>
</table>
</body>
</html>