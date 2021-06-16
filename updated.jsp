<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Q&A</title>
<link href="<%=cp%>/project3/login/img/icon.png" rel="shortcut icon" type="image/x-icon">


<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/css/common.css"/>
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/css/faqStyle.css"/>

<link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css' rel='stylesheet' type='text/css' />
<link href='http://zooyork77.img7.kr/onedesign/mainrolling/nerveSlider.min.css' rel='stylesheet' type='text/css' />
<link href='http://cdn.rawgit.com/young-ha/webfont-archive/20161201/css/Arita-dotum.css' rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" type="text/css" href="http://cdn015.negagea.net/wherehouse/2018/webstore/feature/staffsnap/css/pgwslider.css" />


<script type="text/javascript">

	function sendIt() {
	
		var f = document.myForm;
		
 		str = f.qpwd.value;
		str = str.trim();
		if(!str) {
			alert("\n패스워드를 입력하세요.");
			f.qpwd.focus();
			return;
		}
		
		f.qpwd.value = str;
		
		str = f.qsubject.value;
		str = str.trim();
		if(!str) {
			alert("\n제목을 입력하세요.");
			f.qsubject.focus();
			return;
		}
		
		f.qsubject.value = str;
		
		str = f.qcontent.value;
		str = str.trim();
		if(!str) {
			alert("\n내용을 입력하세요.");
			f.qcontent.focus();
			return;
		}
		
		f.qcontent.value = str;

		searchKey = "${searchKey}";
		searchValue = "${searchValue}";
		
		pageNum = "${pageNum}"; 
		
		
		if(searchValue!=null) {
			f.action = "<%=cp%>/shop/updated_ok.do?pageNum="+pageNum;
			
		}else{
			f.action = "<%=cp%>/shop/updated_ok.do?pageNum="+pageNum+"&searchKey="+searchKey+"&searchValue="+searchValue;
			
		}

		f.submit();
		
	}

</script>

</head>
<body>


<div id="contentWrapper">
	<div id="contentWrap">
		<div id="left_menu"></div>
		<div id="content">
			<div class="title_board" style="margin-bottom:0px;">
				<h2>Q&A</h2>
			</div>
			
			<div id="bbsData">
			<form name='myForm' action="" method='post' style="position:relative;" enctype="multipart/form-data">
				<div class="page-body">

						<div id='passimg' style=' position:absolute; visibility:hidden;z-index:999; '>
						</div>
						
						<div class="bbs-table-write">
							<fieldset>
								<legend>일반게시판 쓰기</legend>
									<table>
										<caption>게시판 글쓰기</caption>
											<colgroup>
												<col width="95" />
			                                    <col width="190" />
			                                    <col width="90" />
			                                    <col />
											</colgroup>
											<tbody>
												<tr>
													<th class=""><div class="title">Name</div></th>
														<td>
															<div><input id='bw_input_writer' type='text' name='qname' 
                            							class="MS_input_txt input_style" readonly='readonly' value='${sessionScope.customInfo.name }'/> 
                            								</div>
                            							</td>
                            						<th><div class="title">Password</div></th>
                            							<td>
                            								<div>
                            									<input id='bw_input_passwd' type='password' value="${dto.qpwd }" name='qpwd'  class="MS_input_txt input_style"/>
                                                    			<font color="red">자동 잠금 기능</font><!-- 자동잠금되는지 확인하기 -->
                            								</div>						
                            							</td>
												</tr>
												<tr>
													<th><div class="title">Title</div></th>
														<td colspan="3">
															<div class="title">
																<input type="text" class="MS_input_txt input_style2" value="${dto.qsubject }" name="qsubject" size="76" maxlength="50">
																<span style=" clear:boht; float:right; width:120px;"></span>
															</div>
														</td>
												</tr>
												<tr>
													<th><div class="title">Content</div></th>
													<td colspan="3">
														<div>
															<textarea id='MS_text_content' name='qcontent' style='font-family:굴림체; width: 1100px; height: 200px;'>${dto.qcontent }</textarea> <!-- 크기를,, -->
														</div>
													</td>
												</tr>
												<tr>
													<th><div class="title">File</div></th>
														<td colspan="3">
															<div>
																<input type="file" id='bw_input_file' name="upload" size="58" maxlength="50" 
																class="MS_input_txt input_style2"/>
															</div>
														</td>
												</tr>
											</tbody>
									</table>
							</fieldset>
						</div>
						
						<div>
						<dl class="bbs-link" style="float: right; padding-top: 20px">
							<dt></dt>
							<dd>
								
								<input type="hidden" name="qnum" value="${dto.qnum}"/>
								<input type="hidden" name="pageNum" value="${pageNum }"/>
								
								<input type="hidden" name="searchKey" value="${searchKey }"/>
								<input type="hidden" name="searchValue" value="${searchValue }"/>
								
								<a href="javascript:sendIt();"><img src="<%=cp %>/project3/image/sub_btn_01.gif"/></a> <!-- 수정하기 -->
								<a href="<%=cp %>/shop/qna.do"><img src="<%=cp %>/project3/image/sub_btn_02.gif"/></a><!-- 목록 -->
							</dd>
						</dl>
						</div>
				</div>
				</form>	
			</div>
		</div>
	</div>
</div>


</body>
</html>