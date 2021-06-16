<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.project3.CartDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	DecimalFormat df = new DecimalFormat("###,###");
	
	List<CartDTO> wlists = (ArrayList<CartDTO>)request.getAttribute("wlists");
	
	int size = wlists.size();
	
	Iterator<CartDTO> wit = wlists.iterator();
	
	int ptotal=0;
	int mtotal=0;
	int mileage=0;
	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<link href="<%=cp%>/project3/login/img/icon.png" rel="shortcut icon" type="image/x-icon">
<title>주문 내역</title>
<!-- 테두리 -->
<script language="JavaScript"> 
function bluring(){
if(event.srcElement.tagName=="A"||event.srcElement.tagName=="IMG") document.body.focus();
}
document.onfocusin=bluring;
</script>

<link type="text/css" rel="stylesheet" href="/shopimages/zooyork77/template/work/37329/common.css?r=1616560623" />
<link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css' rel='stylesheet' type='text/css' />
<link href='http://zooyork77.img7.kr/onedesign/mainrolling/nerveSlider.min.css' rel='stylesheet' type='text/css' />
<link href='http://cdn.rawgit.com/young-ha/webfont-archive/20161201/css/Arita-dotum.css' rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" type="text/css" href="http://cdn015.negagea.net/wherehouse/2018/webstore/feature/staffsnap/css/pgwslider.css" />



<link rel="stylesheet" type="text/css" href="<%=cp %>/project3//mypage/css/common.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp %>/project3//mypage/css/mp_main.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp %>/project3//mypage/css/mp_product.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp %>/project3//mypage/css/basket.css"/>


<script type="text/javascript">

	function go_cart(i) {
		
		if (document.getElementById('wishlist_form' + i )) {
			var _form = document.getElementById('wishlist_form' + i);
		} else {
			var _form = (document.getElementsByName('forms'))[i];
  		}
		
		alert('장바구니에 상품을 담습니다.');
		alert('1개의 상품이 장바구니에 담겼습니다.');
		
			_form.action = "<%=cp%>/shop/basket_ok.do";
			_form.submit();
	}
	
	function del_udp(i,temp) {
		
		if (document.getElementById('wishlist_form' + i )) {
            var wform = document.getElementById('wishlist_form' + i);
        } else {
            var wform = (document.getElementsByName('forms'))[i];
        }
		
		if(temp =='wdel') {
			if (confirm('Wish List 상품이 삭제되었습니다.')) {
				wform.action = "<%=cp%>/shop/deleteWishList.do";
				wform.submit();
				return;
			}
		}
		
		if(temp =='wudp') {			
			wform.action = "<%=cp%>/shop/updateWishList.do";
			wform.submit();
			return;
		}
	}
	
	function chk_del() {
		var chk = 0;
		var chk_arr = new Array();
		var size = document.getElementsByName("brchks").length;
		for (i = 0; i < size; i++) {
			if(document.getElementsByName("brchks")[i].checked){
			chk++;
			}
		}
		
		if(chk==0) {
			alert("선택한 상품이 없습니다.");
			return;
		}
		
		if (confirm('Wish List 상품이 삭제되었습니다.')) {
			
			
			
			
			
			var f = document.wishlist_form1;
			f.action = "<%=cp%>/shop/deleteWishList.do?data=" + data;
			f.submit();
		}		
	}
	
	function wcount_change(change_type, idx) {
		
		if (document.getElementById('wishlist_form' + idx)) {
			var _form = document.getElementById('wishlist_form' + idx);
		} else {
			var _form = (document.getElementsByName('forms'))[idx];
		}
		var amount = parseInt(_form.amount.value);
		if (typeof _form.min_add_amount == 'undefined') {
			var min_add_amount = 1;
		} else {
			var min_add_amount = parseInt(_form.min_add_amount.value);
		}
		if (change_type == 0) {
			amount += min_add_amount;
		} else if (change_type == 1) {
			if (amount > 1) {
				amount -= min_add_amount;
			}
		}
		if ((amount % min_add_amount) != 0) {
			amount = Math.floor(amount / min_add_amount) * min_add_amount;
			if (amount == 0)
				amount = min_add_amount;
		}
		_form.amount.value = amount;
	}
	
	var checkFlag = 'false'; // false면 전체선택, true이면 전체해제

	function all_brand_check() {

		var size = document.getElementsByName("brchks").length;

		if (checkFlag == 'false') {

			for (i = 0; i < size; i++) {
				document.getElementsByName("brchks")[i].checked = true;
			}
			checkFlag = "true";
			return "전체 해제"; // 버튼객체의 value속성으로 반환(this.value.list로 넘겨져왔기 때문에)
		
		} else {

			for (i = 0; i < size; i++) {
				document.getElementsByName("brchks")[i].checked = false;				
			}		
			checkFlag = "false";
			return "전체 선택"; // 버튼객체의 vaule속성으로 반환
		}	
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
<div id="content">
	<div class="title_etc">
		<h2>WISHLIST</h2>
	</div>
	<div class="mytitle2">
		<ul>
			<li><a href="<%=cp %>/shop/myorder.do">주문조회</a> </li>
			<li><a href="<%=cp %>/shop/mywishlist.do">관심상품</a></li>
			<li><a href="<%=cp %>/shop/myreserve.do">적립금</a></li>	
		</ul>	
	</div>
	<div id="myWish">
		<div class="page-body">
		<p class="t-box-msg">
		<strong>${sessionScope.customInfo.name }</strong>님이 쇼핑몰에서 보관한 상품 내역입니다.
		</p>
			<div class="table-d2-list">
				<table summary="사진,  상품명, 수량, 재고, 적립금, 가격, 장바구니">
				<caption>예치금 내역</caption>
				<colgroup>
					<col width="35" />
					<col width="100" />
					<col width="*" />
					<col width="65" />
					<col width="65" />
					<col width="65" />
					<col width="85" />
					<col width="95" />
				</colgroup>
				
				<thead>
				<tr>
					<th scope="row"><div class="tb-center" id="">
					<!--input type="checkbox" class="chk-rdo" /-->
					<input type="checkbox" name="all_brchk" onclick="all_brand_check();" id="allchk" />
					</div></th>
					<th scope="row"><div class="tb-center">사진</div></th>
					<th scope="row"><div class="tb-center">상품명</div></th>
					<th scope="row"><div class="tb-center">수량</div></th>
					<th scope="row"><div class="tb-center">재고</div></th>
					<th scope="row"><div class="tb-center">적립금</div></th>
					<th scope="row"><div class="tb-center">가격</div></th>
					<th scope="row"><div class="tb-center">장바구니</div></th>
				</tr>
				</thead>
				<tbody>
				<c:choose>
					<c:when test="${!empty wlists }">								
					<c:set var="j" value="1"/>
					<%
					while(wit.hasNext()) {
						CartDTO dto = wit.next();					
												
						ptotal += dto.getPrice()*dto.getQty();
						mtotal += dto.getMileage()*dto.getQty();
					%>					
					<form action="" method="post" name="wishlist" id="wishlist_form${j }">					
						<input type="hidden" name="wno" value="<%=dto.getNo() %>" />
						<input type="hidden" name="product" value="<%=dto.getProduct() %>" />
					<% if (dto.getSized()!=null) { %>				
						<input type="hidden" name="sized" value="<%=dto.getSized() %>" />
					<% } %>	
						<input type="hidden" name="title" value="<%=dto.getTitle() %>" />
						<input type="hidden" name="mileage" value="<%=dto.getMileage() %>" />
						<input type="hidden" name="price" value="<%=dto.getPrice() %>" />
						<input type="hidden" name="page" value="m" />			
					<tr class="nbg">
						<td><div class="tb-center">
							<input type="checkbox" name="brchks" value="<%=dto.getNo() %>"  onclick="" />
							</div>
						</td>
						<td>				 								
							<div class="tb-center">							
							<a href="<%=cp %>study/shop/shopClothes1.do?pID=10&pKIND=3&pPRICE=96000&pINFO=ninfo.png&pOFFICIAL=noffcial.png&pNPAY=333.png&pIMAGE=image.png&pDESC=desc.png&pNAME=Granpa%20Over%20Shirts%20Blue%20Check&pCONTENT=j.jpg">
						<img src="<%=cp %>/shopProject/imageList/<%=dto.getProduct() %>" style="width: 84px; height: 84px;" /></a>
						</div></td>
						<td><div class="tb-left"><% out.print(dto.getTitle()); %></div>							
							<% if(dto.getSized()!=null) {%>
							<div class="tb-left"><span class="wish-opt"><% out.print("[SIZE : " + dto.getSized() + " " + dto.getQty() + " 개]"); %></span></div>
							<% } %>
						</td>
						<td><div class="tb-center">
							<div class="amount" >
								<input type="text" name="amount" value="<%=dto.getQty() %>" />
								<a href="javascript:wcount_change(0,${j});" class="amount-up">
								<img src="<%=cp %>/project3/mypage/images/arrow_w7_h4_top.gif" alt="수량증가" title="수량증가" /></a>
								
								<a href="javascript:wcount_change(1,${j});" class="amount-dw">
								<img src="<%=cp %>/project3/mypage/images/arrow_w7_h4_bottom.gif" alt="수량감소" title="수량감소" /></a>
							
								<a href="javascript:del_udp(${j},'wudp');" class="amount-btn">
								<img src="<%=cp %>/project3/mypage/images/sub_btn_05.gif" alt="수정" title="수정" /></a>
							</div>
						</div></td>
						<td><div class="tb-center">있음</div></td>
						<td><div class="tb-center"><% out.print(df.format(dto.getMileage() * dto.getQty())); %></div></td>
						<td><div class="tb-center tb-bold"><% out.print(df.format(dto.getPrice() * dto.getQty())); %></div></td>
						<td><div class="tb-center">
							<span class="d-block" style="padding: 0px 0px 3px;"><a href="javascript:go_cart(${j }, 'ins');">
								<img src="<%=cp %>/project3/mypage/images/sub_btn_30.gif" alt="장바구니" title="장바구니" />
							</a></span>
							<span class="d-block" style="padding: 0px 0px 3px;"><a href="javascript:del_udp(${j },'wdel');">
								<img src="<%=cp %>/project3/mypage/images/sub_btn_06.gif" alt="삭제" title="삭제" />
							</a></span>
							</div>
						</td>
					</tr>
					<c:set var="j" value="${j+1 }"/>
					</form>
					<% } %>
					</c:when>
					<c:otherwise>
					<tr>
						<td colspan="8"><div class="tb-center">보관하신 상품 내역이	없습니다.</div></td>
					</tr>
					</c:otherwise>
				</c:choose>
				</tbody>				                    
				</table>
			</div>
			<form action="" method="post" name="chklist">
			<div class="btn-foot">
				<a href="javascript: chk_del()"><img src="<%=cp %>/project3/mypage/images/sub_btn_37.gif" alt="선택삭제" /></a>
			</div>
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



