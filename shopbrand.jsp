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
<title>shopbrand</title>
<link href="<%=cp%>/project3/login/img/icon.png" rel="shortcut icon" type="image/x-icon">

<!-- 테두리 -->
<script language="JavaScript"> 
function bluring(){
if(event.srcElement.tagName=="A"||event.srcElement.tagName=="IMG") document.body.focus();
}
document.onfocusin=bluring;
</script>	<!--  ???? -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">main,header3 js</script>
</head>
<link type="text/css" rel="stylesheet" href="<%=cp %>/project3/css/unit_header.css" />
<link type="text/css" rel="stylesheet" href="<%=cp %>/project3/css/scroll.css" />
<link type="text/css" rel="stylesheet" href="<%=cp %>/project3/css/header1.css" /><!-- 나만 -->
<link type="text/css" rel="stylesheet" href="<%=cp %>/project3/css/shopbrand.css" /> <!-- 나만 -->
<link type="text/css" rel="stylesheet" href="<%=cp %>/project3/css/footer1.css" />
<link type="text/css" rel="stylesheet" href="<%=cp %>/project3/css/common.css" /> 
<link type="text/css" rel="stylesheet" href="<%=cp %>/project3/css/main.css" /> 
<link type="text/css" rel="stylesheet" href="<%=cp %>/project3/css/header3.css" /> 
<link type="text/css" rel="stylesheet" href="<%=cp %>/project3/css/shopdetail.css" /> 

<!--  paging footer -->
<link type="text/css" rel="stylesheet" href="<%=cp%>/board/css/list.css"/>





<script type="text/javascript" src="<%=cp %>/project3/js/common.js"></script>
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




<div>
	<!--  rats in the dessert -->
	<a href=""><img src="<%=cp %>/project3/image/210305_epogall_01 (1).jpg" class="cat_topbanner"></a>
</div>
<div class="cat_topbanner_txt"> <!--  아랫 글 링크 -->
<a href="http://espionage.co.kr/board/board.html?code=zooyork77_image6&page=1&type=v&board_cate=&num1=999866&num2=00000&number=106&lock=N">ESPIONAGE 2021 S/S 'RATS IN THE DESERT'
<br>
<span>PART 01 OFFICIAL LOOK</span>
<br>
CLICK TO FEATURE</a></div><div id='blk_scroll_wings'><script type='text/javascript' src='/html/shopRbanner.html?param1=1' ></script></div>
<div id='cherrypicker_scroll'></div>
<div id="wrap">

</div>
<script type="text/javascript" src="/js/unit_header.js"></script>


<script type="text/javascript" src="<%=cp %>/project3/js/header1.js"></script>
	<!--  common.css -->
    <div id="contentWrapper" >
        <div id="contentWrap">
        	<div id ="left_menu">
        	
        	</div><!--  left_menu -->
        		<div id="content" >
        		<!--  shopbrand.css -->
                <div id="prdBrand">
                
                <!--  중분류 -->
                <!--  common.css -->
        		<div class="cate-wrap">
					<dl class="class-list">
						<dd style="padding-bottom:30px;"><ul class="mcate">
	 							<li><a href="<%=cp%>/shop/shopbrand.do" >All&nbsp;ITEM</a></li> 
	 							 <li><a href="<%=cp%>/shop/shopbrand.do?searchKey=pKIND&searchValue=4">OUTER</a></li> 
	 							 <li><a href="<%=cp%>/shop/shopbrand.do?searchKey=pKIND&searchValue=3">SHIRT</a></li> 	       
	 							<li><a href="<%=cp%>/shop/shopbrand.do?searchKey=pKIND&searchValue=1">PANTS</a></li>	 							  
	 							<li><a href="<%=cp%>/shop/shopbrand.do?searchKey=pKIND&searchValue=2">HEADWEAR</a></li> 								                                             												
								<li><a href="<%=cp%>/shop/shopbrand.do?searchKey=pKIND&searchValue=5">BAG</a></li>
								<li><a href="<%=cp%>/shop/shopbrand.do?searchKey=pKIND&searchValue=6">ACC</a></li>							
							</ul>
							</dd>
							</dl><!-- .class-list -->
							</div><!-- .cate-wrap -->
							</div>
							</div>
							</div></div>
        				
							<!-- image 게시판  -->
							<center>
							<table width="600" align="center" border="0" cellspacing="0" cellpadding="0">	
							
							<tr>
<!--  i=0;i<=3;i++ -->
<c:set var = "a" value="0"></c:set>
<c:forEach var="dtob" items="${lists }">

			<td  align="center" width="200" style="border: 1px;" colspan="1">
				
				<a href= "<%=cp%>/shop/shopClothes1.do?pID=${dtob.pID }&pKIND=${dtob.pKIND }&pPRICE=${dtob.pPRICE }
				&pINFO=${dtob.pINFO }&pOFFICIAL=${dtob.pOFFICIAL }&pNPAY=${dtob.pNPAY }&pIMAGE=${dtob.pIMAGE }
				&pDESC=${dtob.pDESC }&pNAME=${dtob.pNAME }&pCONTENT=${dtob.pCONTENT }" > 
				<img src="${imagePath }/${dtob.pCONTENT }" width="220" height="220"/><br/></a>
				<img src="${imagePath }/${dtob.pFOOTNOTE }" width="200" height="150"/><br/>
				<br/><br/>
			 	<%-- <a href="delete.do?pID=${dto.pID }"> 삭제</a>   --%>
			</td>
		<c:set var="a" value="${a+1 }"></c:set>
			<c:if test="${a==4 }">
				</tr><tr>
				<c:set var="a" value="0"></c:set>
			</c:if>
</c:forEach>
</tr>

</table>


	<div id="footer">
		<c:if test="${dataCount!=0 }">
			${pageIndexList }
		</c:if>
		<c:if test="${dataCount==0 }">
			등록된 게시물 없음 
		</c:if>
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
						<li>ABOUT US</li>
						<li>TERMS &
								CONDITIONS</li>
						<li>PRIVACY POLICY</li>
						<li><a
							href="http://www.ftc.go.kr/info/bizinfo/communicationList.jsp">BUSINESS
								LICENSE</a></li>
						<li>INTERNATIONAL
								ORDER</li>
					</ul>
				</div>
			</div>
			<!-- .foot_cs -->
			<!-- 고객센터// -->
			<!-- 가이드 -->
			<div class="foot_right">
				<img src="<%=cp %>/project3/image/bottom_logo.jpg">
			</div>
			<!-- .foot_right -->
			<!-- 가이드// -->

		</div>
		<!-- #footer -->
	</div>				
							

	 				

</center>
</body>
</html>