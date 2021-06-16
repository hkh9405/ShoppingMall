<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp=request.getContextPath();
	
	Calendar cal=Calendar.getInstance();
	
	int nowYear=cal.get(Calendar.YEAR);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 정보 확인/수정</title>
<link href="<%=cp%>/project3/login/img/icon.png" rel="shortcut icon" type="image/x-icon">


<link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" rel="stylesheet" type="text/css">
<link href="http://zooyork77.img7.kr/onedesign/mainrolling/nerveSlider.min.css" rel="stylesheet" type="text/css">
<link href="http://cdn.rawgit.com/young-ha/webfont-archive/20161201/css/Arita-dotum.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" type="text/css" href="http://cdn015.negagea.net/wherehouse/2018/webstore/feature/staffsnap/css/pgwslider.css">

<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/login/css/common.css" />
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/login/css/new_join.css" />

<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/unit_header.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/scroll.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/main.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/header.3.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/footer.1.css">

<script type="text/javascript" src="<%=cp%>/project3/login/js/util.js"></script>
<script type="text/javascript"> 
	function birth_selected() {	
		
		$("#birthyear").val("${birthyear}").prop("selected",true);
		$("#birthmonth").val("${birthmonth}").prop("selected",true);
		$("#birthdate").val("${birthdate}").prop("selected",true);
		
		if($("#man").val=="${dto.gender}"){
			$("#man").prop("checked",true);
		} else {
			$("#man").prop("checked",false);
		}
		
		if ($("#woman").val=="${dto.gender}") {
			$("#woman").prop("checked",true);
		} else {
			$("#woman").prop("checked",false);
		}
				
	}
	 
	function sendIt() {
		var f = document.form1;
		var i=f.pwd.value;
		var j=f.pwdcheck.value;
		
		str=f.name.value;
		str=str.trim();
		if(str==""){
			alert("이름을 입력해주세요.");
			f.name.focus();
			return;
		}
		
		if(!isValidKorean(str)){
			alert("\n이름을 정확히 입력하세요.");
			f.name.focus();
			return;
		}
		
		str=f.pwd.value;
		str=str.trim();
		if(str==""){
			alert("변경할 비밀번호를 입력해주세요");
			f.pwd.focus();
			return;
		}
		
		str=f.pwdcheck.value;
		str=str.trim();
		if(str==""){
			alert("비밀번호를 확인해주세요");
			f.pwdcheck.focus();
			return;
		}

		if(i!=j){
			alert("입력하신 비밀번호가 다릅니다");
			f.pwdcheck.focus();
			return;
		}
		
		if(str=="${dto.pwd}"){
			alert("기존의 비밀번호와 같습니다.");
			f.pwd.focus();
			return;
		}
		
		str=f.addr1.value;
		str=str.trim();
		if(str==""){
			alert("우편번호를 입력해주세요.");
			f.addr1.focus();
			return;
		}
		
		str=f.addr2.value;
		str=str.trim();
		if(str==""){
			alert("집주소를 입력해주세요.");
			f.addr2.focus();
			return;
		}
		
		str=f.addr3.value;
		str=str.trim();
		if(str==""){
			alert("상세주소를 입력해주세요.");
			f.addr3.focus();
			return;
		}
		
		str=f.tel.value;
		str=str.trim();
		if(str==""){
			alert("전화번호를 입력해주세요.");
			f.tel.focus();
			return;
		}
		
		str=f.email.value;
		str=str.trim();
		if(str==""){
			alert("이메일을 입력해주세요.");
			f.email.focus();
			return;
		}

		if(str=="${dto.email}"){
			alert("기존의 이메일과 같습니다.");
			f.email.focus();
			return;
		}
		
		if(f.email.value){
			if(!isValidEmail(f.email.value)){
				alert("정상적인 E-mail을 입력하세요.")
				f.email.focus();
				return;
			}
		}
		
		f.action="<%=cp%>/shop/userInfo_ok.do";
		f.submit();
	}	
</script>

<!-- 테두리 -->
<script language="JavaScript"> 
function bluring(){
if(event.srcElement.tagName=="A"||event.srcElement.tagName=="IMG") document.body.focus();
}
document.onfocusin=bluring;
</script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>

<body onload="birth_selected();">

	<div id="wrap">
	<div id="header_top">
		<div id="header">
			<div id="logo">
			<a href="<%=cp%>/shop/main.do">
				<img alt="" src="<%=cp %>/project3/design/zooyork77/image/logo2.png" border="0">
			</a>
			</div>
			<!-- 로고끝 -->
			
			<!-- 로고밑 상단라인 -->
		
			<div id="cateline">
				<div id="cate">
				
				<!-- 검색FORM!!!! -->
				<form action="<%=cp%>/shop/search_ok.do" name="searchForm" method="post">
					<ul>
						<li class="catein">
							<a href="<%=cp%>/shop/shopbrand.do">ESPIONAGE</a>
							<!-- COMMUNITY 중분류 시작 -->
							<div class="catebox" style="display: none;">
								<div style="width:15%!important;">
									<!--<h2>ALL SEASON</h2> -->
									<a href="<%=cp%>/shop/shopbrand.do">ALL ITEM</a>
									<!-- <a href="/shop/shopbrand.html?xcode=003&amp;type=Y">2021 SS</a> -->
									<a href="<%=cp%>/shop/shopbrand.do?searchKey=pKIND&searchValue=4">OUTER</a>
									<!-- <a href="/shop/shopbrand.html?xcode=061&amp;mcode=002&amp;type=Y">KNIT</a>
									<a href="/shop/shopbrand.html?xcode=061&amp;mcode=003&amp;type=Y">SWEAT</a> -->
									<a href="<%=cp%>/shop/shopbrand.do?searchKey=pKIND&searchValue=3">SHIRT</a>
									<!-- <a href="/shop/shopbrand.html?xcode=061&amp;mcode=005&amp;type=Y">T-SHIRT</a> -->
									<a href="<%=cp%>/shop/shopbrand.do?searchKey=pKIND&searchValue=1">PANTS</a>
									<a href="<%=cp%>/shop/shopbrand.do?searchKey=pKIND&searchValue=2">HEADWEAR</a>
									<a href="<%=cp%>/shop/shopbrand.do?searchKey=pKIND&searchValue=5">BAG</a>
									<a href="<%=cp%>/shop/shopbrand.do?searchKey=pKIND&searchValue=6">ACC</a>
								</div>
							</div>
						</li>
						
						<li>
							<a href="<%=cp%>/shop/main.do">FEATURES</a>
						</li>
						<li> 
							<a href="<%=cp%>/shop/main.do">STYLING</a>
						</li>
						<li> 
							<a href="<%=cp%>/shop/main.do">NEWS&nbsp;&nbsp;&nbsp;</a>
						</li>
						<!-- <li> 
							<a href="/shop/page.html?id=3">STORE</a>
						</li> -->
						
						
						<li>
							SEARCH <input type="text" name="searchValue" style="width: 100px; height: 10px; border: 1px solid;" onclick="sendItt();">
						</li>
						
					</ul>
					
				</form>
				</div><!-- cate끝 -->
				<script>
					(function($) {
						$(function(){
						
							$('.catein').hover(function(){
								$(this).find('> .catebox').fadeIn('fast');
							}, function(){
								$(this).find('> .catebox').fadeOut('fast');
							});
			
						});
					})(jQuery);
				</script>
			</div><!-- cate line끝 -->
			<div id="logmenu">
		  		<ul>
		  			<li>
					</li>
		  		
		  		<c:choose>
		  		<c:when test="${empty sessionScope.customInfo.id }">
					<li><a href="<%=cp%>/shop/login.do">LOG IN/JOIN</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="<%=cp%>/shop/userInfo.do">INFO</a></li>
					<li><a href="<%=cp%>/shop/logout.do">LOGOUT</a></li>
				</c:otherwise>
				</c:choose>
				
				    <li><a href="<%=cp%>/shop/basket.do">CART</a></li>
				
				<c:choose>
				<c:when test="${empty sessionScope.customInfo.id }">
				    <li><a href="<%=cp%>/shop/login.do">MYSHOPPING</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="<%=cp%>/shop/mypage.do">MYPAGE</a></li>
				</c:otherwise>
				</c:choose>
					<li><a href="<%=cp%>/shop/qna.do">Q&amp;A</a></li>
				    <li><a href="<%=cp%>/shop/faq.do">FAQ</a></li>
				    <li><a href="http://www.espionage.co.kr/board/board.html?code=zooyork77_board8">INTERNATIONAL</a></li>
				   
				</ul>
			</div><!-- logmenu 끝 -->
		</div><!-- header끝 -->
	</div><!-- headertop끝 -->
</div><!-- 상단 끝!! -->


	<!-- 회원정보 시작 -->
	<div id="contentWrap">
		<div id="left_menu"></div>
		<!--left_menu -->

		<div id="content">
			<div id="join">

				<div class="title_etc">
					<h2>JOIN US</h2>
				</div>

				<form name="form1" method="post" id="join_form" action="">
					
					<div id="personInfo">
						<table class="person-tb">
							<colgroup>
								<col width="135">
								<col width="*">
							</colgroup>
							<tbody>
								<!-- 이름 -->
								<tr>
									<th class="first">
										<div class="tb-l pl-30">
											이름 <span class="red">*</span>
										</div>
									</th>
									<td class="first">
										<div class="tb-l pl-6">
											<input type="text" name="name" id="hname" value="${dto.name }"
												class="MS_input_txt w137" size="15" maxlength="30">
										</div>
									</td>
								</tr>
								<!-- 아이디 -->
								<tr>
									<th>
										<div class="tb-l pl-30">
											아이디 <span class="red">*</span>
										</div>
									</th>
									<td>
										<div class="tb-l pl-6">
											${dto.id } <input type="hidden" name="id" id="id"
												value="${dto.id }">
										</div>
									</td>
								</tr>
								<!-- 비밀번호 -->
								<tr>
									<th>
										<div class="tb-l pl-30">
											비밀번호 <span class="red">*</span>
										</div>
									</th>
									<td>
										<div class="tb-l pl-6">
											<input type="password" name="pwd" id="password1"
												class="MS_input_txt w137" value="" size="15" maxlength="20"
												onkeyup="check_pwd_length(this, 'password');"> <span
												class="idpw-info"> * 영문 대소문자/숫자/특수문자를 혼용하여 6~16자 </span>
										</div>
									</td>
								</tr>
								<!-- 비밀번호 확인 -->
								<tr>
									<th>
										<div class="tb-l pl-30">
											비밀번호 확인 <span class="red">*</span>
										</div>
									</th>
									<td>
										<div class="tb-l pl-6">
											<input type="password" name="pwdcheck" id="password2"
												class="MS_input_txt w137" value="" size="15" maxlength="20">
										</div>
									</td>
								</tr>
								<!-- 생일/성별 -->
								<tr>
									<th>
										<div class="tb-l pl-30">
											생일/성별 <span class="red">*</span>
										</div>
									</th>
									<td>
										<div class="tb-l pl-6">
											<select name="birthyear" id="birthyear" class="MS_select MS_birthday">
												<%for(int i=nowYear;i>=1920;i--){ %>
												<%out.print("<option value=\""+i+"\">"+i+"</option>"); %>
												<%} %>
											</select>&nbsp;&nbsp;년&nbsp;&nbsp;
											<select name="birthmonth" id="birthmonth" class="MS_select MS_birthday">
												<c:forEach var="i" begin="1" end="12" step="1">
													<c:if test="${i<10 }"><option value="0${i }">${i }</option></c:if>
													<c:if test="${i>=10 }"><option value="${i }">${i }</option></c:if>
												</c:forEach>
											</select>&nbsp;&nbsp;월&nbsp;&nbsp;
											<select name="birthdate" id="birthdate" class="MS_select MS_birthday">
												<c:forEach var="i" begin="1" end="31" step="1">
													<c:if test="${i<10 }"><option value="0${i }">${i }</option></c:if>
													<c:if test="${i>=10 }"><option value="${i }">${i }</option></c:if>
												</c:forEach>
											</select>&nbsp;&nbsp;일&nbsp;&nbsp;
											<input type="radio" name="man" value="1" class="MS_radio" id="man">남 
											<input type="radio" name="woman" value="2" class="MS_radio" id="woman">여
										</div>
									</td>
								</tr>
								<!-- 우편번호 -->
								<tr>
									<th>
										<div class="tb-l pl-30">
											우편번호 <span class="red">*</span>
										</div>
									</th>
									<td>
										<div class="tb-l pl-6">
											<input type="text" name="addr1" form="join_form" id="hpost"
												class="MS_input_txt" value="${dto.addr1 }" size="7" maxlength="15"
												readonly="readonly"> <span><a style="font-size: 0;"
												href="javascript:post(1);"><img alt="우편번호검색"
													src="<%=cp %>/project3/login/img/sub_btn_13.gif"></a></span>
										</div>
									</td>
								</tr>
								<!-- 주소 -->
								<tr>
									<th>
										<div class="tb-l pl-30">
											집주소 <span class="red">*</span>
										</div>
									</th>
									<td>
										<div class="tb-l pl-6">
											<input type="text" name="addr2" form="join_form"
												id="haddress1" class="MS_input_txt w415" value="${dto.addr2 }" size="40"
												maxlength="100" readonly="readonly">
										</div>
									</td>
								</tr>
								<tr>
									<th>
										<div class="tb-l pl-30">
											상세주소 <span class="red">*</span>
										</div>
									</th>
									<td>
										<div class="tb-l pl-6">
											<input type="text" name="addr3" form="join_form"
												id="haddress2" class="MS_input_txt w415" value="${dto.addr3 }" size="40"
												maxlength="100">
										</div>
									</td>
								</tr>
								<!-- 연락처 -->
								<tr>
									<th>
										<div class="tb-l pl-30">
											연락처 <span class="red">*</span>
										</div>
									</th>
									<td>
										<div class="tb-l pl-6">
											<input type="text" name="tel" id="hphone"
												class="MS_input_txt w137" size="15" maxlength="30" value="${dto.tel }">
										</div>
									</td>
								</tr>
								<!-- 이메일 -->
								<tr>
									<th>
										<div class="tb-l pl-30">
											이메일<span class="red">*</span>
										</div>
									</th>
									<td>
										<div class="tb-l pl-6">
											 <input type="text" name="email" id="email" class="MS_input_txt MS_input_txt06" size="20" maxlength="35"
												value="${dto.email }" onchange="this.form.emailcheck.value=''"> 
											<span>
												<a style="font-size: 0;" href="javascript:emailchk();">
													<img alt="중복확인" src="<%=cp %>/project3/login/img/sub_btn_12.gif">
												</a>
											</span>
										</div>
									</td>
								</tr>
								<!-- 환불계좌 -->
								<tr>
									<th>
										<div class="tb-l pl-30">환불계좌</div>
									</th>
									<td>
										<div class="col-cell" style="padding-left: 7px">
											<select name="bank" form="join_form" id="refund_bank" >
												<option value="">은행 선택</option>
												<option value="BA0001">케이뱅크</option>
												<option value="BA0002">카카오뱅크</option>
												<option value="BA0003">경남은행</option>
												<option value="BA0004">광주은행</option>
												<option value="BA0005">국민은행</option>
												<option value="BA0006">기업은행</option>
												<option value="BA0007">농협</option>
												<option value="BA0008">대구은행</option>
												<option value="BA0009">부산은행</option>
												<option value="BA0010">새마을금고</option>
												<option value="BA0011">수협</option>
												<option value="BA0012">신한은행</option>
												<option value="BA0013">신협</option>
												<option value="BA0014">우리은행</option>
												<option value="BA0015">우체국</option>
												<option value="BA0016">제주은행</option>
												<option value="BA0017">KEB하나은행</option>
												<option value="BA0018">한국씨티은행(구 한미)</option>
												<option value="BA0019">HSBC</option>
												<option value="BA0020">SC제일은행</option>
												<option value="BA0021">산업은행</option>
												<option value="BA0022">전북은행</option>
												<option value="BA0023">축협중앙회</option>
												<option value="BA0024">단위농협</option>
												<option value="BA0025">상업은행</option>
												<option value="BA0026">한일은행</option>
												<option value="BA0027">서울은행</option>
												<option value="BA0028">강원은행</option>
												<option value="BA0029">상호저축은행</option>
												<option value="BA0030">산림조합</option>
												<option value="BA0031">구)조흥은행</option>

											</select> 
											<input type="text" name="account" id="refund_account"
												value="${dto.account }" class="MS_input_txt MS_refund_account" size="20"
												maxlength="20"> <input type="hidden" name="account_auth" value="">
										</div>
									</td>
								</tr>
								<tr>
									<th>
										<div class="tb-l pl-30">뉴스메일</div>
									</th>
									<td>
										<div class="tb-l pl-6">
											<label style="margin-right: 20px;"> <input
												type="radio" name="emailreceive" value="Y" checked="">
												받습니다.
											</label> <label> <input type="radio" name="emailreceive"
												value="N"> 받지 않습니다.
											</label>
										</div>
									</td>
								</tr>
								<tr>
									<th>
										<div class="tb-l pl-30">SMS안내</div>
									</th>
									<td>
										<div class="tb-l pl-6">
											<label style="margin-right: 20px;"> <input
												type="radio" name="smsreceive" form="join_form" value="Y"
												checked=""> 받습니다.
											</label> <label> <input type="radio" name="smsreceive"
												form="join_form" value="N"> 받지 않습니다.
											</label>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- #personInfo -->

					<div class="btn-area">
						<a href="javascript:sendIt();">
							<img alt="확인" src="<%=cp %>/project3/login/img/sub_btn_59.gif"></a>
						<a href="<%=cp %>/shop/withdrwal.do">
							<img alt="탈퇴" src="<%=cp %>/project3/login/img/sub_btn_57.gif"></a>
					</div>
				</form>
			</div>
			<!-- #join -->
		</div>
		<!-- #content -->
	</div>
	
	<!-- 하단 -->
	<script>
		function pop() {
			window.open("/shop/page.html?id=6", "",
					"width=644,height=573,scrollbars=no");
		}
	</script>
	<script type="text/javascript">
		/* <![CDATA[ */
		var google_conversion_id = 984775192;
		var google_custom_params = window.google_tag_params;
		var google_remarketing_only = true;
		/* ]]> */
	</script>
	<noscript>
		<div style="display: inline;">
			<img height="1" width="1" style="border-style: none;" alt=""
				src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/984775192/?value=0&guid=ON&script=0" />
		</div>
	</noscript>

	<div id="footer_wrap">
		<div id="footer">

			<div class="foot_left">
				<p>
					<font style="font-weight: bold;">CUSTOM SERVICE</font><br> <font
						style="color: #fff600; font-size: 14px;">02-544-1793</font>
					MON-FRI 11:00-18:00 ( Break 12:30-13:30 ) <a
						href="https://pf.kakao.com/_qnWTM" target="_blank"><font
						style="color: #fff600; font-size: 14px;"> <i
							class="xi-kakaotalk  xi-2x"></i> 카카오톡으로 문의하기
					</font></a>
				</p>
				<p>
					(주)웨얼하우스 / owner 최태훈 / tel 02-544-1793 / ad 서울시 강남구 선릉로 161길 21-4
					201호 웨얼하우스<br> business license 273-88-00135 / mail-order
					license 제2015-서울강남-02064호 / privacy officer 신동인<br> <a
						href="javascript:bottom_privacy();" style="color: #808080">개인정보처리방침</a><br>
				</p>
				<p>COPYRIGHT 2018 WHEREHOUSE ltd., Co.</p>
			</div>
			<!-- .foot_left -->




			<!-- 고객센터-->
			<div class="foot_cs">
				<div class="guide">
					<ul>
						<li><a href="#">ABOUT US</a></li>
						<li><a href="javascript:view_join_terms();">TERMS &amp;
								CONDITIONS</a></li>
						<li><a href="javascript:bottom_privacy();">PRIVACY POLICY</a></li>
						<li><a
							href="http://www.ftc.go.kr/info/bizinfo/communicationList.jsp">BUSINESS
								LICENSE</a></li>
						<li><a href="/board/board.html?code=zooyork77_board8">INTERNATIONAL
								ORDER</a></li>
					</ul>
				</div>
			</div>
			<!-- .foot_cs -->
			<!-- 고객센터// -->
			<!-- 가이드 -->
			<div class="foot_right">
				<img src="<%=cp %>/project3/design/zooyork77/image/bottom_logo.jpg">
			</div>
			<!-- .foot_right -->
			<!-- 가이드// -->

		</div>
		<!-- #footer -->
	</div>

</body>
</html>