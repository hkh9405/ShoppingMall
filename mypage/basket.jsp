<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.project3.CartDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="com.project3.CustomInfo"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();	
	
	DecimalFormat df = new DecimalFormat("###,###");
	
	List<CartDTO> clists = (ArrayList<CartDTO>)request.getAttribute("clists");
	List<CartDTO> wlists = (ArrayList<CartDTO>)request.getAttribute("wlists");
	
	Iterator<CartDTO> cit = null;
	Iterator<CartDTO> wit = null;
	
	if(clists!=null) {
		cit = clists.iterator();
		
	}
	
	if(wlists!=null) {
		wit =wlists.iterator();
		
	}
	
	int ptotal=0;
	int mtotal=0;
	int mileage=0;
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주문 내역</title>
<!-- 테두리 -->

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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


<link rel="stylesheet" type="text/css" href="<%=cp %>/project3/mypage/css/mp_main.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp %>/project3/mypage/css/basket.css"/>

<script type="text/javascript">

	function sendIt() {
		if (confirm('장바구니를 비우시겠습니까?')) {
			var f = document.myForm;
			
			f.action = "<%=cp%>/shop/deleteAllCart.do";
			f.submit();
		}
	}	
	
	function go_wish(i) {		
		if (document.getElementById('basket_form' + i )) {
            var _form = document.getElementById('basket_form' + i);
        } else {
            var _form = (document.getElementsByName('forms'))[i];
        }			
		_form.action = "<%=cp%>/shop/wishlist_ok.do";
		_form.submit();
	}
	
	function go_cart(i) {		
		if (document.getElementById('wishlist_form' + i )) {
            var _form = document.getElementById('wishlist_form' + i);
        } else {
            var _form = (document.getElementsByName('forms'))[i];
        }
		_form.action = "<%=cp%>/shop/basket_ok.do";
		_form.submit();
	}
	
	function sizeChange(i) {
		
		if (document.getElementById('basket_form' + i)) {
			var sform = document.getElementById('basket_form' + i);
		} else {
			var sform = (document.getElementsByName('forms'))[i];
		}
		var selector = document.querySelector('.choice_sized');
	
		var size = selector.options[selector.selectedIndex].value;
		
		sform.action = "<%=cp%>/shop/updateSized_ok.do";
		
		sform.submit();
		
	}
	choice_size
	
	function del_udp(i,temp) {
		if (document.getElementById('basket_form' + i )) {
            var cform = document.getElementById('basket_form' + i);
        } else {
            var cform = (document.getElementsByName('forms'))[i];
        }
		
		if (document.getElementById('wishlist_form' + i )) {
            var wform = document.getElementById('wishlist_form' + i);
        } else {
            var wform = (document.getElementsByName('forms'))[i];
        }	
		
		if(temp =='cdel') {
			if (confirm('장바구니에서 삭제하시겠습니까?')) {
				cform.action = "<%=cp%>/shop/deleteCart.do";
				cform.submit();
				return;
			}			
		}
		
		if(temp =='cudp') {
			cform.action = "<%=cp%>/shop/updateCart.do";
			cform.submit();
			return;
		}
		
		if(temp =='wdel') {
			if (confirm('Wish List에서 삭제하시겠습니까?')) {
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
	
	function count_change(change_type, idx) {

		if (document.getElementById('basket_form' + idx)) {
			var _form = document.getElementById('basket_form' + idx);
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
	<h2>CART</h2>
	</div>
	<div id="cartWrap">
		<div class="page-body">
			<div class="table-cart table-fill-prd">
			<table summary="번호, 사진, 제품명, 수량, 적립금, 가격, 배송비, 취소">
			<caption>장바구니 담긴 상품</caption>
			<colgroup>
				<col width="50" />
				<col width="100" />
				<col width="*" />
				<col width="100" />
				<col width="100" />
				<col width="100" />
				<col width="90" />
				<col width="80" />
			</colgroup>
			<thead>
			<tr>
				<th scope="col"><div class="tb-center">no.</div></th>
				<th scope="col"><div class="tb-center">product</div></th>
				<th scope="col"><div class="tb-center">title</div></th>
				<th scope="col"><div class="tb-center">size</div></th>
				<th scope="col"><div class="tb-center">quantity</div></th>
				<th scope="col"><div class="tb-right">mileage</div></th>
				<th scope="col"><div class="tb-right">price</div></th>				
				<th scope="col"><div class="tb-center">cancel</div></th>
			</tr>
			</thead>
			<tbody>			
			<c:choose>
				<c:when test="${!empty clists}">						
					<c:set var="i" value="1"/>
					<% while(cit.hasNext()) {
						
							CartDTO dto = cit.next();					
												
							ptotal += dto.getPrice()*dto.getQty();							
							mtotal += dto.getMileage()*dto.getQty();							
					%>
					<form action="" method="post" name="updateForm" id="basket_form${i}">
						<input type="hidden" name="cno" value="<%=dto.getNo() %>" />
						<input type="hidden" name="product" value="<%=dto.getProduct() %>" />	
					<% if (dto.getSized()!=null) { %>				
						<input type="hidden" name="sized" value="<%=dto.getSized() %>" />
					<% } %>	
						<input type="hidden" name="title" value="<%=dto.getTitle() %>" />
						<input type="hidden" name="mileage" value="<%=dto.getMileage() %>" />
						<input type="hidden" name="price" value="<%=dto.getPrice() %>" />								
					<tr>
						<td>										
						<div class="tb-center">${i}</div>
						</td>						
						<td><div class="tb-center"><div class="thumb">
						<a href="<%=cp %>study/shop/shopClothes1.do?pID=10&pKIND=3&pPRICE=96000&pINFO=ninfo.png&pOFFICIAL=noffcial.png&pNPAY=333.png&pIMAGE=image.png&pDESC=desc.png&pNAME=Granpa%20Over%20Shirts%20Blue%20Check&pCONTENT=j.jpg">
						<img src="<%=cp %>/shopProject/imageList/<%=dto.getProduct() %>"/></a>
							</div></div>
						</td>
						<td><div class="tb-left">						
								<a href="<%=cp %>study/shop/shopClothes1.do?pID=10&pKIND=3&pPRICE=96000&pINFO=ninfo.png&pOFFICIAL=noffcial.png&pNPAY=333.png&pIMAGE=image.png&pDESC=desc.png&pNAME=Granpa%20Over%20Shirts%20Blue%20Check&pCONTENT=j.jpg">
								<%=dto.getTitle() %>
								</a>
								<span class="MK-product-icons"><img src="<%=cp %>/project3/mypage/images/513.jpg" class="MK-product-icon-2" /></span>
						</div></td>
						<td>
						<% if (dto.getSized()!=null) { %>
							<div class="tb-center">
							<div class="amount">
							
							<select id="isized" name="nsized" class="choice_sized" >
								<% if(dto.getSized().equals("M")) { %>								
									<option value='M' selected>M</option>
									<option value='L' >L</option>
									<option value='XL' >XL</option>
								<% } %>	
								<% if(dto.getSized().equals("L")) { %>								
									<option value='M' >M</option>
									<option value='L' selected>L</option>
									<option value='XL' >XL</option>
								<% } %>	
								<% if(dto.getSized().equals("XL")) { %>								
									<option value='M' >M</option>
									<option value='L' >L</option>
									<option value='XL' selected>XL</option>
								<% } %>	
							</select>						
							<a href="javascript:sizeChange(${i});" class="amount-btn">
							<img src="<%=cp %>/project3/mypage/images/sub_btn_05.gif" alt="수정" title="수정" /></a>							
							</div>
						<% }else  {%>	
							<div class="tb-center" >선택사항</br>없음</div>
						<% } %>	
						</div></td>
						<td><div class="tb-center">
							<div class="amount">
								<input type="text" name="amount" value="<%=dto.getQty() %>" />
								<a href="javascript:count_change(0,${i});" class="amount-up">
								<img src="<%=cp %>/project3/mypage/images/arrow_w7_h4_top.gif" alt="수량증가" title="수량증가" /></a>
								
								<a href="javascript:count_change(1,${i});" class="amount-dw">
								<img src="<%=cp %>/project3/mypage/images/arrow_w7_h4_bottom.gif" alt="수량감소" title="수량감소" /></a>
							
								<a href="javascript:del_udp(${i},'cudp');" class="amount-btn">
								<img src="<%=cp %>/project3/mypage/images/sub_btn_05.gif" alt="수정" title="수정" /></a>
							</div>
						</div></td>
						<td><div class="tb-right">￦<%=df.format(dto.getMileage() * dto.getQty()) %></div></td>
						<td><div class="tb-right tb-bold tb-price" id="numberFormat_c">￦<%=df.format(dto.getPrice()*dto.getQty()) %></div></td>
						<td><div class="tb-center">
							<span class="d-block" style="padding: 0px 0px 3px;"><a href="javascript:go_wish(${i });">
								<img src="<%=cp %>/project3/mypage/images/sub_btn_30.gif" alt="관심상품" title="관심상품" />
							</a></span>
							<span class="d-block" style="padding: 0px 0px 3px;"><a href="javascript:del_udp(${i},'cdel');">
								<img src="<%=cp %>/project3/mypage/images/sub_btn_06.gif" alt="삭제" title="삭제" />
							</a></span>
							</div>
						</td>
					</tr>
					<c:set var="i" value="${i+1 }"/>
					</form>
					<% }%>
				</c:when>
				<c:otherwise>
				<tr>
					<td colspan="8">
					<div class="tb-center" style="padding:30px 0;"><B>장바구니가 비어 있습니다.</B></div>
					</td>
 				</tr>				
				</c:otherwise>			
			</c:choose>
			</tbody>
			<tfoot>
				<c:set var="cost" value="0"/>
				<c:if test="${!empty clists}">	
				<%
					String pricetotal = df.format(ptotal);
					String mileagetotal = df.format(mtotal);	
				%>		
					<tr>
						<td colspan="8">
							<div class="tb-right fstyle" style="padding-right: 0px;">
								총 구매금액 : ￦<%=pricetotal %> = <strong>￦<%=pricetotal %></strong>(적립금 ￦<%=mileagetotal %>)
							</div>
						</td>
					</tr>
				</c:if>	
			</tfoot>
			</table>
		</div>		
		<!-- .table-fill-prd -->
		
		<c:if test="${!empty sessionScope.customInfo.id }">	
		<div class="mem-lvl">
			<div class="lvl-img"><img src="<%=cp %>/project3/mypage/images/mypage_goldmember.gif" /></div>
				<p>${sessionScope.customInfo.name }님은 기본배송비가 무료인 <em>[Level.1]</em>회원입니다.<br />
				<span class="MS_group_content">
				<span class="MS_group_hname">${sessionScope.customInfo.name }</span>
				<span class='username'>님</span>이
				<span class="MS_group_maxmoney">1,000원 이상</span>
				<span class="MS_group_condition"></span>구매시, <span class="MS_group_msg">구매금액의 <font color=#F26622>0</font>%를 <font color=#F26622>추가 할인</font>해 드립니다. </span>                            </p>
		</div>
		</c:if>
			<!-- .mem-lvl -->
			<form action="" method="post" name="myForm">
			<div class="btn-order-ctrl">
				<c:if test="${empty clists}">
				<a href="javascript:alert('주문이 가능한 금액이 아닙니다.고객센터에 문의 바랍니다.')">
				</c:if>
				<c:if test="${!empty clists}">				
				<a href="<%=cp %>/shop/orders.do">
				</c:if>
				<img src="<%=cp %>/project3/mypage/images/sub_btn_34.gif" alt="주문하기" title="주문하기" name="default" /></a>
				<a href="/html/mainm.html"><img src="<%=cp %>/project3/mypage/images/sub_btn_39.gif" alt="계속쇼핑하기" title="계속쇼핑하기" /></a>
				<a href="javascript:sendIt();"><img src="<%=cp %>/project3/mypage/images/sub_btn_35.gif" alt="장바구니 비우기" title="장바구니 비우기" /></a>
			
			</div>
			</form>
				
		<c:if test="${!empty sessionScope.customInfo.id }">	
			<div style="float:right; padding-top:20px; padding-left:20px;"></div>
			<div style="float:right; padding-top:20px;  padding-left:20px;"><div id='kakaopay_order_btn'><a href="<%=cp %>/shop/orders.do?direct_order=kakaopay_direct">
			<img src='<%=cp %>/project3/mypage/images/kakao_A1.png'></a></div></div>
			<div style="float:right; padding-top:20px;  padding-left:20px;"></div>		
			<h3 class="tit-cart">WISH LIST</h3>
			<div class="table-cart table-fill-prd">
				<table summary="사진, 제품명, 수량, 적립금, 재고, 가격, 처리">
				<caption>관심상품</caption>
				<colgroup>
					<col width="70" />
					<col width="*" />
					<col width="100" />
					<col width="80" />
					<col width="90" />
					<col width="90" />
					<col width="90" />
				</colgroup>
				<thead>
				<tr>
					<th scope="col"><div class="tb-center">img</div></th>
					<th scope="col"><div class="tb-center">title</div></th>
					<th scope="col"><div class="tb-center">quantity</div></th>
					<th scope="col"><div class="tb-center">mileage</div></th>
					<th scope="col"><div class="tb-center">stock</div></th>
					<th scope="col"><div class="tb-center">price</div></th>
					<th scope="col"><div class="tb-center">state</div></th>
				</tr>
				</thead>
				<tbody>
					<c:if test="${!empty wlists }">					
					<c:set var="j" value="1"/>
					<%
						while(wit.hasNext()) {
						CartDTO dto = wit.next();					
												
						ptotal += dto.getPrice();
						mtotal += (dto.getPrice()*0.03);
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
						<input type="hidden" name="page" value="c" />			
					<tr class="nbg">
						<td>												
							<div class="tb-center">
							<div class="thumb">
							<a href="<%=cp %>study/shop/shopClothes1.do?pID=10&pKIND=3&pPRICE=96000&pINFO=ninfo.png&pOFFICIAL=noffcial.png&pNPAY=333.png&pIMAGE=image.png&pDESC=desc.png&pNAME=Granpa%20Over%20Shirts%20Blue%20Check&pCONTENT=j.jpg">
							<img src="<%=cp %>/shopProject/imageList/<%=dto.getProduct() %>"/></a>												
							</div>
						</div></td>
						<td>
						<div class="tb-left">
							<a href="<%=cp %>study/shop/shopClothes1.do?pID=10&pKIND=3&pPRICE=96000&pINFO=ninfo.png&pOFFICIAL=noffcial.png&pNPAY=333.png&pIMAGE=image.png&pDESC=desc.png&pNAME=Granpa%20Over%20Shirts%20Blue%20Check&pCONTENT=j.jpg">
								<%=dto.getTitle() %></a>
						</div>
							<% if(dto.getSized()!=null) {  %>
							<div class="tb-left">
							<span class="wish-opt"><% out.print("[SIZE : " + dto.getSized() + " ]"); %>
							</span>
							</div>
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
						<td><div class="tb-center">￦<% out.print(df.format(dto.getMileage() * dto.getQty())); %></div></td>
						<td><div class="tb-center">있음</div></td>
						<td><div class="tb-center tb-bold">￦<% out.print(df.format(dto.getPrice() * dto.getQty())); %></div></td>
						<td><div class="tb-center">
							<span class="d-block"><a href="javascript:go_cart(${j }, 'ins');">
								<img src="<%=cp %>/project3/mypage/images/sub_btn_43.gif" alt="장바구니" title="장바구니" />
							</a></span>
							<span class="d-block"><a href="javascript:del_udp(${j },'wdel');">
								<img src="<%=cp %>/project3/mypage/images/sub_btn_06.gif" alt="삭제" title="삭제" />
							</a></span>
							</div>
						</td>
					</tr>
					<c:set var="j" value="${j+1 }"/>
					</form>
					<% } %>
					</c:if>
				</tbody>
				</table>
			</div>
		</c:if>			
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



