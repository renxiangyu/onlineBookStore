<html>
<%@ page import="java.util.*,mypack.*" contentType="text/html; charset=GBK" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body>
<A HREF="bookstore.jsp">Back</A></p>
<br>
The book you want to buy
</br>
<table width="60%" align="center" cellpadding="0" cellspacing="0" border="1">
	<tr>
		<td>No</td>
		<td>Name</td>
		<td>Author</td>
		<td>Add to cart</td>
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
			out.println("<td><a href='doadd.jsp?book=" + user + "'>Delete</a></td>");
			out.println("<tr>");	
	        }
%>
</table>
</body>
</html>
