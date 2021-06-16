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
<title>Insert title here</title>
<!-- 테두리 -->
<link href="<%=cp%>/project3/login/img/icon.png" rel="shortcut icon" type="image/x-icon">

<script language="JavaScript"> 
function bluring(){
if(event.srcElement.tagName=="A"||event.srcElement.tagName=="IMG") document.body.focus();
}
document.onfocusin=bluring;
</script>



<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>



	
</head>

<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/css/faqStyle.css">
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


<script type="text/javascript">



function search_submit() {
    var oj = document.search;
    if (oj.getAttribute('search') != 'null') {
        var reg = /\s{2}/g;
        oj.search.value = oj.search.value.replace(reg, '');
        oj.submit();
    }
}

function topnotice(temp, temp2) {
    window.open("/html/notice.html?date=" + temp + "&db=" + temp2, "", "width=450,height=450,scrollbars=yes");
}
function notice() {
    window.open("/html/notice.html?mode=list", "", "width=450,height=450,scrollbars=yes");
}

        function view_join_terms() {
            window.open('/html/join_terms.html','join_terms','height=570,width=590,scrollbars=yes');
        }

    function bottom_privacy() {
        window.open('/html/privacy.html', 'privacy', 'height=570,width=590,scrollbars=yes');
    }

                if (typeof wcs_do == 'function') {
                    wcs_do();
                }

function faqSearch(mode, val) {
    // mode 값은 필수임(keyword 일 경우 'val' 없음)
    if (mode.length == 0) {
        alert('다시 검색해주세요.');
        return;
    }
    if (document.faqSearchForm == undefined || document.faqSearchForm.mode == undefined || document.faqSearchForm.category == undefined || document.faqSearchForm.keyword == undefined) return;
    var _form = document.faqSearchForm;

    // 검색에 필요한 값 설정
    _form.mode.value = mode;
    switch (mode) {
        case 'category':
        case 'best':
            _form.keyword.value = val;
            break;
        case 'keyword':
            _category = document.getElementById('search-category');
            _keyword  = document.getElementById('faqSearch');
            if (_keyword.value.length < 2) {
                alert('검색어는 2자이상 입력해주세요.');
                _keyword.focus();
                return;
            }
            _form.category.value = _category.value;
            _form.keyword.value = _keyword.value;
            break;
    } // end switch(mode)
    _form.submit();
}

jQuery('#faqTable tr').click(function() {
    if (jQuery(this).next(':first').hasClass('slide-hide')) {
        jQuery('.slide-show').removeClass('slide-show').addClass('slide-hide');
        jQuery(this).next('.slide-hide:first').removeClass('slide-hide').addClass('slide-show');
        faqUpdateHits(jQuery(this).attr('uid'));
    } else if (jQuery(this).next(':first').hasClass('slide-show')) {
        jQuery(this).next('.slide-show:first').removeClass('slide-show').addClass('slide-hide');
    }
});
/*
var _table = document.getElementById('faqTable');
var _tr = _table.getElementsByTagName('tr');
for (var i = 0; i < _tr.length; i++) {
    _tr[i].onclick = function() {
        if (this.nextElementSibling === undefined) {
            _slide = this.nextSibling;
            if (_slide == null) {
                return true;
            }
            _filter = _slide.className;
            if (!_filter) {
                return true;
            }
            if (_filter == 'slide-hide') {
                for(var i = 0; i < _tr.length; i++) {
                    if (_tr[i].className == 'slide-show') {
                        _tr[i].className = 'slide-hide';
                    }
                }
                _slide.className = 'slide-show';
                faqUpdateHits(this.getAttribute('uid'));
            } else {
                _slide.className = 'slide-hide';
            }
        } else {
            _slide = this.nextElementSibling;
            _filter = _slide.getAttribute('class');
            if (!_filter) {
                return true;
            }
            if (_filter == 'slide-hide') {
                for (var i = 0; i < _tr.length; i++) {
                    if (_tr[i].getAttribute('class') == 'slide-show') {
                        _tr[i].setAttribute('class', 'slide-hide');
                    }
                }
                _slide.setAttribute('class', 'slide-show');
                faqUpdateHits(this.getAttribute('uid'));
            } else {
                _slide.setAttribute('class', 'slide-hide');
            }
        }
        return true;
    }
}
*/
// FAQ 클릭수 증가
function faqUpdateHits(uid) {
    jQuery.ajax({
        type: 'get',
        url: '/shop/faq_hits.html',
        dataType: 'html',
        data: { 'uid': uid },
        success: function(req) {
            return false;
        }
    });
    return false;
}

            function faqEnter(e) {
                var e = e || window.event;
                if (e.keyCode == 13) {
                    faqSearch('keyword');
                }
            }

</script>


<!-- FAQ시작 -->
<div id="contentWrapper">
	<div id="contentWrap">
		<div id="left_menu"></div>
		<div id="content">
			<div id="faqWrap">
				<dl class="loc-navi">
					<dt class="blind">현재 위치</dt>
					<dd>Home > FAQ</dd>
				</dl>
				<div class="page-body">
					<div class="faq-search">
						<div class="search-wrap">
							<fieldset>
								<legend>FAQ 검색 폼</legend>
								<h4>
								<img alt="FAQ 자주 묻는 질문" src="<%=cp %>/project3/image/faq.gif">
								</h4>
								<form action="" name="searchForm" method="post">
								<!-- faq선택 -->
								<select name="searchKey" class="MS_input_select select-category" id="search-category">
									<option value="fsubject">전체검색</option>
									<option value="a">주문</option>
									<option value="b">배송</option>
									<option value="c">교환 및 환불</option>
									<option value="d">회원</option>
									<option value="e">기타</option>
								</select>
								<span class="keyword">
                                    <input type="text" name="searchValue" id="faqSearch" class="MS_input_txt" value="">
                                </span>
                                <a href="<%=cp%>/shop/faq.do"><img alt="검색" src="<%=cp %>/project3/image/btn_faq_search.gif" class="btn-submit"></a>
								</form>
							</fieldset>
						</div><!-- searchwrap끝 -->
					</div><!-- faq-search끝 -->
					<!-- 여기까지FAQ배너 -->
					
					
					<!-- 여기부터FAQ카테고리 -->
					<div id="faq-category">
						<ul class="faq-menu">
						<!-- searchKey=subject&searchValue=1&pageNum=2 -->
							<li><a href="<%=cp %>/shop/faq.do">전체보기</a></li>
							<li value="a"><a href="<%=cp %>/shop/faq.do?searchKey=fcategory&searchValue=주문">주문</a></li>
							<li value="b"><a href="<%=cp %>/shop/faq.do?searchKey=fcategory&searchValue=배송">배송</a></li>
							<li value="c"><a href="<%=cp %>/shop/faq.do?searchKey=fcategory&searchValue=교환">교환 및 환불</a></li>
							<li value="d"><a href="<%=cp %>/shop/faq.do?searchKey=fcategory&searchValue=회원">회원</a></li>
							<li value="e"><a href="<%=cp %>/shop/faq.do?searchKey=fcategory&searchValue=기타">기타</a></li>
						</ul>
					</div><!-- faq카테고리끝 -->
					
					
					<!-- 번호분류 -->
					<div id="faqTable">
						<table summary="분류 제목">
							<caption>질문/답변</caption>
							<colgroup>
								<col width="55">
								<col width="150">
								<col width="*">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">
										<div class="tb-center">번호</div>
									</th>
									<th scope="col">
										<div class="tb-center">분류</div>
									</th>
									<th scope="col">
										<div class="tb-center">제목</div>
									</th>
								</tr>
							</thead>
							
							<tbody>
							<c:forEach var="dto" items="${lists }">
								<tr uid="6">
									<td>
										<div class="tb-center"><a href="${articleUrl }&fnum=${dto.fnum}">${dto.fnum }</a></div>
									</td>
									<td>
										<div class="tb-center"><a href="${articleUrl }&fnum=${dto.fnum}">${dto.fcategory }</a></div>
									</td>
									<td>
										<div class="tq-left"><a href="${articleUrl }&fnum=${dto.fnum}">${dto.fsubject }</a></div>
									</td>
								</tr>
							</c:forEach>
							
							
							
							</tbody>
							
							
							
							
							
							
							
							
							
							
						</table>
					
					
					</div>
					
					
				</div><!-- page-body끝 -->
				<br/>
				<div align="center" class="paper">

					${pageIndexList }

				</div><br/>
				<%-- <div id="footer">
					<c:if test="${dataCount!=0 }">
						${pageIndexList }
					</c:if>
					<c:if test="${dataCount==0 }">
						등록된 게시물이 없습니다.
					</c:if>
				</div> --%>
				
				
				
				
			</div><!-- faqWrap끝 -->
			
			
		</div><!-- content끝 -->
	</div><!-- contentWrap끝 -->
</div><!-- contentWrapper끝 -->




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