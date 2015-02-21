<%@ page contentType="text/html; charset=GBK" %>
<script language="JavaScript">
function SubmitCheck(){
  var f=document.theForm;
 if(f.bookid.value=="")
  {
    alert("Please enter the number of the book!");
    theForm.bookid.focus();
    return false;
  }
}
</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<FORM language="JavaScript" name="theForm" METHOD="post" ACTION="bookdetails.jsp" onsubmit="return SubmitCheck()">
<TBODY>
    <tr>
       <A HREF="catalog.jsp">Search all items</A>
    </tr>
    <tr>
       <p> No. 
          <input type="text" name="bookid"  size="19" maxlength="20" value="">
          </p>
    </tr>
    <tr>
         <input type=submit value="Submit" name=B3>
  </FORM>
</TABLE>
<br>
</body>
</html>