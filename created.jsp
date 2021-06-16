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

<script language="JavaScript"> 
function bluring(){
if(event.srcElement.tagName=="A"||event.srcElement.tagName=="IMG") document.body.focus();
}
document.onfocusin=bluring;
</script>

<link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css' rel='stylesheet' type='text/css' />
<link href='http://zooyork77.img7.kr/onedesign/mainrolling/nerveSlider.min.css' rel='stylesheet' type='text/css' />
<link href='http://cdn.rawgit.com/young-ha/webfont-archive/20161201/css/Arita-dotum.css' rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" type="text/css" href="http://cdn015.negagea.net/wherehouse/2018/webstore/feature/staffsnap/css/pgwslider.css" />

<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/css/common.css"/>
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/css/faqStyle.css"/>
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/css/board.css"/>
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
		
		f.action = "<%=cp%>/shop/created_ok.do";
		f.submit();
		
	}

</script>

</head>
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/unit_header.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/scroll.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/main.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/header.3.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/footer.1.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/common.css">

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


<div id="contentWrapper">
	<div id="contentWrap">
		<div id="left_menu"></div>
		<div id="content">
			<div class="title_board" style="margin-bottom:0px;">
				<h2>Q&A</h2>
			</div>
			
			<div id="bbsData">
				<div class="page-body">
					<form name='myForm' action="<%=cp %>/shop/created_ok.do" 
					method='post' enctype="multipart/form-data" style="position:relative;">
						<div id='passimg' name='passimg' style=' position:absolute; visibility:hidden;z-index:999; '>
						</div>
						
						
						 <c:if test="${!empty pCONTENT }">
						<dl class="prd-tinfo">
							<dt>
								<img src="${imagePath }/${pCONTENT }" height="180" align="middle" />
							</dt>
							<dd>
								<ul>
									<li class="name"><span class="tit">상 품 명:</span>${pNAME }
									<span class="MK-product-icons">
									</span>
									<!--/coupon_icon/--></li>
									<li class="price"><span class="tit">상품가격:</span><strong>${pPRICE }</strong></li>
								</ul>
							</dd>
						</dl>
						</c:if>
						
						
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
                            							class="MS_input_txt input_style" readonly='readonly' value="${sessionScope.customInfo.name }"/>
                            								</div>
                            							</td>
                            						<th><div class="title">Password</div></th>
                            							<td>
                            								<div>
                            									<input id='bw_input_passwd' type='password' name='qpwd'  class="MS_input_txt input_style"/>
                                                    			<font color="red">자동 잠금 기능</font><!-- 자동잠금되는지 확인하기 -->
                            								</div>						
                            							</td>
												</tr>
												<tr>
													<th><div class="title">Title</div></th>
														<td colspan="3">
															<div class="title">
																<input type="text" class="MS_input_txt input_style2" name="qsubject" size="76" maxlength="50">
																<span style=" clear:boht; float:right; width:120px;"></span>
															</div>
														</td>
												</tr>
												<tr>
													<th><div class="title">Content</div></th>
													<td colspan="3">
														<div>
															<textarea id='MS_text_content' name='qcontent' style='font-family:굴림체; width: 1100px; height: 200px;'></textarea>
															 
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
						
						<dl class="bbs-link" style="float: right; padding-top: 20px">
							<dt></dt>
							<dd>
								<a href="javascript:sendIt();"><img src="<%=cp %>/project3/image/sub_btn_01.gif"></a><!-- 글쓰기 -->
								<a href="<%=cp %>/shop/qna.do"><img src="<%=cp %>/project3/image/sub_btn_02.gif" /></a><!-- 목록 -->
						</dl>
					</form>
				</div>
			</div>
		</div>
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