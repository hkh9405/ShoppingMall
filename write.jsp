<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ImageWrite</title>
<link href="<%=cp%>/project3/login/img/icon.png" rel="shortcut icon" type="image/x-icon">


<style type="text/css">
* {
	padding: 0px;
	margin: 0px
}

body{

	font-size: 9pt;
}

td{

	font-size: 9pt;
}

.txtField{

	font-size: 9pt;
	border: 1px solid;
}

.btn{
	
	font-size: 9pt;
	background: #e6e6e6;
}
</style>
<script type="text/javascript">
	
	function sendIt() {
		
		var f = document.myForm;
		
		f.action = "<%=cp%>/shop/write_ok.do";
		
	}



</script>
</head>
<body>







<center>

<br/><br/>

<table width="500" cellpadding="0" cellspacing="3" align="center" bgcolor="#e4e4e4">
	<tr height="50">
		<td bgcolor="#ffffff" style="padding-left: 10px;">
			<b>shop 이미지 넣기</b>
		</td>
	</tr>
</table>
<br/>
<form action="<%=cp%>/shop/write_ok.do"  name="myForm" method="post" enctype="multipart/form-data">
<table width="500" cellpadding="0" cellspacing="0" align="center">
	
	
	<tr height="1">
		<td colspan="2" bgcolor="#cccccc"></td>
	</tr>
	<tr height="30">
		<td align="center" width="100" bgcolor="e6e6e6">타&nbsp;&nbsp;&nbsp;입</td>
		<td style="padding-left: 5px;">
			<input type="text" name="pKIND"/>
		</td>
	</tr>
	<tr height="1">
		<td colspan="2" bgcolor="#cccccc"></td>
	</tr>
	<tr height="30">
		<td align="center" width="100" bgcolor="e6e6e6">이&nbsp;미&nbsp;지</td>
		<td style="padding-left: 5px;">
			<input type="file" name="upload1"/>
		</td>
		</tr>
		
		<tr height="1">
		<td colspan="2" bgcolor="#cccccc"></td>
	</tr>
	<tr height="30">
		<td align="center" width="100" bgcolor="e6e6e6">타입</td>
		<td style="padding-left: 5px;">
			<input type="file" name="upload2"/>
		</td>
		</tr>
		
		<tr height="1">
		<td colspan="2" bgcolor="#cccccc"></td>
	</tr>
	<tr height="30">
		<td align="center" width="100" bgcolor="e6e6e6">info</td>
		<td style="padding-left: 5px;">
			<input type="file" name="upload3"/>
		</td>
		</tr>
		
		<tr height="1">
		<td colspan="2" bgcolor="#cccccc"></td>
	</tr>
	<tr height="30">
		<td align="center" width="100" bgcolor="e6e6e6">official</td>
		<td style="padding-left: 5px;">
			<input type="file" name="upload4"/>
		</td>
		</tr>
		
		<tr height="1">
		<td colspan="2" bgcolor="#cccccc"></td>
	</tr>
	<tr height="30">
		<td align="center" width="100" bgcolor="e6e6e6">npay</td>
		<td style="padding-left: 5px;">
			<input type="file" name="upload5"/>
		</td>
		</tr>
	

	<tr height="1">
		<td colspan="2" bgcolor="#cccccc"></td>
	</tr>
	<tr height="30">
		<td align="center" width="100" bgcolor="e6e6e6">image</td>
		<td style="padding-left: 5px;">
			<input type="file" name="upload6"/>
		</td>
		</tr>
		
		<tr height="1">
		<td colspan="2" bgcolor="#cccccc"></td>
	</tr>
	<tr height="30">
		<td align="center" width="100" bgcolor="e6e6e6">desc</td>
		<td style="padding-left: 5px;">
			<input type="file" name="upload7"/>
		</td>
		</tr>
		
		<tr height="1">
		<td colspan="2" bgcolor="#cccccc"></td>
	</tr>
	<tr height="30">
		<td align="center" width="100" bgcolor="e6e6e6">price</td>
		<td style="padding-left: 5px;">
			<input type="text" name="pPRICE"/>
		</td>
		</tr>
		
	
	<tr height="2">
		<td colspan="2" bgcolor="#cccccc"></td></tr>
	<tr height="35">
		<td align="center" colspan="2">
			<input type="submit" value="등록하기"/>
			<input type="reset" value="다시입력"  onclick="document.myForm.pKIND.focus();"/>	
			<!--  버튼을 누르면 링크로 가는 코딩(외워~~~~~~~~~~~~~~~~ -->	
			<input type="button" value="작성취소"  onclick="javascript:location.href='<%=cp%>/shop/shopbrand.do';"/>	

</table>
</form>



</center>
</body>
</html>








</body>
</html>