<%@page import="java.text.DecimalFormat"%>
<%@page import="com.project3.CartDTO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();	
	
	DecimalFormat df = new DecimalFormat("###,###");
	
	List<CartDTO> clists = (ArrayList<CartDTO>)request.getAttribute("clists");
	
	Iterator<CartDTO> cit = clists.iterator();
	
	int ptotal=0;
	int mtotal=0;	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고급형 주문서 작성</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<link href="<%=cp%>/project3/login/img/icon.png" rel="shortcut icon" type="image/x-icon">
<!-- 테두리 -->
<script language="JavaScript"> 
function bluring(){
if(event.srcElement.tagName=="A"||event.srcElement.tagName=="IMG") document.body.focus();
}
document.onfocusin=bluring;
</script>

<script type="text/javascript" src="<%=cp %>/project3//mypage//js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=cp %>/project3//mypage//js/lazyload.min.js"></script>

<link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css' rel='stylesheet' type='text/css' />
<link href='http://zooyork77.img7.kr/onedesign/mainrolling/nerveSlider.min.css' rel='stylesheet' type='text/css' />
<link href='http://cdn.rawgit.com/young-ha/webfont-archive/20161201/css/Arita-dotum.css' rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" type="text/css" href="http://cdn015.negagea.net/wherehouse/2018/webstore/feature/staffsnap/css/pgwslider.css" />

<link rel="stylesheet" type="text/css" href="<%=cp %>/project3//mypage/css/common.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp %>/project3//mypage/css/mp_main.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp %>/project3//mypage/css/order_pay.css" />

<style type="text/css">

.tooltip-box { position:relative; }
.tooltip_img { position:absolute !important; top:0; left:28%; }
.tooltip_img .tooltip_close { top:7px; }
.tooltip_img { display: none; }
.tooltip_img a { display: block; width: 20px; height: 20px; position: absolute; z-index:10; left: 255px; top: 5px; none repeat scroll 0px 0px; }



</style>

<script type="text/javascript">

	function chk_pay() {
		
		var rdo = document.getElementsByName('radio_paymethod');
		var ch_pay = document.getElementsByName('shop_lang');
		var count = rdo.length;		
		
		for(i=0;i<count;i++) {
			
			var dis = rdo[i].value;
			if(rdo[i].checked == true) {
				document.getElementById(dis).style.display = '';
			}else {
				document.getElementById(dis).style.display = 'none';
			}
			var pay = ch_pay[0].value;
			if(rdo[6].checked == true) {
				
				document.getElementById(pay).style.display = '';
			}else {
				document.getElementById(pay).style.display = 'none';
			}
		}		
	}	

	function ch_paypalimg() {
		
		document.getElementById('paypal_list').style.display = '';

		var rdo = document.getElementsByName('shop_lang');
		var count = rdo.length;

		for (i=0;i<count;i++) {

			var dis = rdo[i].value;
			if (rdo[i].checked == true) {
				document.getElementById(dis).style.display = '';
			} else {
				document.getElementById(dis).style.display = 'none';
			}
		}

	}
	
	 $('.tooltip').click(function() {
         $(this).parent().addClass('tooltip-box');
         $('.tooltip_img').show();
     });
     $('.tooltip_close').click(function() {
         $('.tooltip_img').hide();
     });
     
     
     function sale(v) {
    	 	var sale = parseInt(v.value);
    	 	var totalPrice = parseInt(document.getElementById('ptotal').value);
    	 	var hap = totalPrice - sale;
    	 	var mm = document.getElementById('getMileage').value;
    	 	
    	 	var str1 = v.value.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
    	 	var str2 = hap.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
    	 	var str3 = totalPrice.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
    	 	var str4 = mm.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
    	 	
    		document.getElementById('salePrice').innerHTML = str1;
    	 	/* 적립금사용 */
    		 if(sale!=0) {
    			
    		 	document.getElementById('tprice').innerHTML = str2;
    		 	document.getElementById('op_total_price').innerHTML = str2;    		 	
    			document.getElementById('block_expect_reserve').innerHTML = 0;
    			document.getElementById('fmileage').value = 0;
    			document.getElementById('fprice').value =str2;
    			document.getElementById('intmileage').value =0;
    			document.getElementById('intprice').value =hap;
    			
    		/* 적립금비사용 */	
    		 }else {
    			
    			document.getElementById('tprice').innerHTML = str3;
    			document.getElementById('op_total_price').innerHTML = str3;    			
    			document.getElementById('block_expect_reserve').innerHTML = str4;
    			document.getElementById('fmileage').value = str4;
    			document.getElementById('fprice').value = str3;
    			document.getElementById('intmileage').value = sale;
    			document.getElementById('intprice').value = totalPrice;
    			    			
    		 }
     }
     
     var temp = false;
     
     function copydata() { 
    	
    	 if(temp==false){
    		
    		document.getElementById('emergency21').value = document.getElementById('emergency11').value;
    		document.getElementById('emergency22').value = document.getElementById('emergency12').value;
    		document.getElementById('emergency23').value = document.getElementById('emergency13').value;
    		document.getElementById('receiver').value = document.getElementById('sender').value;
    		temp = true;

    	 }else if(temp==true){
    		
    		document.getElementById('emergency21').value = "";
     		document.getElementById('emergency22').value = "";
     		document.getElementById('emergency23').value = "";
     		document.getElementById('receiver').value = "";
     		temp = false
    	 }
    	 
     }
     
     
     function sendIt() {
    	 
    	 var f = document.form1;
    	 
    	 f.action = "<%=cp%>/shop/orders_ok.do";
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
			<!--left_menu -->
			<div id="content">
				<div id="order">
					<dl class="loc-navi">
						<dt class="blind">현재 위치</dt>
						<dd>
							<a href="/">Home</a> &gt; <strong>주문서</strong>
						</dd>
					</dl>
					<h2>주문/결제</h2>
					<div class="page-body">
						<form name="form1" id="order_form" action=""method="post">
							<fieldset>
								<legend>주문 폼</legend>
								<h3>주문리스트</h3>
								<div class="tbl-order">
									<table>
										
										<caption>주문리스트</caption>
										<colgroup>
											<col style="width: 50px" />
											<col style="width: 200px" />
											<col style="width: 80px" />
											<col style="width: 80px" />
											<col style="width: 50px" />
										</colgroup>
										<thead>
											<tr>												
												<th scope="col"><input type="hidden" name="clists" value="${clists }" /></th>
												<th scope="col">제품</th>
												<th scope="col">수량</th>
												<th scope="col">가격</th>
												<th scope="col">적립</th>
											</tr>
										</thead>
										
										<tbody>
										
										<% while(cit.hasNext()) {
						
											CartDTO dto = cit.next();					
												
											ptotal += dto.getPrice()*dto.getQty();							
							
											mtotal += dto.getMileage()*dto.getQty();
										%>
																
											<tr class="nbg">
												<td><div class="tb-center">
													<input type="hidden" name="cno" value="<%=dto.getNo() %>" />
													<input type="hidden" name="product" value="<%=dto.getProduct() %>" />
												<% if (dto.getSized()!=null) { %>				
													<input type="hidden" name="sized" value="<%=dto.getSized() %>" />
												<% } %>	
													<input type="hidden" name="amount" value="<%=dto.getQty() %>" />
													<input type="hidden" name="title" value="<%=dto.getTitle() %>" />
													<input type="hidden" name="mileage" value="<%=dto.getMileage() %>" />
													<input type="hidden" name="price" value="<%=dto.getPrice() %>" />
													<input type="hidden" name="page" value="m" />			
														<div class="thumb">
															<a href="<%=cp %>study/shop/shopClothes1.do?pID=10&pKIND=3&pPRICE=96000&pINFO=ninfo.png&pOFFICIAL=noffcial.png&pNPAY=333.png&pIMAGE=image.png&pDESC=desc.png&pNAME=Granpa%20Over%20Shirts%20Blue%20Check&pCONTENT=j.jpg">
															<img src="<%=cp %>/shopProject/imageList/<%=dto.getProduct() %>" style="width: 84px; height: 84px;"/></a>
														</div>
												</div></td>
												<td><div class="tb-left">
													<a href="<%=cp %>study/shop/shopClothes1.do?pID=10&pKIND=3&pPRICE=96000&pINFO=ninfo.png&pOFFICIAL=noffcial.png&pNPAY=333.png&pIMAGE=image.png&pDESC=desc.png&pNAME=Granpa%20Over%20Shirts%20Blue%20Check&pCONTENT=j.jpg">
															<%=dto.getTitle() %>123<%=dto.getSized() %></a>
												</div></td>
												<td><div class="tb-center"><%=dto.getQty() %> 개</div></td>
												<td><div class="tb-center tb-bold">￦<%=df.format(dto.getPrice()*dto.getQty()) %></div></td>
												<td><div class="tb-center">￦<%=df.format(dto.getMileage() * dto.getQty()) %></div></td>
											</tr>
											<% if(dto.getSized()!=null) { %>
											<tr class="nbg">
												<td colspan="5">
												<div class="tb-left tb-opt" style="padding-left: 62px">
													<img src="<%=cp %>/project3/mypage/images/basket_option.gif" alt="옵션" title="옵션" /> SIZE : <%=dto.getSized() %> <%=dto.getQty() %>개 
												</div>
												</td>
											</tr>
											<% } %>	
										<% } %>																					
										</tbody>
									</table>
								</div>
								<!-- .table-order -->

								<div class="mem-lvl" style="display: none">
									<div class="lvl-img">
										<img src="/images/common/mypage_goldmember.gif" />
									</div>
									<p>
										${sessionScope.customInfo.name }님은 기본배송비가 무료인 <em>[Level.1]</em>회원입니다.<br />
										<span class='username'>${sessionScope.customInfo.name }님</span>이 
										<span class="MS_group_maxmoney">1,000원 이상</span>
										<span class="MS_group_condition"></span>구매시, 구매금액의 <font color=#F26622>0</font>%를
										<font color=#F26622>추가 할인</font>해드립니다.
									</p>
								</div>
								<!-- .mem-lvl -->
								<h3>주문상품 할인적용</h3>
								<div class="tbl-pay">
									<table>
										<caption>주문상품 할인적용</caption>
										<colgroup>
											<col style="width: 22%" />
											<col style="width: 18%" />
											<col style="width: 18%" />
											<col style="width: 22%" />
										</colgroup>
										<thead>
											<tr>
												<th scope="col">상품금액</th>
												<th scope="col">배송비</th>
												<th scope="col">할인금액</th>
												<th scope="col">결제 예정금액</th>
											</tr>
											<%	
												String pricetotal = df.format(ptotal);
	
												String mileagetotal = df.format(Math.round(mtotal / 100) * 100);
												int intmileage = (int)Math.round(mtotal / 100) * 100;
												
											
											%>
											<tr>
												<td>
													<div class="base" >
													<input type="hidden" id="ptotal" name="ptotal" value="<%=ptotal %>"/>
														<strong><em><span  class="op-total block-op-product-price" price="<%=pricetotal%>"><%=pricetotal%></span></em>원</strong>
													</div>
												</td>
												<td>
													<div class="base">
														<strong>
															<em><span class="op-total block-op-delivery-price" price="0">무료</span></em>
																<span id="block_op_delivery_unit"></span>
														</strong> 
														<a class="plus"><img src="<%=cp %>/project3/mypage/images/bul_h23_plus.png" alt="plus" /></a>
														<a class="minus" style="display: none;"><img src="<%=cp %>/project3/mypage/images/bul_h23_minus.png" alt="minus" /></a>
														<input type="hidden" id="fmileage" name="fmileage" value="<%=mileagetotal %>">
														<input type="hidden" id="intmileage" name="intmileage" value="<%=intmileage %>">
													</div>
												</td>
												<td>
													<div class="base">
														<strong><em class="fc-red"><span id="salePrice" class="op-total block-op-sale-price" price="-0">0</span></em>원</strong>
														<a class="plus" style="display: none;"><img src="<%=cp %>/project3/mypage/images/bul_h23_plus.png" alt="plus" /></a>
														<a class="minus"><img src="<%=cp %>/project3/mypage/images/bul_h23_minus.png" alt="minus" /></a>
														<input type="hidden" id="fprice" name="fprice" value="<%=pricetotal%>">
														<input type="hidden" id="intprice" name="intprice" value="<%=ptotal%>">
													</div>
												</td>
												<td>
													<div class="base">
														<a class="equal"><img src="<%=cp %>/project3/mypage/images/bul_h23_equal.png" alt="equal" /></a>
														<strong><em class="fc-red"><span id="tprice" class="block-op-sum-price" price="<%=ptotal%>"><%=pricetotal%></span></em>원</strong>
													</div>
												</td>
											</tr>
										</thead>
										<tbody>
											<tr class="select-reserve-discount">
												<th align="center">즉시할인/적립</th>
												
												<td colspan="3"><div class="reserve-select">
														<span id="choice_reserve_table"> 
														<input type="hidden" id="getMileage" name="getMileage" value="<%=(Math.round(mtotal / 100) * 100) %>">
														<select name="choice_reserve" onclick="sale(this);">
																<option value='<%=(Math.round(mtotal / 100) * 100) %>'>주문시 <%=mileagetotal %>원 할인</option>
																<option value='0' selected>배송시 <%=mileagetotal %>원 적립</option>
														</select></span>
												</div></td>
											</tr>
											
										</tbody>
									</table>
								</div>
								<!-- .tbl-pay -->
								<div class="tbl-order tot-order">
									<table>
										<caption></caption>
										<colgroup>
											<col style="width: 100px" />
											<col />
										</colgroup>
										<thead>
											<tr>
												<th>최종 결제금액</th>
												<td><strong class="price"><em><span id="block_unit_dollar" style="display: none">$</span> 
												<span id="op_total_price"><%=pricetotal%></span></em> 
												<span id="block_unit_won">원</span></strong> &nbsp;(적립예정: 
												<span id="block_expect_reserve" data-original-reserve="<%=mileagetotal%>" coupon-reserve="0"><%=mileagetotal%></span>원)
													<div class="reserve-msg">
													(적립 예정금액과 최종 적립금액은 상이할 수 있습니다. 주문 완료 시 지급되는 적립금을 확인해주시기 바랍니다.)
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<!-- .tbl-pay -->
								<h3>주문자정보</h3>
								<div class="tbl-order">
									<table>
										<caption>주문자정보</caption>
										<colgroup>
											<col style="width: 130px">
											<col />
										</colgroup>
										<tbody>
											<tr>
												<th scope="row"><div class="txt-l">이름</div></th>
												<td>${sessionScope.customInfo.name } <input type="hidden" name="sender" form="order_form" id="sender" class="MS_input_txt" value="${sessionScope.customInfo.name }" /></td>
											</tr>
											<tr>
												<th scope="row"><div class="txt-l">이메일</div></th>
												<td><input type="text" name="email" form="order_form"id="email" value="" class="MS_input_txt" maxlength="50" /></td>
											</tr>
											<tr>
												<th scope="row"><div class="txt-l">연락처</div></th>
												<td><input type="text" name="emergency11"form="order_form" id="emergency11" size="4" maxlength="4"class="MS_input_txt w60" value="${tel1 }"> - 
													<input type="text" name="emergency12" form="order_form" id="emergency12" size="4" maxlength="4" class="MS_input_txt w60" value="${tel2 }"> - 
													<input type="text" name="emergency13" form="order_form" id="emergency13" size="4" maxlength="4" minlength=4 class="MS_input_txt w60" value="${tel3 }">
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<!-- .tbl-order -->

								<h3>배송 정보 
								<label><input type="checkbox" name="same"form="order_form" id="same" onclick="copydata()">
										위 정보와 같음
								</label>
								</h3>
								<div class="tbl-order">
									<table>
										<caption>배송 정보 입력</caption>
										<colgroup>
											<col style="width: 130px">
											<col />
											<col style="width: 100px">
											<col />
										</colgroup>
										<tbody>
											<tr>
												<th scope="row"><div class="txt-l">이름</div></th>
												<td colspan="3"><input type="text" name="receiver" form="order_form" id="receiver" class="MS_input_txt" value="" /></td>
											</tr>
											<tr>
												<th scope="row"><div class="txt-l">연락처 1</div></th>
												<td>
												<input type="text" name="emergency21" form="order_form" id="emergency21" size="4" maxlength="4" value="" class="MS_input_txt w60"> - 
												<input type="text" name="emergency22" form="order_form" id="emergency22" size="4" maxlength="4" class="MS_input_txt w60" value=""> - 
												<input type="text" name="emergency23" form="order_form" id="emergency23" size="4" maxlength="4" minlength=4 class="MS_input_txt w60" value="">
												</td>
												<th scope="row" style="border: 1px solid #eee"><div class="txt-c">연락처 2</div></th>
												<td style="padding-left: 10px">
												<input type="text" name="emergency31" form="order_form" id="emergency31" size="4" maxlength="4" class="MS_input_txt w60" value=""> - 
												<input type="text" name="emergency32" form="order_form" id="emergency32" size="4" maxlength="4" class="MS_input_txt w60" value=""> - 
												<input type="text" name="emergency33" form="order_form" id="emergency33" size="4" maxlength="4" minlength=4class="MS_input_txt w60" value="">
												</td>
											</tr>
											<tr>
												<th scope="row">
													<div class="txt-l">안심번호</div>
												</th>
												<td colspan="3">
													<div class="tooltip-box">
														<input type="checkbox" name="safe_number_use" value="Y" form="order_form" id="safe_number_use" checked='checked'>
															안심번호 사용(무료) 
														<img src="<%=cp %>/project3/mypage/images/ico_qmark.gif" class="tooltip" border="0" />
														<div class="tooltip_img">
															<img src="<%=cp %>/project3/mypage/images/tooltip_image.gif" />
															<a href="#none" class="tooltip_close">
															<img src="<%=cp %>/project3/mypage/images/tooltip_close.gif" border="0" />
															</a>
														</div>
												</div></td>
											</tr>
											<tr>
												<th scope="row"><div class="txt-l">배송지 선택</div></th>
												<td colspan="3"><label id="mk_ems_kor_label">
												<input type="radio" name="order_ems_type" id="mk_ems_kor" form="order_form" class="MS_ems_type" value="kor" 
												onclick="mk_select_kor();" checked /> 국내배송</label> 
												<label id="mk_ems_overseas_label"><input type="radio" name="order_ems_type" form="order_form" id="mk_ems_overseas" class="MS_ems_type" 
												value="overseas" onclick="mk_select_overseas('kor');" /> 해외배송</label></td>
											</tr>
											<tr>
												<th scope="row">
													<div class="txt-l">주소</div>
												</th>
												<td colspan="3">
													<div id="mk_if_ems_overseas"
														style="display: none; width: 100%;">
														<div class="mt-10">
															<select name="order_ems_country" form="order_form" id="mk_ems_country" 
																	onchange="mk_select_country_d4(this, 'kor');" class="MS_select">
																<option value="">배송 국가를 선택하여 주세요</option>
															</select> 
															<span style="display: none">
																<span id="mk_ems_price" origin_price="273000" price="273000" weight="6500" shop_id="zooyork77" 
																	discount="0" discount_type="sale">273000
															</span></span>
														</div>
														<div class="mt-10">
															<input type="text" name="order_ems_post" form="order_form" id="mk_ems_post" class="MS_input_txt w120" value="" size="50"
																style="ime-mode: disabled" /> : zipcode <br /> <br />
															<input type="text" name="order_ems_address" form="order_form" id="mk_ems_address" value="" size="50"
																class="MS_input_txt w240" style="ime-mode: disabled" />
														</div>
														<div class="mt-10">주소와 수령인 이름은 필히 영문으로 기재 바랍니다.</div>
													</div>
													<div id="mk_if_ems_kor" style="width: 100%;">
														<input type="radio" value="A" name="place" form="order_form" onclick="addrclick()" />최근 배송지&nbsp;
														<a href="javascript:;" class="past_list">배송지 목록</a>
														&nbsp;&nbsp;<input type="radio" value="O"
															form="order_form" name="place" onclick="addrclick()" />회사
														&nbsp;&nbsp;<input type="radio" value="H"
															form="order_form" name="place" onclick="addrclick()" />자택
														&nbsp;&nbsp;<input type="radio" value="E"
															form="order_form" name="place" onclick="post();" />신규
														배송지</font>
														<div class="mt-10">
															<input name="post1" id="post1" form="order_form" size="6"
																class="MS_input_txt w60" onclick='this.blur();post();'>
															<a href="javascript:post();" class="btn-white">우편번호</a>
														</div>
														<div class="mt-10">
															<input type="text" name="address1" form="order_form"
																id="address1" size="50" class="MS_input_txt w240"
																readonly> <input type="hidden"
																name="old_address" form="order_form" id="old_address"
																value=""> <input type="hidden"
																name="old_home_address" form="order_form"
																id="old_home_address" value=""> <input
																type="hidden" name="old_offi_address" form="order_form"
																id="old_offi_address" value=""> <input
																type="text" name="address2" form="order_form"
																id="address2" size="50" class="MS_input_txt w240">
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row"><div class="txt-l">
														주문메세지<br />
														<span>(100자내외)</span>
													</div></th>
												<td colspan="3"><textarea name="message"
														form="order_form" id="message" cols="50" rows="5"
														class="MS_textarea"></textarea></td>
											</tr>
											<tr>
												<th scope="row"><div class="txt-l">무통장 입금자명</div></th>
												<td colspan="3"><input type="text" name="bankname"
													form="order_form" class="MS_input_txt" size="10"
													maxlength="40"> <span class="MS_bankname_message">(주문자와
														같을경우 생략 가능)</span></td>
											</tr>
										</tbody>
									</table>
								</div>
								<!-- .tbl-order -->

								<label class="chk-label"> <input type="checkbox"
									name="modify_address" form="order_form" id="modify_address"
									value="Y" /> 해당 배송지 정보를 나의 회원정보로 등록합니다.
								</label>
								<h3>
									결제 정보
									<div class="before_pay">
										<label> <input type="checkbox" id="before_pay_agree"
											name="before_pay_agree" form="order_form" /> 선택하신 결제수단을 다음에도
											적용
										</label>
									</div>
								</h3>
								<div class="tbl-order">
									<table>
										<caption>결제 정보</caption>
										<colgroup>
											<col style="width: 110px">
											<col />
										</colgroup>
										<tbody>
											<tr>
												<th scope="row"><div class="txt-l">결제방법</div></th>
												<td>
													<ul class="pay-method">														
														<li><input type="radio" class="chk-rdo"	name="radio_paymethod" value="payinfo_KAKAOPAY" checked='checked' onclick="chk_pay()"/>
															카카오페이(KAKAOPAY) <em><span class="op-card-dc-price fc-red"></span></em></li>
													<c:if test="${empty pay }">			
														<li><input type="radio" class="chk-rdo" name="radio_paymethod" value="payinfo_PAYCO" onclick="chk_pay()"/>
															페이코(PAYCO) <em><span class="op-card-dc-price fc-red"></span></em></li>
														<li><input type="radio" class="chk-rdo" name="radio_paymethod" value="payinfo_B" onclick="chk_pay()"/>
															무통장입금 <em><span class="op-bank-dc-price fc-red"></span></em> 
															<select name="pay_data" class="w280 MK_bank_select_list MK_pay_add_choice">
															<option value=''>입금 계좌번호 선택(반드시 주문자 성함으로 입금)</option>
																<option value="국민은행 464837-01-009473 (예금주:주식회사 웨얼하우스)">
																	국민은행464837-01-009473 (예금주:주식회사 웨얼하우스)</option>
															</select>
														</li>
														<li><input type="radio" class="chk-rdo" name="radio_paymethod" value="payinfo_C" onclick="chk_pay()"/>
															신용카드 <em><span class="op-card-dc-price fc-red"></span></em></li>
														<li><input type="radio" class="chk-rdo" name="radio_paymethod" value="payinfo_V" onclick="chk_pay()"/>
															실시간 계좌이체 <em><span class="op-bank-dc-price fc-red"></span></em></li>
														<li><input type="radio" class="chk-rdo" name="radio_paymethod" value="payinfo_D" onclick="chk_pay()"/> 
															휴대폰 결제 <em><span class="op-hp-dc-price fc-red"></span></em></li>
														<li><input type="radio" class="chk-rdo" name="radio_paymethod" value="payinfo_A" onclick="chk_pay()"/> 
															해외결제 페이팔(PAYPAL)
															<div id="payinfo_A" class="MK_order_payment_info MK_pay_add_choice" style='display: none; padding-left: 23px; padding-top: 5px;'>
																<input type="radio" name="shop_lang" value='KOR' class="MK_order_paypal_radio" onclick='ch_paypalimg()' checked> 
																	<img class="MK_order_paypal_img" src='<%=cp %>/project3/mypage/images/paypal_KOR.gif' align=absmiddle border=0>
																<input type="radio" name="shop_lang" value='ENG' class="MK_order_paypal_radio" onclick='ch_paypalimg()'> 
																	<img class="MK_order_paypal_img" src='<%=cp %>/project3/mypage/images/paypal_ENG.gif' align=absmiddle border=0> 
																<input type="radio" name="shop_lang" value='JPN' class="MK_order_paypal_radio" onclick='ch_paypalimg()'> 
																	<img class="MK_order_paypal_img" src='<%=cp %>/project3/mypage/images/paypal_JPN.gif' align=absmiddle border=0> 
																<input type="radio" name="shop_lang" value='CHN' class="MK_order_paypal_radio" onclick='ch_paypalimg()'> 
																	<img class="MK_order_paypal_img" src='<%=cp %>/project3/mypage/images/paypal_CHN.gif' align=absmiddle border=0>
														</div></li>
													</ul>
												</c:if>	
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<!-- .tbl-order -->

								<!-- 증빙신청 태그 추가 시 임의로 태그를 제거하게 되면 결제 등 정상 동작이 불가할 수 있습니다 !!! -->
								<div id="evidence" style="display: none;">
									<div class="tbl-order"
										style="margin-top: 0px; border-top: 0px;">
										<table>
											<caption>증빙 신청</caption>
											<colgroup>
												<col style="width: 110px">
												<col />
											</colgroup>
											<tbody>
												<tr>
													<th scope="row"><div class="txt-l">증빙 신청</div></th>
													<td style="padding-left: 18px;"><input type="radio" name="evidencecheck" form="order_form" 
														onclick="" value="N" checked /> 신청안함 
														<input type="radio" name="evidencecheck" form="order_form" 
														onclick="" value="cashbill" /> 현금영수증

														<div style="padding-top: 5px;">
															<div id="evidence_data">
																<script type='text/javascript' src="/js/check.js"></script>
																<div id="evidence_cashbill_data" style="display: none;">
																	<span id="cashbilltype"> 
																	<select name="evidence_banktype" class="bank-type" onchange="togglecashbilltype(this.value)">
																		<option value='0' selected>핸드폰 번호
																		<option value='1'>국세청 현금영수증 카드
																		<option value='2'>사업자 번호
																	</select>
																	</span>
																	<span id="evidence_cashbill_tel"> 
																	<input type="text" name="mobilephone" size="5" maxlength="3" class="MS_input_txt txt-input w60"
																			onkeyup="nextfocus(this.form['mobilephone'][0], this.form['mobilephone'][1], 3);"
																			onKeyPress="InpuOnlyPhone(this)" /> - 
																	<input type="text" name="mobilephone" size="5" maxlength="4" class="MS_input_txt txt-input w60"
																			onkeyup="nextfocus(this.form['mobilephone'][1], this.form['mobilephone'][2], 4);"
																			onKeyPress="InpuOnlyPhone(this)" /> - 
																	<input type="text" name="mobilephone" size="5" maxlength="4" class="MS_input_txt txt-input w60"
																			onKeyPress="InpuOnlyPhone(this)" />&nbsp;
																	<span style="display: none;"><input type="checkbox" name="reset" />초기화
																	</span>
																	</span>
																	<span id="evidence_cashbill_card" style="display: none"> 
																		<input type="text" name="tax_card_number" size="5" maxlength="4" class="MS_input_txt txt-input w60"
																			onkeyup="nextfocus(this.form['tax_card_number'][0], this.form['tax_card_number'][1], 4);"
																			onKeyPress="InpuOnlyPhone(this)" /> - 
																			<input type="text" name="tax_card_number" size="5" maxlength="4" class="MS_input_txt txt-input w60"
																			onkeyup="nextfocus(this.form['tax_card_number'][1], this.form['tax_card_number'][2], 4);"
																			onKeyPress="InpuOnlyPhone(this)" /> - 
																		<input type="text" name="tax_card_number" size="5" maxlength="4" class="MS_input_txt txt-input w60"
																			onkeyup="nextfocus(this.form['tax_card_number'][2], this.form['tax_card_number'][3], 4);"
																			onKeyPress="InpuOnlyPhone(this)" /> - 
																		<input type="text" name="tax_card_number" size="6" maxlength="6" class="MS_input_txt txt-input w60"
																			onKeyPress="InpuOnlyPhone(this)" />
																	</span> 
																	<span id="evidence_cashbill_company" style="display: none">
																		<input type="text" name="crn" size="4" maxlength="3" class="MS_input_txt txt-input w60"
																			onkeyup="nextfocus(this.form['crn'][0], this.form['crn'][1], 3);"
																			onKeyPress="InpuOnlyPhone(this)" /> - 
																		<input type="text" name="crn" size="3" maxlength="2" class="MS_input_txt txt-input w60"
																			onkeyup="nextfocus(this.form['crn'][1], this.form['crn'][2], 2);"
																			onKeyPress="InpuOnlyPhone(this)" /> - 
																		<input type="text" name="crn" size="6" maxlength="5" class="MS_input_txt txt-input w60" />
																		<span class="company-name">업체명 : 
																			<input type="text" name="crname" size="16" maxlength="20" class="MS_input_txt txt-input w60">
																		</span>
																	</span>
																</div>
																<div id="evidence_taxbill_data" style="display: none;">
																	<table class="tbl-taxbill">
																		<colgroup>
																			<col style="width: 19%">
																			<col style="width: *">
																		</colgroup>
																		<tbody>
																			<tr>
																				<th><div>신청자명</div></th>
																				<td>
																					<div></div>
																				</td>
																			</tr>
																			<tr>
																				<th><div>휴대폰번호</div></th>
																				<td>
																					<div></div>
																				</td>
																			</tr>
																			<tr>
																				<th><div>이메일</div></th>
																				<td>
																					<div></div>
																				</td>
																			</tr>
																			<tr>
																				<th><div>사업자번호</div></th>
																				<td>
																					<div></div>
																				</td>
																			</tr>
																			<tr>
																				<th><div>상호(법인명)</div></th>
																				<td>
																					<div></div>
																				</td>
																			</tr>
																			<tr>
																				<th><div>대표자명</div></th>
																				<td>
																					<div></div>
																				</td>
																			</tr>
																			<tr>
																				<th><div>사업장주소</div></th>
																				<td>
																					<div>
																						<a href="" class="btn-white">우편번호</a><br /> <br />
																					</div>
																				</td>
																			</tr>
																			<tr>
																				<th><div>업태</div></th>
																				<td>
																					<div></div>
																				</td>
																			</tr>
																			<tr>
																				<th><div>종목</div></th>
																				<td>
																					<div></div>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
														</div></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class='lst-order'>
									<ul id='payinfo_V' class='payment-info' style='display: none'>
										<li>· 본인 계좌 정보입력으로 결제금액이 이체되는 서비스입니다.</li>
										<li>· 인터넷뱅킹과 동일한 보안방식을 적용하므로 안전하며, 상점에 정보가 남지 않습니다.</li>
									</ul>
									<ul id='payinfo_C' class='payment-info' style="display: none">
										<li>· 안심클릭 및 인터넷안전결제(ISP)서비스로 <font color=blue>128bit
												SSL</font>로 암호화된 결제 창이 새로 뜹니다.
										</li>
										<li>· 결제후, 카드명세서에 [<font color=red>케이에스넷(KSNET)</font>]으로
											표시되며, 카드 정보는 상점에 남지 않습니다.
										</li>

									</ul>
									<ul id='payinfo_D' class='payment-info' style="display: none">
										<li>· 결제정보가 상점에 남지 않으며, 보안 적용된 결제창이 새로 뜹니다.</li>
										<li>· 결제후, 핸드폰 요금청구서에 '소액결제'로 표시됩니다.</li>
										<li>· <font color=red>결제후, 결제건의 취소는 해당 달에만 가능합니다.</font></li>

									</ul>
									<ul id='paypal_list' class='payment-info' style='display: none'>
										<li id="KOR" style="display: "><img src="<%=cp %>/project3/mypage/images/paypal_text_KOR.gif"/></li>
										<li id="ENG" style="display: none"><img src="<%=cp %>/project3/mypage/images/paypal_text_ENG.gif"/></li>
										<li id="JPN" style="display: none"><img src="<%=cp %>/project3/mypage/images/paypal_text_JPN.gif"/></li>
										<li id="CHN" style="display: none"><img src="<%=cp %>/project3/mypage/images/paypal_text_CHN.gif"/></li>
									</ul>
									<ul id='payinfo_T' class='payment-info' style='display: none'>
										<li>·제휴BC카드 이외의 카드로는 결제가 되지 않습니다.</li>
									</ul>
									<ul id='payinfo_PAYCO' class='payment-info'
										style='display: none'>

										<li style='color: #3b3b3b;'><strong>★ 페이코 POINT
												결제시<font color='red'> “언제나” 2%</font> 적립 (기본 0.2% 적립)
										</strong></li>
										<li style='color: #3b3b3b;'><strong>★ 페이코 첫 결제시
												1만원 이상 <font color='red'>2,000원 즉시 할인</font>
										</strong></li>


									</ul>
									<ul id='payinfo_KAKAO' class='payment-info'
										style='display: none'>
										<li>· <img src="<%=cp %>/project3/mypage/images/orderpay_kakao.gif"
											alt="카카오페이" style="vertical-align: middle;" /></li>
										<li>· 가장 빠른 모바일 결제 <img
											src="<%=cp %>/project3/mypage/images/orderpay_kakao2.gif" alt="카카오페이"
											style="margin: 0 5px; vertical-align: middle;" /> <a
											href="http://www.kakao.com/kakaopay" target="_blank"
											style="text-decoration: underline;">지금 바로 확인하세요&gt;</a>
										</li>

									</ul>
									<ul id='payinfo_KAKAOPAY' class='payment-info'
										style='display: '>
										<li>· 카카오톡에서 신용/체크카드 연결하고, 결제도 지문으로 쉽고 편리하게 이용하세요!</li>
										<li>· 본인명의 스마트폰에서 본인명의 카드 등록 후 사용 가능</li>
										<li>· (카드등록 : 카카오톡 > 더보기 > 카카오페이 > 카드)</li>
										<li>· 이용가능 카드사 : 모든 국내 신용/체크카드</li>
										<li>· 카드 결제 시, 결제금액 200만원 이상일 경우 ARS추가 인증이 필요합니다. 카카오머니
											결제시는 추가인증 없음</li>
									</ul>
									<ul id='payinfo_SSGPAY' class='payment-info'
										style='display: none'>
										<li>· <img src="<%=cp %>/project3/mypage/images/orderpay_ssgpay.png"
											alt="쓱페이" style="vertical-align: middle; margin-bottom: 6px;" /></li>
										<li>· SSG MONEY : 현금영수증 발급 가능합니다.(쇼핑몰에 별도 신청)</li>
										<li>· 결제 불가 카드 : 씨티카드, 비씨카드(수협, 우체국 등)</li>
										<li>* SSGPAY는 이마트, 신세계백화점, 스타벅스 등에서 사용할 수 있는 신세계의 간편결제
											서비스입니다.</li>
										<li>* 결제방법 : 앱 가입 ▷ 머니충전/카드등록 ▷ 비밀번호 6자리 입력하여 결제!</li>

									</ul>
									<ul id='payinfo_SETTLE_BANK' class='payment-info'
										style='display: none'>
										<li>· 최초 사용 시 통장 등록 및 ARS 인증하면, 비밀번호 입력만으로 계좌 결제가 가능합니다.</li>
										<li>· 결제 후에는 현금영수증이 자동 발급됩니다.</li>
										<li>· 1회 / 1일 최대 결제금액 한도는 200만원입니다.</li>

									</ul>
									<ul id='payinfo_SMILEPAY' class='payment-info'
										style='display: none'>
										<li><font color="red">* 스마일페이 혜택</font></li>
										<li>1) 스마일페이 결제 시 <font color="red">0.5%</font> 기본 적립(최대
											5천원)
										</li>
										<li>2) 스마일페이에 등록한 스마일카드로 결제 시 <font color="red">2%</font>
											추가 적립
										</li>

									</ul>
									<ul id='payinfo_TOSS' class='payment-info'
										style='display: none'>
										<li>· 토스에 등록된 계좌와 신용/체크카드로 쉽고 편리하게 결제하세요.</li>
										<li>· 이용가능 카드사 : 비씨, 삼성, 롯데, 하나, 신한, 현대카드 (KB카드, NH농협
											준비중)</li>
										<li>· 이용가능 은행 : 20개 은행과 8개 증권사</li>
										<li>· 토스 간편결제시 토스에서 제공하는 카드사별 무이자, 청구할인, 결제이벤트만 제공됩니다.</li>
										<li>· 토스머니 결제시 현금영수증은 자동으로 신청됩니다.</li>

									</ul>
									<ul id='payinfo_NPAY' class='payment-info'
										style='display: none'>
										<li>· 주문 변경 시 카드사 혜택 및 할부 적용 여부는 해당 카드사 정책에 따라 변경될 수
											있습니다.</li>
										<li>· 네이버페이는 네이버ID로 별도 앱 설치 없이 신용카드 또는 은행계좌 정보를 등록하여
											네이버페이 비밀번호로 결제할 수 있는 간편결제 서비스입니다.</li>
										<li>· 결제 가능한 신용카드: 신한, 삼성, 현대, BC, 국민, 하나, 롯데, NH농협, 씨티,
											카카오뱅크</li>
										<li>· 결제 가능한 은행: NH농협, 국민, 신한, 우리, 기업, SC제일, 부산, 경남, 수협,
											우체국, 미래에셋대우, 광주, 대구, 전북, 새마을금고, 제주은행, 신협, 하나은행, 케이뱅크, 카카오뱅크,
											삼성증권, KDB산업은행,씨티은행, SBI은행, 유안타증권, 유진투자증권</li>
										<li>· 네이버페이 카드 간편결제는 네이버페이에서 제공하는 카드사 별 무이자, 청구할인 혜택을 받을
											수 있습니다.</li>

									</ul>
									<ul id='payinfo_CHAIPAY' class='payment-info'
										style='display: none'>
										<li>· CHAI는 은행 계좌만 등록하면 간편하게 결제할 수 있는 결제 서비스입니다.</li>
										<li>· 은행점검시간인 23:30~00:30까지는 이용이 불가합니다. (단, 차이머니 보유 시
											은행점검시간 관계 없이 결제 가능합니다.)</li>
										<li>· 등록 가능한 계좌는 CHAI 앱에서 확인 가능합니다.</li>
										<li>· 결제에 사용할 은행 계좌는 휴대폰 명의자와 일치해야 합니다.</li>
										<li>· CHAI 머니 잔액 부족 시 자동충전 후 결제 됩니다.</li>
										<li>· CHAI 결제를 이용하고 취소 시 CHAI 머니로 환불됩니다.</li>
										<li>* CHAI 특별 혜택 *<br /> 1) 1만원 이상 생애 첫 결제 시 <font
											color="red">5천원 즉시할인</font>(단, 상시 1.5% 적립과 중복 불가)<br /> 2) 상시
											<font color="red">1.5% 캐시백</font>(결제 건당 2천원)<br /> 3) 자동충전 설정
											후 결제 시 <font color="red">1% 추가 캐시백</font>(결제 건당 500원)<br /> *
											해당 혜택은 차이 사정에 의해 조기 종료 될 수 있습니다.
										</li>

									</ul>
									<ul id='payinfo_B' class='payment-info' style='display: none'>
										<li>· 선택된 입금계좌로 <font color=blue>인터넷 뱅킹, 은행 방문</font> 등을
											통해 입금해 주세요. <a href='javascript:linkvalue();'><img
												src='<%=cp %>/project3/mypage/images/shop_gobank_long.gif' border=0
												align=absmiddle></a> <input type='hidden'
											name='link_value'><input type='hidden'
											name='link_value' value='https://www.kbstar.com/'>
										</li>
										<li>· 반드시 입금 기한 내에 정확한 결제금액을 입금해 주세요.</li>
										<li>· 입금 기한이 지나면 주문은 자동취소됩니다.</li>
									</ul>
									<ul id='payinfo_M' class='payment-info' style="display: none">
										<li>· 구매자는 반드시 국민은행 인터넷뱅킹을 이용해야 합니다.</li>
										<li>· 국민은행 에스크로를 통해서 구매결정이 필요한 결제방식입니다.</li>
										<li>· <font color=red>주의! 발급된 가상계좌로 입금 시, 반드시 이름 /
												금액이 꼭 일치해야 합니다!</font></li>
									</ul>
								</div>
								<div id="RefundInfoWrap" style="display: none;">
									<h3>환불 계좌</h3>
									<div class="tbl-order">
										<table>
											<caption>환불 계좌</caption>
											<colgroup>
												<col style="width: 110px">
												<col />
											</colgroup>
											<tbody>
												<tr>
													<th scope="row"><div class="txt-l">환불 계좌</div></th>
													<td>
														<ul class="pay-method">
															예금주 :
															<input type="text" name="refund_name" id="refund_name"
																form="order_form" value="" class="MS_refund_holder"
																readonly onfocus="this.blur()" /> 계좌정보 :
															<select name="refund_bank" id="refund_bank"
																form="order_form">
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
															<input type="text" name="refund_account"
																id="refund_account" form="order_form" value=""
																class="MS_input_txt MS_refund_account" size="20"
																maxlength="20" />
															<label><input type="checkbox"
																name="refund_info_agree" form="order_form" value="Y" />
																환불계좌정보 제공 동의</label>
														</ul>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<!-- .tbl-order -->
								</div>

								<h3>주문자 동의</h3>
								<div class="tbl-order">
									<table>
										<caption>주문자 동의</caption>
										<colgroup>
											<col style="width: 130px">
											<col />
										</colgroup>
										<tbody>
											<tr>
												<th scope="row"><div class="txt-l">청약철회 방침</div></th>
												<td><textarea id='recallpolicy' cols="50" rows="5"
														class="MS_textarea" readonly="readonly">웨얼하우스 반품/교환/환불 정책

- 웨얼하우스는 전자상거래 등 소비자 보호에 관한 법률 관련규정에 의해 소비자의 단순변심에 의한 교환 환불을 
  해드리고 있습니다. 
- 교환/환불의 경우 제품 수령후 7일이내에서 가능하며, 교환은 1회에 한해서만 가능합니다.

또한 아래와 같은 사항의 경우에는 교환/환불이 불가하오니 숙지해주시기 바랍니다.

- 소비자에게 책임있는 사유로 재화등이 멸실 또는 훼손된 경우
- 반송시에 제품의 상태 보존 소홀(구김,택제거)로인해 제품의 가치가 현저희 감소한 경우  
- 소비자의 사용 또는 일부 소비에 의하여 재화등의 가치가 현저히 감소한 경우
- 시간의 경과에 의하여 재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우
- 복제가 가능한 재화등의 포장을 훼손한경우
- 개별 주문 생산되는 재화,세일행사등 반품/환불을 금하는 정보에 대해 사전동의를 얻은 경우
 

근거 : 전자상거래 등 소비자 보호에 관한 법률 관련규정 [법 제 17조][시행령 제 21조]등</textarea> <br /> <label
													class="label w120"> <input type="radio"
														name="okrecall" form="order_form" value="Y">
														동의합니다.
												</label> <label class="label"> <input type="radio"
														name="okrecall" form="order_form" value="N" checked>
														동의하지 않습니다.
												</label></td>
											</tr>
											<tr>
												<th scope="row"><div class="txt-l">주문동의</div></th>
												<td><label class="label"> <input
														type="checkbox" id="pay_agree" name="pay_agree"
														form="order_form" /> 상기 결제정보를 확인하였으며, 구매진행에 동의합니다.
												</label></td>
											</tr>
										</tbody>
									</table>
								</div>
								<!-- .tbl-order -->
								<div id="paybutton">
									<a href="javascript:sendIt();">
									<img src="<%=cp %>/project3/mypage/images/order_pay_ok.gif" alt="주문하기" title="주문하기" /></a>
									<a href="<%=cp %>/shop/basket.do">
									<img src="<%=cp %>/project3/mypage/images/order_pay_cancel.gif" alt="주문취소" title="주문취소" /></a>
								</div>
							</fieldset>
						</form>
					</div>
					<!-- .page-body -->
				</div>
				<!-- #order -->
			</div>
			<!-- #content -->
		</div>
		<!-- #contentWrap -->
	</div>
	<!-- #contentWrapper-->
	
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
