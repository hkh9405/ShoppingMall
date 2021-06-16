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

<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/css/common.css"/>
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/css/faqStyle.css"/>

<script type="text/javascript" src="<%=cp%>/project3/js/jquery.js"></script>
<script type="text/javascript" src="<%=cp%>/project3/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=cp%>/project3/js/js1.js"></script>
<script type="text/javascript" src="<%=cp%>/project3/js/js2.js"></script>
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/unit_header.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/scroll.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/main.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/header.3.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/footer.1.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/common.css">


<link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css' rel='stylesheet' type='text/css' />
<link href='http://zooyork77.img7.kr/onedesign/mainrolling/nerveSlider.min.css' rel='stylesheet' type='text/css' />
<link href='http://cdn.rawgit.com/young-ha/webfont-archive/20161201/css/Arita-dotum.css' rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" type="text/css" href="http://cdn015.negagea.net/wherehouse/2018/webstore/feature/staffsnap/css/pgwslider.css" />

<script type="text/javascript">

	function sendIt() {
		
		var f = document.searchForm;
		
		f.action = "<%=cp%>/shop/qna.do";
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







<br/><br/><br/>



<div id="contentWrapper">
	<div id="contentWrap">
		<div id="left_menu"></div>
		<!--left_menu -->
		
		<div id="content">
			<div class="title_board" style="margin-bottom:0px;">
				<h2>Q&A</h2>
			</div>
			
			<div id="bbsData">
				<div class="page-body">
					<div class="bbs-table-list">
						<table summary="No, content,Name,Data,Hits">
							<caption>일반게시판 게시글</caption>
								<colgroup>
									<col width="70" />
									<col width="30" />
			                        <!-- .상품정보가 있을 경우에만 나타남 -->
			                        <col width="90"/>
			                        <col width="*" />
			                        <col width="110" />
			                        <col width="90" />
			                        <col width="60" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col"><div class="tb-center">No.</div></th>
										<th scope="col"><div class="tb-center">&nbsp;</div></th>
		                                <th scope="col"><div class="tb-center">Product</div></th>
		                                <th scope="col"><div class="tb-center">Content</div></th>
		                                <th scope="col"><div class="tb-center">Name</div></th>
		                                <th scope="col"><div class="tb-center">Date</div></th>
		                                <th scope="col"><div class="tb-center">Hits</div></th>
									</tr>
								</thead>
								
								
								<tbody>
								<c:forEach var="dto" items="${lists }">
									<tr>
									
										<td><div class="tb-center">${dto.qnum}</div></td>
										<td><div class="tb-left"><img src="<%=cp%>/project3/image/neo_lock.gif"></div></td>
										<td><div class="tb-left">
										<c:if test="${empty dto.qsaveFileName }">
										<img src ="<%=cp %>/project3/image/null.gif" height="50" align="middle"/>
										</c:if>
										<c:if test="${!empty dto.qsaveFileName }">
										<img src ="${imagePath }/${dto.qsaveFileName }" height="50" align="middle"/>
										</c:if>									
										</div></td>
										
										<td>
											<div class="tb-left">
												<img src = "<%=cp %>/project3/image/neo_head.gif" style="padding-left: 00px;"/><!-- 답변에는 이미지가 없어,, -->
												<a href="${articleUrl}&qnum=${dto.qnum}&pCONTENT=${dto.qsaveFileName }">${dto.qsubject }</a> <!-- 문의제목쓰기 -->
											</div>
										</td>
										<td>
											<div class="tb-center">
												<div class='video-writer' style='padding-left:2px; padding-right:2px;' 
												onMouseover="document.getElementById('MK_searchId_952686_00000').style.display='block'" 
												onMouseout="document.getElementById('MK_searchId_952686_00000').style.display='none'">
												${dto.qname}
												</div>
											</div>
										</td>
										<td><div class="tb-center">${dto.qdate}</div></td>
                                		<td><div class="tb-center">${dto.qhits}</div></td>
									</tr>

									</c:forEach>
								</tbody>
								
						</table>
					</div>
					
					<div class="bbs-sch">
						<form action="<%=cp %>/shop/qna.do" name="searchForm">

						<fieldset>
							<legend>게시판 검색 폼</legend>
								<select name="searchKey" style="border:1px solid #d9d9d9; width: 50px; height: 24px">
									<option value="qname">이름</option>
									<option value="qsubject">제목</option>
									<option value="qcontent">내용</option>
								</select>
                                <span class="key-wrap">
									<input type="text" name="searchValue" class="MS_input_txt"/>
									<a href="javascript:sendIt();">
                                    <img src="<%=cp %>/project3/image/sub_btn_29.gif"/></a>
                                </span>
						</fieldset>
						</form><!-- .검색 폼 끝 -->
					</div><!-- .bbs-sch -->
					
					<dl class="bbs-link bbs-link-btm" style="float: right;">
						<dd>
							<a class="write" href="/study/shop/created.do">
							<img src="<%=cp %>/project3/image/sub_btn_01.gif" alt="글쓰기" title="글쓰기"/></a>
						</dd>
					</dl>
					<div class="paging">
						<ol class="paging">
                            	
                            	<c:if test="${dataCount!=0 }">
									${pageIndexList }
								</c:if>
								<c:if test="${dataCount==0 }">
									등록된 게시물이 없습니다.
								</c:if>
						</ol>
					</div>
					
					
				</div><!-- .page-body -->
			</div><!-- #bbsData -->
			
		</div><!-- #content -->
		
	</div><!-- #contentWrap -->
</div><!-- #contentWrapper-->


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