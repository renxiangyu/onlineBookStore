<html>
<%@ page import="java.util.*,mypack.*" contentType="text/html; charset=GBK" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body>
<A HREF="bookstore.jsp">������ҳ</A></p>
<br>
��ѡ����Ҫ�����ͼ��
</br>
<table width="60%" align="center" cellpadding="0" cellspacing="0" border="1">
	<tr>
		<td>���</td>
		<td>����</td>
		<td>����</td>
		<td>���빺�ﳵ</td>
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
			out.println("<td><a href='doadd.jsp?book=" + user + "'>ɾ��</a></td>");
			out.println("<tr>");	
	        }
%>
</table>
</body>
</html>