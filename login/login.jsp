<%@page import="com.util.DBCPConn"%>
<%@page import="com.project3.LoginDAO"%>
<%@page import="com.project3.LoginDTO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();

	LoginDAO dao = new LoginDAO(DBCPConn.getConnection());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 로그인</title>

<link href="<%=cp%>/project3/login/img/icon.png" rel="shortcut icon" type="image/x-icon">

<link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" rel="stylesheet" type="text/css">
<link href="http://zooyork77.img7.kr/onedesign/mainrolling/nerveSlider.min.css" rel="stylesheet" type="text/css">
<link href="http://cdn.rawgit.com/young-ha/webfont-archive/20161201/css/Arita-dotum.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" type="text/css" href="http://cdn015.negagea.net/wherehouse/2018/webstore/feature/staffsnap/css/pgwslider.css">

<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/login/css/common.css" />
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/login/css/login.css" />
	
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
	 ${msg}
	 
	 function sendIt() {
		var f = document.form1;
		
		str=f.id.value;
		str=str.trim();
		if(str==""){
			alert("아이디를 입력해주세요");
			f.id.focus();
			return;
		}
		
		str=f.pwd.value;
		str=str.trim();
		if(str==""){
			alert("비밀번호를 입력해주세요");
			f.pwd.focus();
			return;
		}
		
		f.action="<%=cp%>/shop/login_ok.do";
		f.submit();
	}
</script>

</head>
<body onload="document.form1.id.focus()">

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

	<div id="contentWrap">

		<div id="left_menu"></div>
		<!--left_menu -->

		<div id="content" style="height: 500px">

			<div class="title_etc">
				<h2>LOGIN</h2>
			</div>

			<div id="loginWrap">
				<div class="page-body">

					<!-- 로그인 시작 -->
					<form action="" method="post" name="form1">
						<input type="hidden" name="type" value="member"> <input
							type="hidden" name="code" value=""> <input type="hidden"
							name="mcode" value=""> <input type="hidden" name="scode"
							value=""> <input type="hidden" name="xtype" value="">
						<input type="hidden" name="startdate" value=""> <input
							type="hidden" name="auctionnum" value=""> <input
							type="hidden" name="auction_uid" value=""> <input
							type="hidden" name="gongcode" value=""> <input
							type="hidden" name="brandcode" value=""> <input
							type="hidden" name="branduid" value=""> <input
							type="hidden" name="sslid" value="zooyork77"> <input
							type="hidden" name="sslip" value="espionage.co.kr"> <input
							type="hidden" name="msecure_key"> <input type="hidden"
							name="ks_connect" value=""> <input type="hidden"
							name="ks_connect_id" value=""> <input type="hidden"
							name="returnurl"
							value="http://espionage.co.kr/html/mainm.html?type=logout">
						<div id="loginpage">
							<div id="logbox">

								<div class="login">
									<h3>MEMBERSHIP</h3>
									<fieldset>
										<legend>회원로그인</legend>
										<label class="id"> <span>ID</span> <input type="text"
											name="id" maxlength="20"
											onblur="if(this.value!='') document.form1.pwd.focus();"
											class="MS_login_id txt-frm">
										</label> <label class="password"> <span>PASSWORD</span> <input
											type="password" name="pwd" maxlength="20"
											class="MS_login_pw txt-frm">
										</label>

										<div class="subbtn">
											<ul>
												<li><a href="<%=cp%>/shop/find_id.do"><font
														color="#5D5D5D" style="">아이디/비밀번호 찾기</font></a></li>
												<li>&nbsp;&nbsp;:&nbsp;&nbsp;</li>
												<li><a href="<%=cp%>/shop/membership.do"><font
														color="#5D5D5D" style="">회원가입</font></a></li>
											</ul>
										</div>

										<div class="loginbtn">
											<a href="javascript:sendIt();"><img
												src="<%=cp%>/project3/login/img/login1.png"
												onmouseover="this.src='<%=cp%>/project3/login/img/login2.png'"
												onmouseout="this.src='<%=cp%>/project3/login/img/login1.png'"
												alt="로그인"></a>
										</div>
									</fieldset>
								</div>
								<!-- .login -->

								<!-- 회원가입 -->
								<div class="join">
									<h3>JOIN US</h3>

									<p class="joinbtn">
										<a href="<%=cp%>/shop/membership.do"><span>간편 회원가입</span>간단한
											정보만 입력하시면 회원가입이 가능합니다.</a>
									</p>

									<div id="simpleLogin">
										<div class="sns-login">
											<p>
												SNS로그인<span>간편하게 회원가입/로그인하세요.</span>
											</p>
											<div>
												<a
													href="https://nid.naver.com/oauth2.0/authorize?response_type=code&state=4208e7ee1658a90a320794649dc859af&redirect_uri=http%3A%2F%2Fwww.espionage.co.kr%2Flist%2FAPI%2Flogin_naver.html&client_id=i8t8ps53xRjqrzVey2w4&oauth_os=&inapp_view=&locale=ko_KR&auth_type=reauthenticate">
													<img src="<%=cp%>/project3/login/img/naver.png"
													alt="네이버로 로그인">
												</a> <a
													href="https://www.facebook.com/login.php?skip_api_login=1&api_key=238454446762855&kid_directed_site=0&app_id=238454446762855&signed_next=1&next=https%3A%2F%2Fwww.facebook.com%2Fdialog%2Foauth%3Fredirect_uri%3Dhttps%253A%252F%252Fwww.espionage.co.kr%252Flist%252FAPI%252Flogin_facebook.html%26client_id%3D238454446762855%26state%3Ddda636f33fc449eda751af06757abed4%26scope%3Demail%26ret%3Dlogin%26fbapp_pres%3D0%26logger_id%3D68522607-ba4f-4cb7-a0b0-3ef9a45b1a36%26tp%3Dunspecified&cancel_url=https%3A%2F%2Fwww.espionage.co.kr%2Flist%2FAPI%2Flogin_facebook.html%3Ferror%3Daccess_denied%26error_code%3D200%26error_description%3DPermissions%2Berror%26error_reason%3Duser_denied%26state%3Ddda636f33fc449eda751af06757abed4%23_%3D_&display=page&locale=ko_KR&pl_dbl=0">
													<img src="<%=cp%>/project3/login/img/facebook.png"
													alt="페이스북으로 로그인">
												</a> <a
													href="https://accounts.kakao.com/login?continue=https%3A%2F%2Fkauth.kakao.com%2Foauth%2Fauthorize%3Fis_popup%3Dfalse%26ka%3Dsdk%252F1.39.14%2520os%252Fjavascript%2520sdk_type%252Fjavascript%2520lang%252Fko%2520device%252FWin32%2520origin%252Fhttp%25253A%25252F%25252Fwww.espionage.co.kr%26auth_tran_id%3D49dnypdb02lc285dc3a6fdd2bb5144745200498b511kntokezg%26response_type%3Dcode%26state%3Dks_return_url%253D%25252Fshop%25252Fmember.html%2526ks_type%253D%26redirect_uri%3Dhttp%253A%252F%252Fwww.espionage.co.kr%252Flist%252FAPI%252Flogin_kakao_sync.html%26client_id%3Dc285dc3a6fdd2bb5144745200498b511">
													<img src="<%=cp%>/project3/login/img/kakao.png"
													alt="카카오으로 로그인">
												</a>
											</div>
										</div>
										<!-- .sns-login -->
									</div>
									<!-- #simpleLogin -->
								</div>
								<!-- .join -->

							</div>
							<!-- #logbox -->

							<!--membership banner-->
						</div>
						<!-- #loginpage -->
					</form>
					<!-- 로그인 끝 -->
				</div>
				<!-- .page-body -->
			</div>
			<!-- #loginWrap -->
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