<%@page import="java.util.Random"%>
<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp=request.getContextPath();
	
	Calendar cal=Calendar.getInstance();
	
	int nowYear=cal.get(Calendar.YEAR);
	
	Random rd=new Random();
	
	String num="";
	
	int[] no=new int[6];
	
	for(int i=0;i<6;i++){
		no[i]=rd.nextInt(10);
		num+=no[i];
	}	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>간편 회원가입</title>
<link href="<%=cp%>/project3/login/img/icon.png" rel="shortcut icon" type="image/x-icon">


<link type="text/css" rel="stylesheet" href="/shopimages/zooyork77/template/work/37329/common.css?r=1616560623" />
<link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css' rel='stylesheet' type='text/css' />
<link href='http://zooyork77.img7.kr/onedesign/mainrolling/nerveSlider.min.css' rel='stylesheet' type='text/css' />
<link href='http://cdn.rawgit.com/young-ha/webfont-archive/20161201/css/Arita-dotum.css' rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" type="text/css" href="http://cdn015.negagea.net/wherehouse/2018/webstore/feature/staffsnap/css/pgwslider.css" />

<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/login/css/common.css" />
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/login/css/join_simple.css" />

<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/unit_header.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/scroll.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/main.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/header.3.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/footer.1.css">

<!-- 테두리 -->
<script language="JavaScript"> 
function bluring(){
if(event.srcElement.tagName=="A"||event.srcElement.tagName=="IMG") document.body.focus();
}
document.onfocusin=bluring;
</script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script type="text/javascript" src="<%=cp%>/project3/login/js/util.js"></script>
<script type="text/javascript">
	 function sendIt() {
		var f = document.form1;
		var i=f.pwd.value;
		var j=f.pwdcheck.value;
		
		str=f.name.value;
		str=str.trim();
		if(str=="이름"){
			alert("이름은 필수 정보입니다");
			f.name.focus();
			return;
		}
		
		if(!isValidKorean(str)){
			alert("\n이름을 정확히 입력하세요.");
			f.name.focus();
			return;
		}
		
		str=f.id.value;
		str=str.trim();
		if(str=="아이디"){
			alert("아이디는 필수 정보입니다");
			f.id.focus();
			return;
		}
		
		str=f.pwd.value;
		str=str.trim();
		if(str=="비밀번호"){
			alert("비밀번호는 필수 정보입니다");
			f.pwd.focus();
			return;
		}
		
		str=f.pwdcheck.value;
		str=str.trim();
		if(str=="비밀번호 확인"){
			alert("비밀번호를 확인해주세요");
			f.pwdcheck.focus();
			return;
		}

		if(i!=j){
			alert("입력하신 비밀번호가 다릅니다");
			f.pwdcheck.focus();
			return;
		}
		
		str=f.email.value;
		str=str.trim();
		if(str=="이메일"){
			alert("이메일은 필수 정보입니다");
			f.email.focus();
			return;
		}
		
		if(f.email.value){
			if(!isValidEmail(f.email.value)){
				alert("\n정상적인 E-mail을 입력하세요.")
				f.email.focus();
				return;
			}
		}
	
		if(!f.birthyear.value){
			alert("태어난 년도를 선택하세요.");
			f.year.focus();
			return;
		}
		
		if(!f.birthmonth.value){
			alert("태어난 달을 선택하세요.");
			f.month.focus();
			return;
		}
		
		if(!f.birthdate.value){
			alert("태어난 날을 선택하세요");
			f.day.focus();
			return;
		}
		
		str=f.SMS.value;
		str=str.trim();
		if(str=="SMS 인증번호"){
			alert("인증번호는 필수 정보입니다");
			f.SMS.focus();
			return;
		} else if(f.SMS.value!=<%=num%>){
			alert("인증번호가 틀립니다. 다시 입력해주세요");
			f.tel3.focus();
			return;
		}
		
		if($("input:checkbox[name=user_age_check]").is(":checked") == false){
			alert("14세 이상 회원가입이 가능합니다.");
			return;
		}

		if($("input:checkbox[name=yaok2]").is(":checked") == false){
			alert("필수 약관을 읽어보시고 동의하셔야 됩니다.");
			return;
		}

		if($("input:checkbox[name=privacy1]").is(":checked") == false){
			alert("필수 약관을 읽어보시고 동의하셔야 됩니다.");
			return;
		}
		
		if($("input:checkbox[name=privacy3]").is(":checked") == false){
			alert("필수 약관을 읽어보시고 동의하셔야 됩니다.");
			return;
		}
		
		
		f.action="<%=cp %>/shop/membership_ok.do";
		f.submit();
	}
	
</script>

</head>

<body>

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

	<script type="text/javascript">
		function pwd_blur() {
			f=document.form1.pwd;
			
			if(f.value==""){
				f.value="비밀번호";
			}
			
			if(f.value!="비밀번호"){
				f.type="password";
			} else {
				f.type="text";
			}
						
		}
		
		function pwd_click() {
			f=document.form1.pwd;
			
			if(f.value=="비밀번호"){
				f.value="";
			}
			
			f.type="password";
						
		}
		
		function pwdcheck_blur() {
			f=document.form1.pwdcheck;
			
			if(f.value==""){
				f.value="비밀번호 확인";
			}
			
			if(f.value!="비밀번호 확인"){
				f.type="password";
			} else {
				f.type="text";
			}
						
		}
		
		function pwdcheck_click() {
			f=document.form1.pwdcheck;
			
			if(f.value=="비밀번호 확인"){
				f.value="";
			}
			
			f.type="password";				
		}
		
		function SMS() {
			f=document.form1;
			
			str=f.tel.value;
			str=str.trim();
			if(str=="휴대폰 번호"){
				alert("휴대폰 번호를 입력해주세요");
				f.tel.focus();
				return;
			} else {
				alert("[Web발신]\n[에스피오나지] 인증번호[<%=num%>]를 입력해주세요");
			}
		}
		
		function SMScheck() {
			f=document.form1;
			
			str=f.SMS.value;
			str=str.trim();
			if(f.SMS.value!=<%=num%>){
				alert("인증번호가 틀립니다. 다시 입력해주세요");
				f.SMS.focus();
				return;
			} else {
				alert("인증되었습니다");
			}
		}
	
	</script>
	
	<div id="contentWrap">
	<div id="content">
		<div id="join_test">
			<dl class="loc-navi">
				<dt class="blind">현재 위치</dt>
				<dd>
					<a href="/">home</a> &gt; 회원정보 입력
				</dd>
			</dl>
			<h2>회원정보 입력</h2>
			<div class="page-body">
				<form name="form1" method="post" id="join_form" action="">
					<div class="box-wrap">
						<ul class="join-form">
							<li><input type="text" name="name" value="이름" style="border: 0; font-size: 15px; font-family: 'Open Sans' sans-serif;
							font-weight: bold;" size="50" maxlength="30" onfocus="if(this.value=='이름') this.value='';" 
							onblur="if(this.value=='') this.value='이름';"/></li>
							<li><input type="text" name="id" value="아이디" style="border: 0; font-size: 15px; font-family: 'Open Sans' sans-serif;
							font-weight: bold;" size="50" maxlength="15" onfocus="if(this.value=='아이디') this.value='';" 
							onblur="if(this.value=='') this.value='아이디';"></li>
							<li>		
								<input name="pwd" value="비밀번호" type="text" style="border: 0; font-size: 15px;
								font-family: 'Open Sans' sans-serif; font-weight: bold;" size="50" maxlength="20"
								onfocus="pwd_click();" onblur="pwd_blur();">
							</li>
							<li>
								<input name="pwdcheck" value="비밀번호 확인" type="text" style="border: 0; font-size: 15px; 
								font-family: 'Open Sans' sans-serif; font-weight: bold;" size="50" maxlength="20" 
								onfocus="pwdcheck_click();" onblur="pwdcheck_blur();">
							</li>
							<li><input type="text" name="email" value="이메일" style="border: 0; font-size: 15px; 
							font-family: 'Open Sans' sans-serif; font-weight: bold;" size="50" maxlength="35" 
							onfocus="if(this.value=='이메일') this.value='';" onblur="if(this.value=='') this.value='이메일';"></li>
							<li class="birth">
								<dl>
									<dd>
										<select name="birthyear" style="width: 70px; height: 25px">
											<option value="">생년</option>
											<%for(int i=nowYear;i>=1920;i--){ %>
											<%out.print("<option value=\""+i+"\">"+i+"</option>"); %>
											<%} %>
										</select>&nbsp;&nbsp;년
									</dd>
									<dd>
										<select name="birthmonth" style="width: 50px; height: 25px;">
											<option value="">월</option>
											<c:forEach var="i" begin="1" end="12" step="1">
												<c:if test="${i<10 }"><option value="0${i }">${i }</option></c:if>
												<c:if test="${i>=10 }"><option value="${i }">${i }</option></c:if>
											</c:forEach>
										</select>&nbsp;&nbsp;월
									</dd>
									<dd>
										<select name="birthdate" style="width: 50px; height: 25px;">
											<option value="">일</option>
											<c:forEach var="i" begin="1" end="31" step="1">
												<c:if test="${i<10 }"><option value="0${i }">${i }</option></c:if>
												<c:if test="${i>=10 }"><option value="${i }">${i }</option></c:if>
											</c:forEach>
										</select>&nbsp;&nbsp;일
									</dd>
								</dl>
							</li>
							
							<li>
								<input type="text" name="tel" value="휴대폰 번호" style="border: 0; font-size: 15px; padding-top: 13px;
								font-family: 'Open Sans' sans-serif; font-weight: bold;" size="50" maxlength="35" 
								onfocus="if(this.value=='휴대폰 번호') this.value='';" onblur="if(this.value=='') this.value='휴대폰 번호';">
								<div id="sms_btn">
									<a href="javascript:SMS();" class="btn">
										<img alt="인증" src="<%=cp %>/project3/login/img/btn_sms_auth_h34.png">
									</a>
								</div>
							</li>
							
							<li>
								<input type="text" name="SMS" value="SMS 인증번호" style="border: 0; font-size: 15px; padding-top: 13px;
								font-family: 'Open Sans' sans-serif; font-weight: bold;" size="50" maxlength="35" 
								onfocus="if(this.value=='SMS 인증번호') this.value='';" onblur="if(this.value=='') this.value='SMS 인증번호';">
								<div id="sms_btn">
									<a href="javascript:SMScheck();" class="btn">
										<img alt="확인" src="<%=cp %>/project3/login/img/btn_check_sms_h34.png">
									</a>
								</div>
							</li>
						</ul>
						<ul class="join-msg">
							<li style="padding-bottom: 5px; color: #0549bb;"><label>
									<input type="checkbox" name="user_age_check" value="Y">
									14세 이상입니다. (필수)
							</label></li>
							<li>* 회원가입에 필요한 최소한의 정보만 입력 받음으로써 고객님의 개인정보 수집을 최소화하고</li>
							<li>&nbsp;&nbsp;&nbsp;편리한 회원가입을 제공합니다.</li>
						</ul>

<script type="text/javascript">
function checkAll() {
	if($("#every_agree").is(':checked')){
		$("input[name=yaok2]").prop("checked", true);
		$("input[name=privacy1]").prop("checked", true);
		$("input[name=privacy3]").prop("checked", true);
		$("input[name=ad_every_agree]").prop("checked", true);
		$("input[name=ADemail_]").prop("checked", true);	
		$("input[name=ADsms_]").prop("checked", true);
		$("input[name=ADpush_]").prop("checked", true);
	} else {
		$("input[name=yaok2]").prop("checked", false);
		$("input[name=privacy1]").prop("checked", false);
		$("input[name=privacy3]").prop("checked", false);
		$("input[name=ad_every_agree]").prop("checked", false);
		$("input[name=ADemail_]").prop("checked", false);	
		$("input[name=ADsms_]").prop("checked", false);
		$("input[name=ADpush_]").prop("checked", false);
	}
}
</script>
						
						<fieldset style="width: 650px;">
							<legend>약관 동의 폼</legend>
							<div class="new-privercy-contract">
								<div id="chkwrap">
									<div class="all-chk">
										<label>
											<input type="checkbox" name="every_agree" id="every_agree" 
											value="all" class="input-cbox new_every_agree" onclick="checkAll();"> 전체동의
										</label>
									</div>
									<div class="cont p10">
										<ul>
											<li class="ml-30 pt-10"><label><input
													type="checkbox" name="yaok2" id="yaok2" value="Y"
													class="input-cbox every_agree"> 이용약관 (필수) </label> <a
												href="#chk_cont1">내용보기</a></li>
											<li class="ml-30 pt-10"><label><input
													type="checkbox" name="privacy1" id="privacy1" value="Y"
													value="agree_uidB" class="input-cbox every_agree">
													개인정보 수집 및 이용 안내 (필수) </label> <a href="#chk_cont2">내용보기</a></li>

											<li class="ml-30 pt-10"><label><input
													type="checkbox" name="privacy3" id="privacy3" value="Y"
													value="agree_uidD" class="input-cbox every_agree">
													개인정보 처리위탁 (필수) </label> <a href="#chk_cont4">내용보기</a></li>
										</ul>
										<div class="marketing pb-10">
											<div class="mk-wrap">
												<label class="mk-all"><input type="checkbox"
													name="ad_every_agree" id="ad_every_agree" value="ad_all"
													class="input-cbox every_agree new_every_agree"> <strong>마케팅
														수신동의</strong></label>&nbsp; ( <label><input type="checkbox"
													name="ADemail_" id="ADemail_" value="ADemail_"
													class="input-cbox every_agree ad_every_agree"> 이메일</label>
												<label class="pl-30"><input type="checkbox"
													name="ADsms_" id="ADsms_" value="ADsms_"
													class="input-cbox every_agree ad_every_agree"> SMS</label>
												<label class="pl-30"><input type="checkbox"
													name="ADpush_" id="ADpush_" value="ADpush_"
													class="input-cbox every_agree ad_every_agree">
													앱Push알림</label>)
											</div>
											쇼핑몰에서 제공하는 신상품 소식/ 할인쿠폰을 무상으로 보내드립니다!<br> 단, 상품 구매 정보는
											수신동의 여부 관계없이 발송됩니다.<br> <strong>제공 동의를 하지 않으셔도
												서비스 이용에는 문제가 없습니다.</strong>
										</div>
									</div>
								</div>
								<div class="new-btn-area">
									<a href="javascript:sendIt();">동의하고 가입완료</a>
								</div>
								<h4 class="tit" id="chk_cont1">이용약관</h4>
								<div class="privercy-contract">
									<textarea cols="80" wrap="off" rows="10" readonly="">인터넷 쇼핑몰 『 웨얼하우스 사이버 몰』회원 약관 

제1조(목적)
이 약관은 웨얼하우스 회사(전자상거래 사업자)가 운영하는 웨얼하우스 사이버 몰(이하 "몰"이라 한다)에서 제공
하는 인터넷 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리·의
무 및 책임사항을 규정함을 목적으로 합니다.

 「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준
용합니다」

제2조(정의)
①"몰" 이란 웨얼하우스 회사가 재화 또는 용역(이하 "재화등"이라 함)을 이용자에게 제공하기 위하여 컴
퓨터등 정보통신설비를 이용하여 재화등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울
러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.

②"이용자"란 "몰"에 접속하여 이 약관에 따라 "몰"이 제공하는 서비스를 받는 회원 및 비회원을 
말합니다.

③ '회원'이라 함은 "몰"에 개인정보를 제공하여 회원등록을 한 자로서, "몰"의 정보를 지속적으로 
제공받으며, "몰"이 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.

④ '비회원'이라 함은 회원에 가입하지 않고 "몰"이 제공하는 서비스를 이용하는 자를 말합니다.

제3조 (약관등의 명시와 설명 및 개정) 
① "몰"은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 
있는 곳의 주소를 포함), 전화번호·모사전송번호·전자우편주소, 사업자등록번호, 통신판매업신고
번호, 개인정보관리책임자등을 이용자가 쉽게 알 수 있도록 웨얼하우스 사이버몰의 초기 서비스화면(전면)
에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.

② "몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회·배송책임·
환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등
을 제공하여 이용자의 확인을 구하여야 합니다.

③ "몰"은 전자상거래등에서의소비자보호에관한법률, 약관의규제에관한법률, 전자거래기본법, 전자
서명법, 정보통신망이용촉진등에관한법률, 방문판매등에관한법률, 소비자보호법 등 관련법을 위배하
지 않는 범위에서 이 약관을 개정할 수 있습니다.

④ "몰"이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기
화면에 그 적용일자 7일이전부터 적용일자 전일까지 공지합니다.
다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두
고 공지합니다. 이 경우 "몰"은 개정전 내용과 개정후 내용을 명확하게 비교하여 이용자가 알기 쉽
도록 표시합니다. 

⑤ "몰"이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되
고 그 이전에 이미 체결된 계약에 대해서는 개정전의 약관조항이 그대로 적용됩니다. 다만 이미 계
약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지
기간내에 '몰"에 송신하여 "몰"의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.

⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래등에서의소비자보호
에관한법률, 약관의규제등에관한법률, 공정거래위원회가 정하는 전자상거래등에서의소비자보호지침 
및 관계법령 또는 상관례에 따릅니다.

제4조(서비스의 제공 및 변경) 
① "몰"은 다음과 같은 업무를 수행합니다.
1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결
2. 구매계약이 체결된 재화 또는 용역의 배송
3. 기타 "몰"이 정하는 업무

②"몰"은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 
의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 
내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.

③"몰"이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의 
변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.

④전항의 경우 "몰"은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, "몰"이 고의 또는 과
실이 없음을 입증하는 경우에는 그러하지 아니합니다.

제5조(서비스의 중단) 
① "몰"은 컴퓨터 등 정보통신설비의 보수점검·교체 및 고장, 통신의 두절 등의 사유가 발생한 경
우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.

②"몰"은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입
은 손해에 대하여 배상합니다. 단, "몰"이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 
아니합니다.

③사업종목의 전환, 사업의 포기, 업체간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우
에는 "몰"에서 정한 방법으로 이용자에게 통지하며 마일리지, 적립금은 현금으로 반환되지 않습니다.

④ 2년이상 휴면회원의 적립금은 회원에게 이메일로 통보후 자동 삭제됩니다.


제6조(회원가입) 
① 이용자는 "몰"이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시
를 함으로서 회원가입을 신청합니다.

② "몰"은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각호에 해당하지 않는 한 
회원으로 등록합니다.
1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제
7조제3항에 의한 회원자격 상실후 3년이 경과한 자로서 "몰"의 회원재가입 승낙을 얻은 경우에는 
예외로 한다.
2. 등록 내용에 허위, 기재누락, 오기가 있는 경우
3. 기타 회원으로 등록하는 것이 "몰"의 기술상 현저히 지장이 있다고 판단되는 경우

③ 회원가입계약의 성립시기는 "몰"의 승낙이 회원에게 도달한 시점으로 합니다.

④ 회원은 제15조제1항에 의한 등록사항에 변경이 있는 경우, 즉시 전자우편 기타 방법으로 "몰"에 
대하여 그 변경사항을 알려야 합니다.

제7조(회원 탈퇴 및 자격 상실 등) 
① 회원은 "몰"에 언제든지 탈퇴를 요청할 수 있으며 "몰"은 즉시 회원탈퇴를 처리합니다.

② 회원이 다음 각호의 사유에 해당하는 경우, "몰"은 회원자격을 제한 및 정지시킬 수 있습니다.
1. 가입 신청시에 허위 내용을 등록한 경우
2. "몰"을 이용하여 구입한 재화등의 대금, 기타 "몰"이용에 관련하여 회원이 부담하는 채무를 기
일에 지급하지 않는 경우
3. 다른 사람의 "몰" 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우
4. "몰"을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우

③ "몰"이 회원 자격을 제한·정지 시킨후, 동일한 행위가 2회이상 반복되거나 30일이내에 그 사유
가 시정되지 아니하는 경우 "몰"은 회원자격을 상실시킬 수 있습니다.

④ "몰"이 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하
고, 회원등록 말소전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.

제8조(회원에 대한 통지)
① "몰"이 회원에 대한 통지를 하는 경우, 회원이 "몰"과 미리 약정하여 지정한 전자우편 주소로 
할 수 있습니다.

② "몰"은 불특정다수 회원에 대한 통지의 경우 1주일이상 "몰" 게시판에 게시함으로서 개별 통지
에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 
개별통지를 합니다.

제9조(구매신청)
"몰"이용자는 "몰"상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, "몰"은 이용자가 
구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다.  단, 회원인 경우 제2호 
내지 제4호의 적용을 제외할 수 있습니다.
1. 재화등의 검색 및 선택
2. 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력
3. 약관내용, 청약철회권이 제한되는 서비스, 배송료·설치비 등의 비용부담과 관련한 내용에 대한 
확인
4. 이 약관에 동의하고 위 3.호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭)
5. 재화등의 구매신청 및 이에 관한 확인 또는 "몰"의 확인에 대한 동의
6. 결제방법의 선택

제10조 (계약의 성립)
① "몰"은 제9조와 같은 구매신청에 대하여 다음 각호에 해당하면 승낙하지 않을 수 있습니다. 다
만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 
법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.
1. 신청 내용에 허위, 기재누락, 오기가 있는 경우
2. 미성년자가 담배, 주류등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우
3. 기타 구매신청에 승낙하는 것이 "몰" 기술상 현저히 지장이 있다고 판단하는 경우

② "몰"의 승낙이 제12조제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것
으로 봅니다.

③ "몰"의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 
취소등에 관한 정보등을 포함하여야 합니다.

제11조(지급방법)
"몰"에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각호의 방법중 가용한 방법으로 할 
수 있습니다. 단, "몰"은 이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도  추가
하여 징수할 수 없습니다.
1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체 
2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제
3. 온라인무통장입금
4. 전자화폐에 의한 결제
5. 수령시 대금지급
6. 마일리지 등 "몰"이 지급한 포인트에 의한 결제
7. "몰"과 계약을 맺었거나 "몰"이 인정한 상품권에 의한 결제  
8. 기타 전자적 지급 방법에 의한 대금 지급 등

제12조(수신확인통지·구매신청 변경 및 취소)
① "몰"은 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.

② 수신확인통지를 받은 이용자는 의사표시의 불일치등이 있는 경우에는 수신확인통지를 받은 후 즉시 
구매신청 변경 및 취소를 요청할 수 있고 "몰"은 배송전에 이용자의 요청이 있는 경우에는 지체없이 그 
요청에 따라 처리하여야 합니다. 다만 이미 대금을 지불한 경우에는 제15조의 청약철회 등에 관한 규정
에 따릅니다.

제13조(재화등의 공급)
① "몰"은 이용자와 재화등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날
부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 
다만, "몰"이 이미 재화 등의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받
은 날부터 2영업일 이내에 조치를 취합니다.  이때 "몰"은 이용자가 재화등의 공급 절차 및 진행 
사항을 확인할 수 있도록 적절한 조치를 합니다.

②"몰"은 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 
명시합니다. 만약 "몰"이 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 
합니다. 다만 "몰"이 고의·과실이 없음을 입증한 경우에는 그러하지 아니합니다.


제14조(환급)
"몰"은 이용자가 구매신청한 재화등이 품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는 지
체없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부
터 2영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.

제15조(청약철회 등)
①"몰"과 재화등의 구매에 관한 계약을 체결한 이용자는 수신확인의 통지를 받은 날부터 7일 이내
에는 청약의 철회를 할 수 있습니다.

② 이용자는 재화등을 배송받은 경우 다음 각호의 1에 해당하는 경우에는 반품 및 교환을 할 수 
없습니다.
1. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하
기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다)
2. 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우
3. 시간의 경과에 의하여 재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우
4. 같은 성능을 지닌 재화등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우
5. 세일과같은 할인행사시 미리 교환환불이 불가하다고 공지후 판매된 제품

③ 제2항제2호 내지 제4호의 경우에 "몰"이 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 
알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약철회
등이 제한되지 않습니다.

④ 이용자는 제1항 및 제2항의 규정에 불구하고 재화등의 내용이 표시 광고 내용과 다르거나 계약
내용과 다르게 이행된 때에는 당해 재화등을 공급받은 날부터 3월이내, 그 사실을 안 날 또는 알 
수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.

제16조(청약철회 등의 효과)
① "몰"은 이용자로부터 재화 등을 반환받은 경우 3영업일 이내에 이미 지급받은 재화등의 대금을 
환급합니다. 이 경우 "몰"이 이용자에게 재화등의 환급을 지연한 때에는 그 지연기간에 대하여 공
정거래위원회가 정하여 고시하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.

② "몰"은 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 재화
등의 대금을 지급한 때에는 지체없이 당해 결제수단을 제공한 사업자로 하여금 재화등의 대금의 
청구를 정지 또는 취소하도록 요청합니다.

③ 청약철회등의 경우 공급받은 재화등의 반환에 필요한 비용은 이용자가 부담합니다. "몰"은 이용
자에게 청약철회등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 재화등의 내용이 표
시 광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회등을 하는 경우 재화등의 반환에 
필요한 비용은 "몰"이 부담합니다.

④ 이용자가 재화등을 제공받을때 발송비를 부담한 경우에 "몰"은 청약철회시 그 비용을  누가 부담하
는지를 이용자가 알기 쉽도록 명확하게 표시합니다.
제17조(포인트-POINT)
① 정의
1. “포인트”란 회사가 “몰”을 이용하여 상품을 구매하거나 이벤트/프로모션 등 회사가 정한 기준에따라 지급하는 회원 점수를 말합니 
     다.
2. “적립금”이란 “몰”에서 회원이 상품구매, 배송비 결제 등에 현금대신 사용할 수 있는 지급수단을 말합니다.
② 포인트의 적립
1. 회사는 회원의 몰 이용 촉진을 위하여 상품구매 또는 이벤트/프로모션 등 회사가 정한 기준에 따라 소정의 POINT를 회원에게 지급하여 드리며, 포인트는 ID 단위로 적립됩니다.
2. 포인트 적립시 1포인트 미만의 포인트는 절사하여 적립됩니다.
3. 포인트 지급의 기준 및 적립비율은 회사의 정책상 언제든지 변경할 수 있으며, 변경된 내용은 몰을 통해 고지함으로써 그 효력이 발생합니다.
③ 포인트의 사용
1. 회사가 지급한 포인트는 몰에서만 사용이 가능하며, 원칙적으로 1포인트 이상인 경우에 1포인트 단위로 사용이 가능합니다.
2. 회원은 포인트를 적립금으로 전환하여 상품구매, 배송비 결제등에 사용할 수 있으며, 회사는 포인트의 적립금 전환 비율을 몰상에 별도 게시합니다.
3. 포인트는 적립일로부터 일정기간이 경과한 날로부터 적립금으로 전환이 가능합니다. 전환 가능일은 몰상에 별도 게시합니다.
4. 회원이포인트를 사용할 경우 적립일 기준으로 선 적립된 포인트부터 소진됩니다.
5. 포인트는 원칙적으로 양도가 불가하며, 동일한 자가 수개의 아이디(ID)를 보유하더라도 각각의 아이디(ID)에 적립된 포인트의 합산 사용은 불가합니다.
6. 타인의 회원정보 도용으로 인하여 사용된 포인트와 관련하여 회사는 어떠한 책임도 지지 않습니다.
④ 포인트의 취소 및 소멸
1. 회사는 회원이 부적절한 방법으로 포인트를 적립하였음이 명백하다고 판단된 경우 회원에게 지급한 해당 포인트를 취소하고, 회원의 몰 이용을 제한할 수 있습니다.
2. 회사가 지급한 포인트는 적립일로부터 1년간 유효하며, 유효기간이 경과된 포인트는 이메일로 공지후, 만료일의 해당월 말일자로 소멸됩니다.
3. 회원이 탈퇴할 경우 기 적립된 포인트는 일괄 소멸되며, 재가입 하더라도 소멸된 포인트는 다시 생성되지 않습니다.

제18조(개인정보보호)
①"몰"은 이용자의 정보수집시 구매계약 이행에 필요한 최소한의 정보를 수집합니다. 다음 사항을 
필수사항으로 하며 그 외 사항은 선택사항으로 합니다. 
1. 성명
2. 주소
3. 전화번호
4. 희망ID(회원의 경우)
5. 비밀번호(회원의 경우)
6. 전자우편주소(또는 이동전화번호)

② "몰"이 이용자의 개인식별이 가능한 개인정보를 수집하는 때에는 반드시 당해 이용자의 동의를 
받습니다.

③제공된 개인정보는 당해 이용자의 동의없이 목적외의 이용이나 제3자에게 제공할 수 없으며, 이
에 대한 모든 책임은 　몰　이 집니다. 다만, 다음의 경우에는 예외로 합니다.

1. 배송업무상 배송업체에게 배송에 필요한 최소한의 이용자의 정보(성명, 주소, 전화번호)를 알려
주는 경우
2. 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태
로 제공하는 경우
3. 재화등의 거래에 따른 대금정산을 위하여 필요한 경우
4. 도용방지를 위하여 본인확인에 필요한 경우
5. 법률의 규정 또는 법률에 의하여 필요한 불가피한 사유가 있는 경우

④"몰"이 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신
원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관
련사항(제공받은자, 제공목적 및 제공할 정보의 내용) 등 정보통신망이용촉진등에관한법률 제22조
제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 
있습니다.

⑤이용자는 언제든지 "몰"이 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 
있으며 "몰"은 이에 대해 지체없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요
구한 경우에는 "몰"은 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.
 
⑥ "몰"은 개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화하며 신용카드, 은행계좌 등
을 포함한 이용자의 개인정보의 분실, 도난, 유출, 변조 등으로 인한 이용자의 손해에 대하여 모든 
책임을  집니다.

⑦ "몰" 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 
달성한 때에는 당해 개인정보를 지체없이 파기합니다.

제19조("몰"의 의무)
① "몰"은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 
바에 따라 지속적이고, 안정적으로 재화·용역을 제공하는데 최선을 다하여야 합니다.

② "몰"은 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포
함)보호를 위한 보안 시스템을 갖추어야 합니다.

③ "몰"이 상품이나 용역에 대하여 「표시·광고의공정화에관한법률」 제3조 소정의 부당한 표
시·광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.

④ "몰"은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.

제20조(회원의 ID 및 비밀번호에 대한 의무)
① 제17조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.

② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.

③ 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 
"몰"에 통보하고 "몰"의 안내가 있는 경우에는 그에 따라야 합니다.

제21조(이용자의 의무)
이용자는 다음 행위를 하여서는 안됩니다.
1. 신청 또는 변경시 허위 내용의 등록
2. 타인의 정보 도용
3. "몰"에 게시된 정보의 변경
4. "몰"이 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시
5. "몰" 기타 제3자의 저작권 등 지적재산권에 대한 침해
6. "몰" 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 몰에 공개 또는 게시하
는 행위

제22조(연결"몰"과 피연결"몰" 간의 관계)
① 상위 "몰"과 하위 "몰"이 하이퍼 링크(예: 하이퍼 링크의 대상에는 문자, 그림 및 동화상 등이 
포함됨)방식 등으로 연결된 경우, 전자를 연결 "몰"(웹 사이트)이라고 하고 후자를 피연결 "몰"(웹
사이트)이라고 합니다.

②연결"몰"은 피연결"몰"이 독자적으로 제공하는 재화등에 의하여 이용자와 행하는 거래에 대해서 
보증책임을 지지 않는다는 뜻을 연결"몰"의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 
경우에는 그 거래에 대한 보증책임을 지지 않습니다.

제23조(저작권의 귀속 및 이용제한)
① "몰"이 작성한 저작물에 대한 저작권 기타 지적재산권은 "몰"에 귀속합니다.

② 이용자는 "몰"을 이용함으로써 얻은 정보 중 "몰"에게 지적재산권이 귀속된 정보를 "몰"의 사전 
승낙없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이
용하게 하여서는 안됩니다.

③ "몰"은 약정에 따라 이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다.

제24조(분쟁해결)
① "몰"은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 
피해보상처리기구를 설치·운영합니다.

② "몰"은 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신
속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.

③"몰"과 이용자간에 발생한 전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 
공정거래위원회 또는 시 도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.

제25조(재판권 및 준거법)
①"몰"과 이용자간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 
주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 
주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니
다.

②"몰"과 이용자간에 제기된 전자상거래 소송에는 한국법을 적용합니다.



본 약관은 2006년03월16일부터 적용되며 
2015년05월06일 [제17조(POINT)]에 대한 항목이 추가되었음을 고지합니다.
2018년07월11일 제5조(서비스의 중단)
[④ 2년이상 휴면회원의 적립금은 회원에게 이메일로 통보후 자동 삭제됩니다.] 가
[④ 2년동안 휴면회원 혹은  2년동안 미사용 적립금은 쇼핑몰에 공지 및 회원에게 SNS 로 사전고지 후  자동 삭제됩니다.] 로 수정되었음을 고지합니다.</textarea>
								</div>
								<h4 class="tit" id="chk_cont2">개인정보 수집·이용</h4>
								<table border="0" summary="구분, 목적, 항목, 보유기간, 필수정보, 선택정보"
									class="contract-tbl">
									<caption>개인정보 수집·이용</caption>
									<colgroup>
										<col width="100">
										<col width="33%">
										<col width="33%">
										<col width="33%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col"><div>구분</div></th>
											<th scope="col"><div>목적</div></th>
											<th scope="col"><div>항목</div></th>
											<th scope="col"><div>보유기간</div></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row" rowspan="1"><div>필수정보</div></th>
											<td><div class="p10 purposeY">회원제 서비스 이용 / 본인확인</div></td>
											<td><div class="p10 itemsY">이름, 아이디, 비밀번호, 이메일,
													휴대폰, 생일</div></td>
											<td><div class="p10 holdingY">회원탈퇴 후 5일까지</div></td>
										</tr>
									</tbody>
								</table>
								<input type="hidden" name="agree_uidB" id="agree_uidB"
									value="1_">
								<table border="0" summary="구분, 목적, 항목, 보유기간, 필수정보, 선택정보"
									class="contract-tbl">
									<caption>개인정보 수집·이용</caption>
									<colgroup>
										<col width="100">
										<col width="33%">
										<col width="33%">
										<col width="33%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" rowspan="1"><div>선택정보</div></th>
											<td><div class="p10 purpose1">마케팅 활용(이벤트, 맞춤형 광고)</div></td>
											<td><div class="p10 items1">휴대폰, 이메일</div></td>
											<td><div class="p10 holding1">회원탈퇴 후 5일까지</div></td>
										</tr>
									</tbody>
								</table>
								<h4 class="tit" id="chk_cont4">개인정보 처리위탁 (선택)</h4>
								<input type="hidden" name="agree_uidD" id="agree_uidD"
									value="2_3_4_5_6_">
								<table border="0" summary="수탁자, 목적" class="contract-tbl">
									<caption>개인정보 처리위탁</caption>
									<colgroup>
										<col width="20%">
										<col width="*">
									</colgroup>
									<thead>
										<tr>
											<th scope="col"><div>수탁자</div></th>
											<th scope="col"><div>목적</div></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><div class="p10 trustee2">대한통운</div></td>
											<td><div class="p10 purpose2">상품 배송 업무 및 배송위치 /
													도착정보 등의 서비스 제공</div></td>
										</tr>
										<tr>
											<td><div class="p10 trustee3">㈜코리아센터닷컴</div></td>
											<td><div class="p10 purpose3">고객정보 DB시스템
													위탁운영(전산아웃소싱)</div></td>
										</tr>
										<tr>
											<td><div class="p10 trustee4">서울신용평가정보㈜</div></td>
											<td><div class="p10 purpose4">본인인증</div></td>
										</tr>
										<tr>
											<td><div class="p10 trustee5">KSNET</div></td>
											<td><div class="p10 purpose5">결제관련</div></td>
										</tr>
										<tr>
											<td><div class="p10 trustee6">비엔엠 로지스</div></td>
											<td><div class="p10 purpose6">상품 배송 업무</div></td>
										</tr>
									</tbody>
								</table>
								<p class="pl-6 btm-msg">
									귀하께서는 쇼핑몰에서 위와 같이 수집하는 개인정보에 대해, 동의하지 않거나 개인정보를 기재하지 않음으로써 거부할
									수 있습니다.<br> 다만, 이때 회원에게 제공되는 서비스가 제한될 수 있습니다.
								</p>
							</div>
						</fieldset>
						<!-- use_contract -->
					</div>		
				</form>
			</div>
			<!-- .page-body -->
		</div>
		<!-- #terms -->
	</div>
	</div>
	
	<!-- 하단 -->
<script> 
	function pop() { 
	window.open("/shop/page.html?id=6","","width=644,height=573,scrollbars=no"); 
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
<div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/984775192/?value=0&guid=ON&script=0"/></div>
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