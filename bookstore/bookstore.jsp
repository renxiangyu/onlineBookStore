<%@ page contentType="text/html; charset=GBK" %>
<script language="JavaScript">
function SubmitCheck(){
  var f=document.theForm;
 if(f.bookid.value=="")
  {
    alert("请输入书的编号！");
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
       <A HREF="catalog.jsp">查询所有书目</A>
    </tr>
    <tr>
       <p> 书的编号 
          <input type="text" name="bookid"  size="19" maxlength="20" value="">
          </p>
    </tr>
    <tr>
         <input type=submit value="提 交" name=B3>
  </FORM>
</TABLE>
<br>
</body>
</html>