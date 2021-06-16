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
<title>Insert title here</title><!-- 테두리 -->
<link href="<%=cp%>/project3/login/img/icon.png" rel="shortcut icon" type="image/x-icon">

<script language="JavaScript"> 
function bluring(){
if(event.srcElement.tagName=="A"||event.srcElement.tagName=="IMG") document.body.focus();
}
document.onfocusin=bluring;
</script>

<style type="text/css">
/* BASIC css start */
.item-wrap .item-info { padding:0px !important; }

#prdSearch .search-wrap { width: 1200px; height: 141px; margin:0 auto;  background: url(/images/d3/casual_style/common/bg_search_form.gif) no-repeat 0 0; }
#prdSearch .search-wrap .search-hd { margin-left: 210px; margin-top: 0px; }
#prdSearch .search-wrap .search-cont { margin-left: 210px; margin-top: 0px; }
#prdSearch .search-wrap .search-cont th { font-weight: normal; text-align: left; }
#prdSearch .search-wrap .search-cont .input-keyword,
#prdSearch .search-wrap .search-cont .input-price { padding: 1px; border: 1px solid #d1d1d1; margin-right: 0; }
#prdSearch .search-wrap .search-cont .input-keyword { width: 128px; }
#prdSearch .search-wrap .search-cont .input-price { width: 55px; }

.item-order {float:right; width:220px; font:11px "arial"; color:#666;}
.item-order a {font:11px "arial"; color:#666; }

/* 상품데이터 없음 */
.item-wrap .item-none { font-size:15px;  font-weight:bold; color:#000; line-height:25px; text-align:center; text-transform:uppercase; padding:100px 0; }
.item-wrap .item-none span { font-size:12px; font-weight:normal; color:#888; }

/* 총상품갯수,상품정렬 */
.item-info { margin:0px; padding:0; overflow:hidden; text-align:left; line-height:40px; text-transform:uppercase; margin-bottom:20px; font-size:12px; color:#000; }
.item-info .item-order { float:left !important; }
.item-info .item-total { float:right !important; }


.item-info .item-order { display:inline; font-size:0; line-height:0; }
.item-info .item-order li { display:inline-block; *display:inline; *zoom:1; padding:0 !important; font-size:12px; line-height:40px; height:40px; vertical-align:top; }
.item-info .item-order li a { display:inline-block; margin-right:10px; font-weight:normal; color:#000; line-height:40px; cursor:pointer; }
.item-info .item-order li a:hover { color:#000; text-decoration:none; line-height:40px; border-top:2px solid #000; }
.item-info .item-order li:first-child { background:none; }

/* BASIC css end */
</style>

<script language="JavaScript"> 
function bluring(){
if(event.srcElement.tagName=="A"||event.srcElement.tagName=="IMG") document.body.focus();
}
document.onfocusin=bluring;
</script>



<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	


	
</head>

<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/css/abc.css">


<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/unit_header.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/scroll.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/main.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/header.3.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/footer.1.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/common.css">


<script type="text/javascript">

	function sendItt() {
		
		var f = document.searchForm;
		
		f.action = "<%=cp%>/sboard/list.do";
		f.submit();
		
	}

</script>


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








<!-- 시작 -->
<script type="text/javascript" src="/shopimages/zooyork77/template/unit/8/unit_header.js"></script>
<script type="text/javascript" src="/shopimages/zooyork77/template/work/37329/header.1.js?t=202006051809"></script>

<div id="contentWrapper">
	<div id="contentWrap">


		<div id="left_menu"></div>
		<!--left_menu -->

		<div id="content">

			<div class="title_product">
				<h2>SEARCH</h2>
			</div>

			<div id="prdSearch">

				<div class="search-wrap" style="display: none;">
					<form name="form_search" id="search_form" action="shopbrand.html"
						method="POST">
						<input type="hidden" name="search_category" value=""> <input
							type="hidden" name="search" value=""> <input
							type="hidden" name="more" value="">
						<fieldset>
							<legend>상품 검색 폼</legend>
							<h3 class="search-hd">검색어: half zip anorak</h3>
							<div class="search-cont">
								<table summary="가격대, 제품명/키워드, 제조사, 상세내용">
									<caption>상품 검색 정보</caption>
									<colgroup>
										<col width="50">
										<col width="160">
										<col width="90">
										<col width="160">
										<col width="">
									</colgroup>
									<tbody>
										<tr>
											<th>가격대</th>
											<td><input type="text" name="money1" form="search_form"
												class="MS_input_txt input-price" size="7" value=""
												onkeydown="moneyfocus(event);"> - <input
												type="text" name="money2" form="search_form"
												class="MS_input_txt input-price" size="7" value=""
												onkeydown="SearchKey(event);"></td>
											<th>제품명/키워드</th>
											<td><input type="text" name="prize1"
												class="MS_input_txt input-keyword" size="16"
												value="half zip anorak" onkeydown="SearchKey(event);"></td>
											<td rowspan="2"><a href="javascript:mk_search();"><img
													src="/images/d3/casual_style/btn/search_prd.gif" alt="검색"
													title="검색"></a></td>
										</tr>
										<tr>
											<th>제조사</th>
											<td><input type="text" name="company1"
												form="search_form" class="MS_input_txt input-keyword"
												size="16" value="" onkeydown="SearchKey(event);"></td>
											<th>상세내용</th>
											<td><input type="text" name="content1"
												form="search_form" class="MS_input_txt input-keyword"
												size="16" value="" onkeydown="SearchKey(event);"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</fieldset>
					</form>
				</div>
				<div class="item-wrap">
					<div class="item-info">
						<div class="item-order">
							<li><a href="javascript:sendsort('price')">best</a></li>
							<li><a href="javascript:sendsort('price')">low</a></li>
							<li><a href="javascript:sendsort('price2')">high</a></li>
							<li><a href="javascript:sendsort('brandname')">name</a></li>
							<li><a href="javascript:sendsort('product')">made</a></li>
						</div>
						<div class="item-total">
							Total <strong>2</strong> product found.
						</div>
					</div>



					<div id="focusebox" class="item-list" style="padding-top: 10px;">
						<table summary="상품이미지, 상품설명, 가격">
							<caption>검색 상품 목록</caption>
							<colgroup>
								<col width="25%">
								<col width="25%">
								<col width="25%">
								<col width="25%">
							</colgroup>
							<tbody>
								<tr>
									<!--  i=0;i<=3;i++ -->
									<c:set var="a" value="0"></c:set>
									<c:forEach var="dtob" items="${lists }">

			<td  align="center" width="200" style="border: 1px;" colspan="1">
				<a href= "<%=cp%>/shop/shopClothes1.do?pID=${dtob.pID }&pKIND=${dtob.pKIND }&pPRICE=${dtob.pPRICE }
				&pINFO=${dtob.pINFO }&pOFFICIAL=${dtob.pOFFICIAL }&pNPAY=${dtob.pNPAY }&pIMAGE=${dtob.pIMAGE }
				&pDESC=${dtob.pDESC }" > 
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
							</tbody>
						</table>
						<%-- <div id="footer">
						<c:if test="${dataCount!=0 }">
							${pageIndexList }
						</c:if>
						<c:if test="${dataCount==0 }">
							등록된 게시물 없음 
						</c:if>
						</div> --%>
						
						
					</div>
					<!-- <div class="item-page">
						<a href="javascript:pagemove(1);" class="now">1</a>
					</div> -->
					<center>
					<div id="footer">
						<c:if test="${dataCount!=0 }">
							${pageIndexList }
						</c:if>
						<c:if test="${dataCount==0 }">
							등록된 게시물 없음 
						</c:if>
					</div>
					</center>
					
				</div>
			</div>
		</div>
		<!-- #prdSearch -->
	</div>
	<!-- #content -->
	<hr>
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