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

<script type="text/javascript" src="<%=cp%>/project3/js/jquery.js"></script>
<script type="text/javascript" src="<%=cp%>/project3/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=cp%>/project3/js/js1.js"></script>
<script type="text/javascript" src="<%=cp%>/project3/js/js2.js"></script>

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




<div id="contentWrapper">
	<div id="contentWrap">
		<div id="left_menu"></div>
		<div id="content">
			<div class="title_board" style="margin-bottom:0px;">
				<h2>Q&A</h2>
			</div>
			<div id="bbsData">
				<div class="page-body">

						<c:if test="${!empty dto.qsaveFileName }">
						<dl class="prd-tinfo">
							<dt>
								<img src="${imagePath }/${dto.qsaveFileName }" height="180" align="middle" />
							</dt>
							<dd>
								<ul>
									<li class="name"><span class="tit">상 품 명:</span>${dtob.pNAME }
									<span class="MK-product-icons">
									</span>
									<!--/coupon_icon/--></li>
									<li class="price"><span class="tit">상품가격:</span><strong>${dtob.pPRICE }</strong></li>
								</ul>
							</dd>
						</dl>
						</c:if>

						<div class="bbs-table-view">
						<table summary="게시글 보기">
							<caption>게시글 보기</caption>
							<thead>
								<tr>
									<th><div class="tb-center">
									${dto.qsubject}
									<span class='reply_status reply_NONE'></span></div></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="line">
										<div class="cont-sub-des">
											<div>
												<span><em>DATE :</em> ${dto.qdate}</span>
											</div>
											<div>
												<span><em>NAME :</em> ${dto.qname}</span>
											</div>
											<div class="hit"><span><em>HITS :</em> ${dto.qhits}</span></div>
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<div class="data-bd-cont">
										${dto.qcontent}
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						
						<div style="clear:both; width:100%; border-top:1px solid #000;"></div>
                        <div class="view-link">
                        	<dl class="bbs-link con-link">
                        		<dt></dt>
                        		<dd></dd>
                        	</dl>
                        	<dl class="bbs-link" style="float: right;">
                        		<dt></dt>
                                <dd>
                                	<a href="<%=cp %>/shop/updated.do?qnum=${dto.qnum}&${params}" class="none"><img src="<%=cp %>/project3/image/sub_btn_05.gif" /></a>
                                    <a href="<%=cp %>/shop/deleted_ok.do?qnum=${dto.qnum}&${params}"><img src="<%=cp %>/project3/image/sub_btn_06.gif" /></a>
                                    <a href="<%=cp %>/shop/qna.do"><img src="<%=cp %>/project3/image/sub_btn_02.gif" /></a>
                                </dd>
                        	</dl>
                        </div>
                        
					</div>
				</div><!-- .page-body -->
			</div><!-- #bbsData -->
		</div><!-- #content -->
	</div><!-- #contentWrap -->
</div><!-- #contentWrapper-->

</body>
</html>