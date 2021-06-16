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
<title>shopClothes</title>
<link href="<%=cp%>/project3/login/img/icon.png" rel="shortcut icon" type="image/x-icon">

<script language="JavaScript"> 
function bluring(){
if(event.srcElement.tagName=="A"||event.srcElement.tagName=="IMG") document.body.focus();
}
document.onfocusin=bluring;
</script>
<style type="text/css">

#comment_password {
    position: absolute;
    display: none;
    width: 300px;
    border: 2px solid #757575;
    padding: 7px;
    background: #FFF;
    z-index: 6;
}

        #videotalk_area { padding:20px 0; text-align:center; }
        #videotalk_area iframe { width:90%; height:100%; margin:0 auto; border:none; outline:none; }
        #videotalk_area .btn-movietalk { padding-top:15px; }
        #videotalk_area .btn-movietalk a,
        #videotalk_area .btn-movietalk img { border:none; outline:none; }
        #videotalk_area .btn-movietalk img { width:30%; }

#powerReview .PR15N01-recmd .star-list em, #powerReview .frm .recmd > .star-list em { color:#939393;}
#layerReviewModify .recmd .star-list em, #layerReviewModify .layer .recmd .star-list em { color:#939393;}
#powerReview .PR15N01-review-wrap > li .star-icon .star em, #powerReview .review-wrap > li .star-icon em { color:#939393;}
#writeReview .lcont .review .star-icon em { color:#939393;} 
#powerReview .review-wrap > li .pr-options { background:#f8f8f8;}
#powerReview .PR15N01-review-wrap > li .pr-options { background:#f8f8f8;}
#powerReview .review-wrap > li .pr-options .emp { color:#83a0ff;}
#powerReview .PR15N01-review-wrap > li .pr-options .emp { color:#83a0ff;}
#powerReview #pr_authimgdiv { z-index:999999}
.popup_visible_viewPowerReview { height: auto; }                #powerReview .PR15N01-info .score dt { color:#ffffff;}
                #powerReview .PR15N01-info .score dt { background-color:#000000;}
                #powerReview .PR15N01-recmd .cvr a.lnk-review { color:#ffffff;}
                #powerReview .PR15N01-recmd .cvr a.lnk-review { background-color:#000000;}
                #powerReview .PR15N01-info .chart li .bar .abs { background-color:#ff4c23;}#powerReview .multi-star .star1 em { color:#939393;}
#powerReview .star1 .star-list em {color:#939393;}

</style>
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
<script type="text/javascript" src="<%=cp %>/project3/js/shopdetail.js"></script>

<link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" rel="stylesheet" type="text/css">
<link href="http://zooyork77.img7.kr/onedesign/mainrolling/nerveSlider.min.css" rel="stylesheet" type="text/css">
<link href="http://cdn.rawgit.com/young-ha/webfont-archive/20161201/css/Arita-dotum.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" type="text/css" href="http://cdn015.negagea.net/wherehouse/2018/webstore/feature/staffsnap/css/pgwslider.css">

<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async="" src="https://cdn.channel.io/plugin/ch-plugin-web.js" charset="UTF-8"></script>
<script src="https://connect.facebook.net/signals/config/194240801406786?v=2.9.39&amp;r=stable" async=""></script>
<script src="https://connect.facebook.net/signals/config/2544229505888697?v=2.9.39&amp;r=stable" async=""></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script><script language="JavaScript"></script> 
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









<!-- 대메뉴 롤오버시 중메뉴 노출 -->
<script language="JavaScript"> 

 
if(NS || IE) action = window.setInterval("heartBeat2()",1);
 
function Layers_findObj(n, d) { //v4.0
	var p,i,x;  if(!d) d=document; if((p=n.indexOf('?'))>0&&parent.frames.length) {
	  d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
	if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
	for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=Layers_findObj(n,d.layers[i].document);
	if(!x && document.getElementById) x=document.getElementById(n); return x;
}
 
 
 
function Layers_showHideLayers(strArg1, strArg2, strArg3) { //v3.0
 
	var i,p,v,obj,args=Layers_showHideLayers.arguments;
	for (i=0; i<(args.length-2); i+=3) if ((obj=Layers_findObj(args[i]))!=null) { v=args[i+2];
	  if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v='hide')?'hidden':v; }
	  obj.visibility=v; }
 
}
 
 
//-->
</script>






<!-- 테두리 -->
<script language="JavaScript"> 
function bluring(){
if(event.srcElement.tagName=="A"||event.srcElement.tagName=="IMG") document.body.focus();
}
document.onfocusin=bluring;
</script>




<!-- Facebook Pixel Code -->
<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', '2544229505888697');
  fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
  src="https://www.facebook.com/tr?id=2544229505888697&ev=PageView&noscript=1"
/></noscript>
<!-- End Facebook Pixel Code -->


<!-- Global site tag (gtag.js) - Google Analytics -->
<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-164254124-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-164254124-1');
</script>

<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script><script type="text/javascript">
<!--
    function setCookieCpa(cookie_name, cookie_value, expire_date) {
        var cookieurl = '.espionage.co.kr';
        var today = new Date();
        var expire = new Date();
        expire.setTime(today.getTime() + 3600000 * 24 * expire_date);
        cookies = cookie_name + '=' + cookie_value + '; path=/;';
        cookies += (cookieurl) ? ' DOMAIN=' + cookieurl + '; ' : '';
        if (expire_date != 0) cookies += 'expires=' + expire.toGMTString();
        document.cookie = cookies;
    }

    if (typeof wcs == 'object') {   // typeof WCS start
        if(!wcs_add) var wcs_add = {}; 
        wcs_add["wa"] = "s_3799e385f5cf";
        wcs.checkoutWhitelist = ["espionage.co.kr","www.espionage.co.kr"];
        
        // referrer
        wcs.inflow("espionage.co.kr");
        if (wcs.isCPA) { 
            setCookieCpa('isCPA', 'Y', 1);
        }
        
    }   // typeof WCS END

//-->
</script><script src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/984775192/?random=1619154801019&amp;fst=1619154801019&amp;num=1&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635471%2C2505059650&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_his=10&amp;u_tz=540&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=http%3A%2F%2Fespionage.co.kr%2Fshop%2Fshopdetail.html%3Fbranduid%3D1000002787%26xcode%3D061%26mcode%3D007%26scode%3D001%26type%3DX%26sort%3Dregdate%26cur_code%3D061007%26GfDT%3DbGZ3UF4%253D&amp;ref=http%3A%2F%2Fespionage.co.kr%2Fshop%2Fshopbrand.html%3Fxcode%3D061%26type%3DM%26mcode%3D007&amp;tiba=%5BReversible%20Bucket%20Hat%20Black%5D&amp;hn=www.googleadservices.com&amp;rfmt=3&amp;fmt=4"></script><script type="text/javascript" src="https://log5.makeshop.co.kr/js/mslog.js?r=0.9079344841134667"></script></head>


<body data-new-gr-c-s-check-loaded="14.1007.0" data-gr-ext-installed="">
<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/js/lazyload.min.js"></script>
<script type="text/javascript">
function getCookiefss(name) {
    lims = document.cookie;
    var index = lims.indexOf(name + "=");
    if (index == -1) {
        return null;
    }
    index = lims.indexOf("=", index) + 1; // first character
    var endstr = lims.indexOf(';', index);
    if (endstr == -1) {
        endstr = lims.length; // last character
    }
    return unescape(lims.substring(index, endstr));
}
</script><script type="text/javascript">
var MOBILE_USE = '';
</script><script type="text/javascript" src="/js/flash.js"></script>
<script type="text/javascript" src="/js/neodesign/rightbanner.js"></script>
<script type="text/javascript" src="/js/bookmark.js"></script>


<form name="allbasket" method="post" action="/shop/basket.html">
<input type="hidden" name="totalnum" value="">
<input type="hidden" name="collbrandcode">
<input type="hidden" name="xcode" value="061">
<input type="hidden" name="mcode" value="007">
<input type="hidden" name="typep" value="X">
<input type="hidden" name="aramount">
<input type="hidden" name="arspcode">
<input type="hidden" name="arspcode2">
<input type="hidden" name="optionindex">
<input type="hidden" name="alluid">
<input type="hidden" name="alloptiontype">
<input type="hidden" name="aropts">
<input type="hidden" name="checktype">
<input type="hidden" name="ordertype">
<input type="hidden" name="brandcode" value="061007000133">
<input type="hidden" name="branduid" value="1000002787">
<input type="hidden" name="cart_free" value="">
<input type="hidden" name="opt_type" value="NO">
<input type="hidden" name="basket_use" value="Y">
</form>

<script type="text/javascript" src="/js/jquery.form.js"></script>
<script type="text/javascript" src="/js/jquery.ui.widget.js"></script>
<script type="text/javascript" src="/js/jquery.iframe-transport.js"></script>
<script type="text/javascript" src="/js/jquery.fileupload.js"></script>
<script type="text/javascript" src="/js/jquery.popupoverlay.js"></script>
<script type="text/javascript" src="/js/power_review.js?v=20190627"></script>

<script type="text/javascript">

var shop_language = 'kor';
var exchange_rate = '';

var baskethidden = 'A';


var ORBAS = 'A';
var min_amount = '1';
var min_add_amount = '1';
var max_amount  = '5';
var product_uid = '1000002787';
var product_name = 'Reversible Bucket Hat Black';
var product_price = '36000';
var option_type = 'NO';
var option_display_type = 'EVERY';
var option_insert_mode = 'auto';
var is_dummy = true;
var is_exist = false;
var optionJsonData = {basic:{0:{0:{adminuser:'zooyork77',uid:'1000002787',sto_id:'1',opt_ids:'',sto_type:'BASIC',sto_sort:'0',sto_matrix:'0:0',sto_code:'',opt_values:'',sto_price:'0',sto_provide_price:'0',sto_real_stock:'0',sto_unlimit:'N',sto_check:'',sto_stop_use:'Y',sto_stop_stock:'0',sto_stop_send:'Y',sto_stop_date:'2021-01-16 16:19:52',sto_safe_use:'N',sto_safe_stock:'0',sto_safe_send:'N',sto_safe_date:'',sto_order_stock:'29',sto_state:'SOLDOUT',sto_note:'',sto_smartpickup:'',sto_image:'',sto_detail_image:'',sto_max:'',sto_min:'',org_opt_price:'0'}}}};
var view_member_only_price = '';
var IS_LOGIN = 'false';
var is_mobile_use = false;
var template_m_setid = 41066;
var option_stock_display = 'NO';
var option_note_display  = 'NO';
var display_addi_opt_name = '';
var baro_opt = 'N';
var basketcnt = '0'; 
var is_extra_product = '1';
var is_extra_product_custom = '';
var quantity_maxlength = '';

function show_hide(target, idx, lock, level, code, num1, num2, hitplus, hits_plus, uid) {
    if (level == 'unlogin') {
        alert('해당 게시물은 로그인 하셔야 확인이 가능합니다.');
        return;
    }
    if (level == 'nogroup') {
        alert('해당 게시판을 보실 수 있는 권한이 없습니다.');
        return;
    }
    (function($) {
        $.each($('[id^=' + target + '_block]'), function() {
            if ($(this).attr('id') == (target + '_block' + idx)) {
                if ($(this).css('display') == 'block' || $(this).css('display') == 'table-row') {
                    $(this).css('display', 'none');
                } else {
                    if ($.browser.msie) {
                        if (Math.abs($.browser.version) > 9) {
                            $(this).css('display', 'table-row').focus();
                        } else {
                            $(this).css('display', 'block').focus();
                        }
                    } else {
                        $(this).css('display', (this.nodeName.toLowerCase() == 'tr') ? 'table-row' : 'block').focus();
                    }
                    // 비밀번호가 승인된글은 다시 가져오지 않기 위함
                    if ($(this).find('.' + target + '_content').html().length == 0) {
                        comment_load(target + '_comment', code, num1, num2, idx, hitplus, hits_plus, '', uid);
                    } else {
                        // 비밀번호가 승인된 글 선택시 조회수 증가
                        if (lock == 'Y' && $(this).find('.' + target + '_content').html().indexOf('_chkpasswd') < 0) {
                            lock = 'N';
                        } 
                        // 비밀글 조회수 증가 기능 추가로 comment_load 에서도 조회수 업데이트 함.
                        if (lock != 'Y') update_hits(target, code, num1, num2, idx, hitplus, hits_plus);
                    }

                                    // 스크롤을 해당 글 위치로 이동
                var _offset_top = $('#' + $(this).attr('id')).offset().top;
                $('html, body').animate({ scrollTop: (_offset_top > 100 ? _offset_top - 100 : _offset_top) + 'px' }, 500);
                }
            } else {
                $(this).hide();
                // 비밀번호가 승인된것은 유지 하기 위해 주석처리
                //$('.' + target + '_content').empty();
            }
        });
    })(jQuery);
};


function spam_view() {
    return;
}


// ajax 호출하여 클릭된 게시글의 Hit수를 증가후 증가된 hit수를 보여주도록한다.
// 08. 02. 27 add by jiyun
// 08. 11. 11 스크립트 이름 변경. ward
function update_hits(target, code, num1, num2, idx, hitplus, hits_plus) {
    (function($) {
        $.ajax({
            type: 'GET',
            url: "/shop/update_hits.html",
            dataType: 'html',
            data: {
                'code': code,
                'num1': num1,
                'num2': num2,
                'hitplus': hitplus,
                'hits_plus': hits_plus
            },
            success: function(cnt) {
                $('#' + target + '_showhits' + idx).text(cnt);
                return false;
            }
        });
    })(jQuery);
    return false;
}

// 잠금글을 해당 상품 상세 하단에서 확인 가능하도록 추가함
// 08. 01. 16 add by jysung
function chk_lock(target, code, num1, num2, passwdId, hitplus, hits_plus, uid) {
    (function($) {
        var passwd = $('#' + passwdId);
        if ($(passwd).val().length == 0) {
            alert('글 작성시 입력한 비밀번호를 입력해주세요.');
            $(passwd).focus();
            return false;
        }
        var idx = $('.' + target.replace('_comment', '_content')).index($('#' + passwdId).parents('.' + target.replace('_comment', '_content'))) + 1;
        comment_load(target, code, num1, num2, idx, hitplus, hits_plus, passwd, uid);

    })(jQuery);
    // 08. 11. 11 스크립트 이름 변경 ward
    //new passwd_checker(code, brand, uid, cuid, passwd, id);
}


function comment_load(target, code, num1, num2, idx, hitplus, hits_plus, passwd, uid) {
    (function($) {
        var _param = {
            'target': target,
            'code': code,
            'num1': num1,
            'num2': num2,
            'passwd': ($(passwd).val() || ''),
            'branduid' : uid
        };
        $.ajax({
            type: 'POST',
            url: '/shop/chkpasswd_brandqna.html',
            //dataType: 'json',
            dataType: 'html',
            data: _param,
            success: function(req) {
                if (req === 'FALSE') {
                    alert(' 비밀번호가 틀립니다.');
                    $(passwd).focus();
                } else {
                    // 비밀번호가 승인된것은 유지 하기 위해 주석처리
                    //$('.' + target.replace('_comment', '_content')).empty();
                    $('#' + target.replace('_comment', '_block' + idx)).find('.' + target.replace('_comment', '_content')).html(req);
                    if (req.indexOf('_chkpasswd') < 0) {
                        update_hits(target.replace('_comment', ''), code, num1, num2, idx, hitplus, hits_plus);
                    }
                }
                return false;
            }
        });
    })(jQuery);
}

function key_check(e, target, code, num1, num2, passwdId, hitplus, hits_plus) {
    var e = e || window.event;
    if (escape(e.keyCode) == 13) {
        chk_lock(target, code, num1, num2, passwdId, hitplus, hits_plus);
    }
}

</script>

<link type="text/css" rel="stylesheet" href="/shopimages/zooyork77/template/work/37329/shopdetail.css?t=202009181448">
<script>
                                    function dgg_viewdetail(brandcode){
                                        var windowprops = "height=500,width=820,toolbar=no,menubar=no,resizable=no,status=no,scrollbars=yes";
                                        var pop = window.open("/shop/dgg_detailpage.html?brandcode=" + brandcode, "MK_dgg", windowprops);
                                        pop.focus();
                                    }
</script>
<style>
.prd-detail-section-title {font-size:19px; font-family: 'Open Sans', sans-serif; text-decoration:underline; color:#000;}
.prd-detail-size-td {font-size:13px;width:184px; height:40px; border:1px solid #d0d0d0;}
.prd-detail-size-td span {font-size:12px; font-weight:bold; font-family: 'Open Sans', sans-serif; text-transform:uppercase;}
.prd-detail-section-body {font-size:12px; font-family: 'Nanum Gothic', sans-serif; word-break:break-all;}
.prd-detail-size-notice {color:#000;height:60px; border:1px solid #d0d0d0;}
.prd-detail-size-notice span {text-align:center;font-size:11px;color:#ff0000;font-weight:bold;}
</style>
					
<div id="blk_scroll_wings" style="top: 98px; left: 809px; visibility: visible;"><script type="text/javascript" src="/html/shopRbanner.html?param1=1"></script>
<link type="text/css" rel="stylesheet" href="/shopimages/zooyork77/template/work/37329/scroll.css?t=202006051809">
                        <div id="f2s-latest-container" class="f2s-swiper f2s-latest-swiper">
                            <div class="f2s-latest-title">RECENTLY VIEWED</div>
                            <div class="f2s-container-wrap">
                                <div class="swiper-container swiper-container-vertical">
                                    <div class="swiper-wrapper" style="transform: translate3d(0px, -420px, 0px); transition-duration: 0s;"><div class="swiper-slide swiper-slide-duplicate"><a href="/shop/shopdetail.html?branduid=1000003816"><img src="/shopimages/zooyork77/0610060002303.jpg?1618302114" alt=""><span class="f2s-item-name">Bill Fatigue Pants Olive</span></a></div><div class="swiper-slide swiper-slide-duplicate"><a href="/shop/shopdetail.html?branduid=1000003813"><img src="/shopimages/zooyork77/0610070001413.jpg?1618472838" alt=""><span class="f2s-item-name">Army Fatigue Hat Olive</span></a></div><div class="swiper-slide swiper-slide-duplicate"><a href="/shop/shopdetail.html?branduid=1000003810"><img src="/shopimages/zooyork77/0610060002253.jpg?1618486075" alt=""><span class="f2s-item-name">Bill Comfort Fatigue Pants Tan</span></a></div><div class="swiper-slide swiper-slide-duplicate"><a href="/shop/shopdetail.html?branduid=1000003809"><img src="/shopimages/zooyork77/0610060002243.jpg?1618305036" alt=""><span class="f2s-item-name">Cliff Comfort Denim Pants Cream</span></a></div>
                                                            <div class="swiper-slide swiper-slide-visible swiper-slide-active"><a href="/shop/shopdetail.html?branduid=1000002787"><img src="/shopimages/zooyork77/0610070001333.jpg?1611981021" alt=""><span class="f2s-item-name">Reversible Bucket Hat Black</span></a></div>                        <div class="swiper-slide swiper-slide-visible"><a href="/shop/shopdetail.html?branduid=1000003607"><img src="/shopimages/zooyork77/0610010004853.jpg?1616131999" alt=""><span class="f2s-item-name">US Chemical Over Jacket Olive</span></a></div>                        <div class="swiper-slide swiper-slide-visible"><a href="/shop/shopdetail.html?branduid=1000003812"><img src="/shopimages/zooyork77/0610070001403.jpg?1618472380" alt=""><span class="f2s-item-name">Army Fatigue Hat Black</span></a></div>                        <div class="swiper-slide swiper-slide-visible"><a href="/shop/shopdetail.html?branduid=1000003701"><img src="/shopimages/zooyork77/0610040002713.jpg?1616727520" alt=""><span class="f2s-item-name">Half Zip Anorak Shirts Grey</span></a></div>                        <div class="swiper-slide"><a href="/shop/shopdetail.html?branduid=1000003816"><img src="/shopimages/zooyork77/0610060002303.jpg?1618302114" alt=""><span class="f2s-item-name">Bill Fatigue Pants Olive</span></a></div>                        <div class="swiper-slide"><a href="/shop/shopdetail.html?branduid=1000003813"><img src="/shopimages/zooyork77/0610070001413.jpg?1618472838" alt=""><span class="f2s-item-name">Army Fatigue Hat Olive</span></a></div>                        <div class="swiper-slide"><a href="/shop/shopdetail.html?branduid=1000003810"><img src="/shopimages/zooyork77/0610060002253.jpg?1618486075" alt=""><span class="f2s-item-name">Bill Comfort Fatigue Pants Tan</span></a></div>                        <div class="swiper-slide"><a href="/shop/shopdetail.html?branduid=1000003809"><img src="/shopimages/zooyork77/0610060002243.jpg?1618305036" alt=""><span class="f2s-item-name">Cliff Comfort Denim Pants Cream</span></a></div>
                                    <div class="swiper-slide swiper-slide-duplicate"><a href="/shop/shopdetail.html?branduid=1000002787"><img src="/shopimages/zooyork77/0610070001333.jpg?1611981021" alt=""><span class="f2s-item-name">Reversible Bucket Hat Black</span></a></div><div class="swiper-slide swiper-slide-duplicate"><a href="/shop/shopdetail.html?branduid=1000003607"><img src="/shopimages/zooyork77/0610010004853.jpg?1616131999" alt=""><span class="f2s-item-name">US Chemical Over Jacket Olive</span></a></div><div class="swiper-slide swiper-slide-duplicate"><a href="/shop/shopdetail.html?branduid=1000003812"><img src="/shopimages/zooyork77/0610070001403.jpg?1618472380" alt=""><span class="f2s-item-name">Army Fatigue Hat Black</span></a></div><div class="swiper-slide swiper-slide-duplicate"><a href="/shop/shopdetail.html?branduid=1000003701"><img src="/shopimages/zooyork77/0610040002713.jpg?1616727520" alt=""><span class="f2s-item-name">Half Zip Anorak Shirts Grey</span></a></div></div>
                                </div>
                                
                            </div>
                            
                        </div>
<link type="text/css" rel="stylesheet" href="/css/lib/swiper/swiper.min.css">

<style type="text/css">

#blk_scroll_wings, #cherrypicker_scroll {
    position: absolute;
    visibility: hidden;
    z-index: 999;
}

</style>

<script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/js/lib/swiper/idangerous.swiper.2.7.6.min.js"></script>

<script type="text/javascript">

            var jq183 = jQuery.noConflict();

			var StringBuffer = function() {
				this.buffer = new Array();
			};

			StringBuffer.prototype.append = function(str) {
				this.buffer[this.buffer.length] = str;
			};

			StringBuffer.prototype.toString = function() {
				return this.buffer.join("");
			};

			function createClass(name, rules) {
				var styleSheets = document.styleSheets;

				if (!styleSheets.length) {
					var style = document.createElement('style');
					style.type = 'text/css';
					style.className = 'f2s-style';
					document.getElementsByTagName('head')[0].appendChild(style);
				}
				
				var lastStyleSheet = styleSheets[styleSheets.length-1];
				var cssRules = lastStyleSheet.cssRules;

				if (lastStyleSheet.insertRule) {
					lastStyleSheet.insertRule(name + '{' + rules + '}', cssRules == null ? 0 : cssRules.length);
				} else {
					lastStyleSheet.addRule(name, rules);
				}
			}

			function swiper_random_num(max, prev_random_num) {
				var _rnd_num = Math.floor(Math.random() * max) + 1;
				if (prev_random_num == _rnd_num) {
					return swiper_random_num(max, prev_random_num);
				}
				return _rnd_num;
			}

            (function($) {
                $(function() {
					$.getScript('/makeshop/newmanager/js/script_products.js', function() {
						window.swiperRolling = window.swiperRolling || [];

						(function(App) {
							App._cfg = {};
							App._cfg.id = '#f2s-latest-container';

							App._cfg.design = 'EASY'; 
							App._cfg.banner_use = 'Y' || 'Y';
							App._cfg.width = 'auto' || '230px';
							App._cfg.height = 'auto' || '230px';
							App._cfg.effect = 'slide' || 'slide';
							App._cfg.direction = 'vertical' || 'horizontal';
                            App._cfg.view_cnt = 4 || 2;
							App._cfg.view_move_cnt = '1' == 'all' ? App._cfg.view_cnt : '1';
							App._cfg.title_type = 'text' || 'text';
							App._cfg.title = '' || '최근본상품';
							App._cfg.title_font = 'arial' || 'Dotum';
							App._cfg.title_font_size = '12px' || '11px';
							App._cfg.title_font_color = '#000000' || '#000000';
                            App._cfg.item_size = '100px' || '60px';
							App._cfg.item_border = 'Y' || 'N';
							App._cfg.item_border_color = '#6c6c6c' || '#000000';
                            App._cfg.item_name = 'N' || 'N';
							App._cfg.item_name_font = 'dotum' || 'Dotum';
							App._cfg.item_name_font_size = '12px' || '12px';
                            App._cfg.item_name_font_color = '#000' || '#000000';
							App._cfg.background_color = '#fff' || '#ffffff';
							App._cfg.item_size_height = App._cfg.item_name == 'Y' ? parseInt(App._cfg.item_size) + parseInt(App._cfg.item_name_font_size) + 13 : App._cfg.item_size;
							App._cfg.speed = 0 || 0;
							App._cfg.random = 'N' || 'N';
							App._cfg.prev_random_num = 1;
							App._cfg.button_arrow_use = 'N' || 'Y';
							App._cfg.button_arrow_type = 1 || 3;
							App._cfg.button_arrow_color = '#939393' || '#333333';
							App._cfg.button_arrow_over_color = '#000000'|| '#333333';
                            App._cfg.button_arrow_hidden = 'N' || 'N';
							App._cfg.button_arrow_size = '100%' || '100%';
							App._cfg.button_arrow_position = 'vertical' == 'vertical' ? 'v-m' : 'h-m';
							App._cfg.toggle_btn_use = 'N' || 'Y';

							window.makeLatest(App);
						}(window.swiperRolling['latest'] = window.swiperRolling['latest'] || {}));
						setTimeout(function() {
							window.swiperRolling['latest'].init();
						}, 0);
					});
                });
            })(jq183);

    banner_position_type = 'CENTER';
    BannerHandler('blk_scroll_wings//98||620||Y');
    if( window.addEventListener ) {
        window.addEventListener("load",function() {
                BannerHandler('blk_scroll_wings//98||620||Y');
        },false);
    } else if( document.addEventListener ) {
        document.addEventListener("load",function() {
            BannerHandler('blk_scroll_wings//98||620||Y');
        },false);
    } else if( window.attachEvent ) {
        window.attachEvent("onload",function() {
            BannerHandler('blk_scroll_wings//98||620||Y');
        });
    }

</script>

</div>
<div id="cherrypicker_scroll"></div>
<div id="wrap">
    
<link type="text/css" rel="stylesheet" href="/shopimages/zooyork77/template/work/37329/header.3.css?t=202101301320">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>



<link type="text/css" rel="stylesheet" href="/shopimages/zooyork77/template/unit/8/unit_header.css">
<script type="text/javascript">
function attendance_open(){
window.open('/shop/attendance.html','attendance','height=670,width=550');
}
</script>

<div id="header_top">
<div id="header">

   <div id="logo">
     <a href="/"><img src="/design/zooyork77/image/logo2.png" border="0"></a>
   </div> <!-- #logo -->

  <div id="cateline">



   <div id="cate">
     <ul>
	 <li class="catein">
                                    <a href="http://espionage.co.kr/shop/shopbrand.html?xcode=061&amp;type=Y">ESPIONAGE</a>
	     <!-- COMMUNITY 중분류 시작 -->
	     <div class="catebox" style="display: none;">
			<div>
			
                               <!-- 시즌오프중 미노출 메뉴
                                <div style="width:15%!important;padding-left:112px">
				    <h2>SS20</h2>
					<a href="http://www.espionage.co.kr/shop/shopbrand.html?xcode=074&type=Y">ALL ITEM</a>
					<a href="http://www.espionage.co.kr/shop/shopbrand.html?xcode=074&type=N&mcode=001">OUTER</a>
					<a href="http://www.espionage.co.kr/shop/shopbrand.html?xcode=074&type=N&mcode=002">TOP</a>
					<a href="http://www.espionage.co.kr/shop/shopbrand.html?xcode=074&type=N&mcode=003">BOTTOM</a>
					<a href="http://www.espionage.co.kr/shop/shopbrand.html?xcode=074&type=N&mcode=004">ACC</a>
                                        <a href="http://www.espionage.co.kr/shop/shopbrand.html?xcode=074&mcode=005&type=Y">RESTOCK</a>
				</div> -->
			
				<div style="width:15%!important;">
				  <!--<h2>ALL SEASON</h2> -->
				       <a href="/shop/shopbrand.html?xcode=061&amp;type=X">ALL ITEM</a>
                                       <a href="/shop/shopbrand.html?xcode=003&amp;type=Y">2021 SS</a>
                                         <a href="/shop/shopbrand.html?xcode=061&amp;mcode=001&amp;type=X">OUTER</a>
					<a href="/shop/shopbrand.html?xcode=061&amp;mcode=002&amp;type=Y">KNIT</a>
					<a href="/shop/shopbrand.html?xcode=061&amp;mcode=003&amp;type=Y">SWEAT</a>
					<a href="/shop/shopbrand.html?xcode=061&amp;mcode=004&amp;type=Y">SHIRT</a>
					<a href="/shop/shopbrand.html?xcode=061&amp;mcode=005&amp;type=Y">T-SHIRT</a>
					<a href="/shop/shopbrand.html?xcode=061&amp;mcode=006&amp;type=Y">PANTS</a>
					<a href="/shop/shopbrand.html?xcode=061&amp;mcode=007&amp;type=Y">HEADWEAR</a>
					<a href="/shop/shopbrand.html?xcode=061&amp;mcode=008&amp;type=Y">BAG</a>
					<a href="/shop/shopbrand.html?xcode=061&amp;mcode=009&amp;type=Y">ACC</a>
				</div>
                                          </div></div></li><li><a href="/shop/shopbrand.html?xcode=032&amp;type=X">T-LEVEL</a></li>
					   <li><a href="/shop/shopbrand.html?xcode=123&amp;type=X"> SELECTION</a></li>
                                           <li><a href="/board/board.html?code=zooyork77_image6">FEATURES</a></li>
                                           <li><a href="/board/board.html?code=zooyork77_image10">STYLING</a></li>
                                           <li><a href="/board/board.html?code=zooyork77_image8">NEWS</a></li>	 
                                           <li> <a href="/shop/page.html?id=3">STORE</a></li>	 
	 
     </ul>

   </div> <!-- #cate -->


  </div> <!-- #cateline -->



	<div id="logmenu">
	  <ul>
	  <li>
		  <div id="sear" style="float:right;">
               <form action="/shop/shopbrand.html" method="post" name="search">                    <fieldset>
                        <legend>상품 검색 폼</legend>
                            <a style="padding-right:3px;" href="javascript:search_submit();"></a><span><input name="search" class="MS_search_word input-keyword" onkeydown="CheckKey_search();" value="SEARCH" onblur="if(this.value=='') {this.value='SEARCH'}" onfocus="this.value=''"></span>
                    
                    </fieldset>
                </form>			
		  </div>   <!--sear-->
		</li>
	
	    	    <li><a href="/shop/member.html?type=login">LOG IN/JOIN</a></li>
	    <li><a href="/shop/basket.html">CART</a></li>
	    <li><a href="/shop/confirm_login.html?type=myorder">MYPAGE</a></li>
		            <li> <a href="/board/board.html?code=zooyork77_board5">Q&amp;A</a></li>
	    <li><a href="/shop/faq.html">FAQ</a></li>
	    <li><a href="/board/board.html?code=zooyork77_board8">INTERNATIONAL</a></li>
	   
	  </ul>


	</div> <!-- #logmenu -->




   </div> <!-- #logmenu_box -->
	  	   </div> <!-- #logmenu -->








</div> <!-- #header -->
 <!-- #header_top -->
<script type="text/javascript" src="/shopimages/zooyork77/template/unit/8/unit_header.js"></script>


<!-- Channel Plugin Scripts -->
<script>
  function parsePureNumber(number) {
    return parseFloat(number.replace(/[^0-9\.]+/g, '')) || 0
  }
  var settings = {
    "pluginKey": "c72387ed-9848-4421-97be-2c1b7621e012",   
  };
      (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var d = window.document;
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  if (settings && settings.memberId && settings.memberId.indexOf('!--/user_id/--') >= 0) {
    console.error('You do not using makeshop. please visit https://developers.channel.io/docs/guide-for-famous-builders and find correct one');
  } else {
    ChannelIO('boot', settings);
  }
</script>
<!-- End Channel Plugin -->
<script type="text/javascript" src="/shopimages/zooyork77/template/work/37329/header.3.js?t=202101301320"></script>
    <div id="contentWrapper">
        <div id="contentWrap">
            

<div id="left_menu">

</div> <!--left_menu -->

	            <div id="content">


                <div id="productDetail">
		            <div class="page-body">
							
				   
                        <div class="thumb-info">




<!-- 상세이미지 영역 -->
<div class="thumb-wrap">
                                <div class="thumb">
					<img class="detail_image" id="lens_img" src="/shopimages/zooyork77/0610070001332.jpg?1611981021" border="0" width="300">				</div>
                                <div id="sangse_name">
                                  <!-- 추가이미지 시작 -->
				   <div class="listImg">
                                      <ul>
					                                         <li><img src="http://cdn015.negagea.net/wherehouse/ESPIONAGE/20AW/epog_20aw_68_01.jpg" onclick="multi_image_view(this);"></li> 
					                                         <li><img src="http://cdn015.negagea.net/wherehouse/ESPIONAGE/20AW/epog_20aw_68_02.jpg" onclick="multi_image_view(this);"></li> 
					                                         <li><img src="http://cdn015.negagea.net/wherehouse/ESPIONAGE/20AW/epog_20aw_68_03.jpg" onclick="multi_image_view(this);"></li> 
					                                         <li><img src="http://cdn015.negagea.net/wherehouse/ESPIONAGE/20AW/epog_20aw_68_04.jpg" onclick="multi_image_view(this);"></li> 
					                                         <li><img src="http://cdn015.negagea.net/wherehouse/ESPIONAGE/20AW/epog_20aw_68_05.jpg" onclick="multi_image_view(this);"></li> 
					                                      </ul>
                                  </div>
                                </div> <!-- #sangse_name -->                        
</div><!-- .thumb-wrap -->
							
							
<form name="form1" method="post" id="form1" action="/shop/basket.html">
<input type="hidden" name="brandcode" value="061007000133">
<input type="hidden" name="branduid" value="1000002787">
<input type="hidden" name="xcode" value="061">
<input type="hidden" name="mcode" value="007">
<input type="hidden" name="typep" value="X">
<input type="hidden" name="ordertype">
<input type="hidden" name="opts">
<input type="hidden" name="mode">
<input type="hidden" name="optioncode">
<input type="hidden" name="optiontype">
<input type="hidden" name="optslist">
<input type="hidden" id="price" name="price" value="36,000">
<input type="hidden" id="disprice" name="disprice" value="">
<input type="hidden" id="price_wh" name="price_wh" value="36,000">
<input type="hidden" id="disprice_wh" name="disprice_wh" value="">
<input type="hidden" id="option_type_wh" name="option_type_wh" value="NO">
<input type="hidden" id="prd_hybrid_min" name="prd_hybrid_min" value="1">
<input type="hidden" name="MOBILE_USE" value="NO">
<input type="hidden" name="product_type" id="product_type" value="NORMAL">
<input type="hidden" name="multiopt_direct" value="">
<input type="hidden" name="collbasket_type" value="Y">
<input type="hidden" name="package_chk_val" value="0">
<input type="hidden" name="miniq" id="miniq" value="1">
<input type="hidden" name="maxq" id="maxq" value="5">
<input type="hidden" name="cart_free" value="">
<input type="hidden" name="opt_type" value="NO">
<input type="hidden" name="hybrid_op_price" id="hybrid_op_price" value="">
<input type="hidden" name="basket_use" id="basket_use" value="Y">
<input type="hidden" name="spcode"><input type="hidden" name="spcode2"><!-- 상세정보 영역 -->
<div class="info">


	<div class="table-opt">

				<h3 style="font-size:14px; padding-bottom:10px;">Reversible Bucket Hat Black</h3>
                                    <table summary="판매가격, 적립금, 주문수량, 옵션, 사이즈, 상품조르기, sns">
                                        <caption>상품 옵션</caption>                                 
                                        <tbody>
                                                                                      <tr>
                                                <td class="price">
                                                          <div class="tb-left">
                                                          <strike>52,000원</strike> → 
                                                          <span style="color:#ff0000;"><span id="pricevalue" class="price">36,000</span>원</span>
                                                                                                                     </div>
                                                </td>
                                            </tr>
                                           


                                            <tr>
                                                <td colspan="2" onmouseover="MM_showHideLayers('p11','','show');" onmouseout="MM_showHideLayers('p11','','hide');">
<link type="text/css" rel="stylesheet" href="/shopimages/zooyork77/template/unit/14/unit_member_p.css">
<div id="p11" style="position: absolute; z-index: 999; visibility: hidden;" class="guide_box">
<div class="title">WHEREHOUSE MEMBER PRICE</div>


<table class="add_tx">
</table>

<table onmouseover="MM_showHideLayers('p11','','show')" onmouseout="MM_showHideLayers('p11','','hide')">
   <tbody><tr>
    <td class="na">LEVEL.7</td>
    <td class="pr"></td>
    <td class="non">(무료배송) + 월정기 12% 할인쿠폰</td>
   </tr>
   <tr>
    <td class="na">LEVEL.6</td>
    <td class="pr"></td>
    <td class="non">(무료배송) + 월정기 11% 할인쿠폰</td>
   </tr>
   <tr>
    <td class="na">LEVEL.5</td>
    <td class="pr"></td>
    <td class="non">(무료배송) + 월정기 10% 할인쿠폰</td>
   </tr>
   <tr>
    <td class="na">LEVEL.4</td>
    <td class="pr"></td>
    <td class="non">(무료배송) + 월정기 9% 할인쿠폰</td>
   </tr>
   <tr>
    <td class="na">LEVEL.3</td>
    <td class="pr"></td>
    <td class="non">(무료배송) + 월정기 8% 할인쿠폰</td>
   </tr>
   <tr>
    <td class="na">LEVEL.2</td>
    <td class="pr"></td>
    <td class="non">(무료배송) + 월정기 6% 할인쿠폰</td>
   </tr>
   <tr>
    <td class="na">LEVEL.1</td>
    <td class="pr"></td>
    <td class="non">(무료배송) + 월정기 5% 할인쿠폰</td>
   </tr>
</tbody></table>  
*세일상품은 월정기 쿠폰 사용불가
</div> <div class="tb-left" style="cursor:pointer"><a>MEMBER PRICE +</a></div></td>
                                            </tr>
						                    <tr>
                                                <td colspan="2" class="mem"><div class="tb-left"><a href="/board/board.html?code=zooyork77_image8&amp;page=2&amp;type=v&amp;board_cate=&amp;num1=999916&amp;num2=00000&amp;number=40&amp;lock=N" onmouseover="innerText='회원가입 혜택 +'" onmouseout="innerText='MEMBERSHIP BENEFIT +'">MEMBERSHIP BENEFIT +</a></div></td>
                                            </tr>
                                            <!--<tr>
                                                <td colspan="2" onmouseover="MM_showHideLayers('p12','','show');" onmouseout="MM_showHideLayers('p12','','hide');"><div id="p12" style="position:absolute; z-index:999; visibility: hidden; border:1px solid #404040;width:280px; height:460px;background:#fff;margin-left:150px">
<table onmouseover="MM_showHideLayers('p12','','show')" onmouseout="MM_showHideLayers('p12','','hide')">
<tr><td>111

 
</td></tr></table>  
</div><div class="tb-left" style="cursor:pointer;height:20px;line-height:20px;"><a >MEMBERSHIP BENEFIT +</a></div></td>
                                            </tr>-->
                                            <tr>
                                                <td colspan="2" class="mem"><div class="tb-left"><a href="/shop/page.html?id=3" onmouseover="innerText='오프라인스토어 안내 +'" onmouseout="innerText='OFFLINE STORE +'">OFFLINE STORE +</a></div></td>
                                            </tr>
                                            <!--<tr>
                                                <td colspan="2" onmouseover="MM_showHideLayers('p12','','show');" onmouseout="MM_showHideLayers('p12','','hide');"><div id="p12" style="position:absolute; z-index:999; visibility: hidden; border:1px solid #404040;width:280px; height:460px;background:#fff;margin-left:150px">
<table onmouseover="MM_showHideLayers('p12','','show')" onmouseout="MM_showHideLayers('p12','','hide')">
<tr><td>111

 
</td></tr></table>  
</div><div class="tb-left" style="cursor:pointer;height:20px;line-height:20px;"><a >OFFLINE STORE +</a></div></td>
                                            </tr>-->
                                                                                        
					                                                <tr>
                                                <td class="subname"><div class="tb-left">SEASON OFF</div></td>
                                            </tr>
                                            	
											<tr>
                                                <td class="order_info"><div class="tb-left"><a href="/board/board.html?code=zooyork77_board8">INTERNATIONAL ORDER AVAILABLE +</a></div></td>
                                            </tr>
											
                                        </tbody>
                                    </table>
                                    <table summary="판매가격, 적립금, 주문수량, 옵션, 사이즈, 상품조르기, sns" style="width:420px;">
                                        <caption>상품 옵션</caption>
                                        <colgroup>
                                            <col width="55">
                                            <col width="*">
                                        </colgroup>

                                 
                                        <tbody>

    <!-- 통옵 관련 소스 시작 -->																										
                                            																										
    <!-- 하이브리드 소스 시작 -->																										
                                            																										
                                                                                                         
    <!-- 하이브리드옵션소스끝-->																										
                                             																										
    <!-- 추가구성상품 소스 시작 -->																										
                                                                                        <tr>
                                                <td colspan="2" class="add-option-tit">
                                                    <strong>OFFICIAL STORE EXCLUSIVE GOODS</strong>
                                                </td>
                                            </tr>
                                                                                        <tr>
                                                <td colspan="2">
                                                    <table>
                                                        <caption>추가 구성 상품 옵션</caption>
                                                        <colgroup>
                                                            <col width="120">
                                                            <col width="*">
                                                        </colgroup>
                                                        <tbody>
                                                            <tr>
                                                                <td class="add-option-img">
                                                                    <div class="thumb-s"><img class="MS_prod_img_s" src="/shopimages/zooyork77/0010040000013.jpg?1600397507" alt=""></div>
                                                                </td>
                                                                <td class="add-option-wrap">
                                                                    <p class="prd-icon"><span class="MK-product-icons"></span></p>
                                                                    <h3 class="tit-prd">OG Logo Safe Touch Carabiner Matt Silver</h3>
                                                                    <div class="table-opt">
                                                                        <table summary="판매가격, 적립금, 주문수량, 옵션, 사이즈">
                                                                            <caption>상품 옵션</caption>
                                                                            <colgroup>
                                                                                <col width="90">
                                                                                <col width="*">
                                                                            </colgroup>
                                                                            <tbody>
                                                                                <tr>
                                                                                    <th scope="row"><div class="tb-left">판매가격</div></th>
                                                                                    <td class="price">
                                                                                        <div class="tb-left">
                                                                                            2,000원
                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <tr>
                                                                                    <th scope="row"><div class="tb-left">특이사항</div></th>
                                                                                    <td>
                                                                                        <div class="tb-left">
                                                                                            21SS&amp;20FW 제품과 구매가능(단독구매시 자동취소)                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                                                                                                                                                                                                <tr>
                                                                                    <td colspan="2">
                                                                                    <div class="opt-wrap" style="margin-top: 0">
                                                                                                                                                                            <div class="sel-btn"><a href="javascript:extra_option_select_complete(this, '0');"><img src="/images/d3/modern_simple/btn/btn_h18_select_complete.gif" title="옵션 선택 완료" alt="옵션 선택 완료"></a></div>
                                                                                                                                                                            </div>
                                                                                </td></tr>
                                                                                                                                                            </tbody>
                                                                        </table>
                                                                    </div><!-- .table-opt -->
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                                                                        																					
    <!-- 추가구성상품 소스 끝 --> 																										
                                             																										
    <!-- 하이브리드 기본상품 가격 노출 및 선택된 하이브리드 옵션노출항목 소스 시작 -->																								
                                                                                                         
                                                 																										
                                                                
    <!-- 하이브리드 기본상품 가격 노출 및 선택된 하이브리드 옵션노출항목 소스 끝 -->																										
                                                                                                         
                                            																										
                                             																										
                                             																										
                                                 																										
                                             <tr>																										
                                                 <td colspan="2">																										
                                                     <div class="MK_optAddWrap">																										
                                                         <div id="MK_innerOptWrap">																										
                                                             <div id="MK_innerOptScroll">																										
                                                                 <ul id="MK_innerOpt_01" class="MK_inner-opt-cm"><li id="basic_0"><input type="hidden" id="MS_keys_basic_0" value="0:0" class="basic_option"><span class="MK_p-name"><strong>Reversible Bucket Hat Black</strong></span><div class="MK_qty-ctrl"><input type="text" id="MS_amount_basic_0" name="amount[]" value="1" onfocusout="set_amount(this, 'basic');" size="4" style="text-align: right; float: left;" class="basic_option" maxlength=""><a href="javascript:set_amount('MS_amount_basic_0', 'basic', 'up');" class="MK_btn-up"><img src="/images/common/basket_up.gif" alt="수량증가" border="0"></a><a href="javascript:set_amount('MS_amount_basic_0', 'basic', 'down');" class="MK_btn-dw"><img src="/images/common/basket_down.gif" alt="수량감소" border="0"></a></div><strong class="MK_price"><span id="MK_p_price_basic_0">36,000</span>원</strong></li></ul>																										
                                                                 <ul id="MK_innerOpt_02" class="MK_inner-opt-cm"></ul>																										
                                                             </div>																										
                                                                                                         
     <!--  하이브리드 선택된 옵션 총가격 노출소스 시작 -->  
                                                            <div id="MK_innerOptTotal">																				
                                                                 <p class="totalLeft"><span class="MK_txt-total">총 상품 금액</span></p>																									
                                                                 <p class="totalRight">																										
                                                                     <strong class="MK_total" id="MK_p_total">36,000</strong>																										
                                                                     <span class="MK_txt-won">원</span>																										
                                                                 </p>																										
                                                             </div>																										
                                                             <div id="MK_innerOptPrice">																										
                                                                 (상품금액 <span id="MK_txt-prd"></span> 원 + 기본옵션 <span id="MK_txt-opt"></span> 원 )	
                                                             </div>																										
     <!--  하이브리드 선택된 옵션 총가격 노출소스 끝 -->    																									
                                                                                                         
                                                         </div>																										
                                                     </div>																										
                                                 </td>																										
                                             </tr>																										
                                                 																										
                                             																										
                                             																										
                                             <tr>																										
                                                 <td colspan="2">																										
                                                 <div class="opt-wrap">																										
                                                     																										
                                                                                                         
                                                     																										
                                                 </div>																										
                                                 </td>																										
                                             </tr>																										
                                             																										
                                             																										
                                                 																										
                                              																										
    <!-- 통옵 관련 소스 끝 -->					
													
                                                                                    </tbody>
                                    </table>

	</div><!-- .table-opt -->

  									


                 
                          <div class="prd-btns">
                                                                           <a class="roll sbn01" style="margin-right:5px"><span>SOLD OUT</span><span class="over">품절</span></a>
				        <a href="javascript:login_chk('061007000133');" class="roll sbn03"><span>WISH-LIST</span><span class="over">관심상품</span></a>
<!-- qna -->	  <a href="/board/board.html?code=zooyork77_board5&amp;page=1&amp;type=i&amp;branduid=1000002787&amp;returnurl=xcode=&amp;mcode=&amp;scode=" class="roll sbn04">
				        <span>Q &amp; A</span><span class="over">제품문의</span></a>                                                              </div>
                                    							    
                <!-- .prd-btns -->
		     <!--<div class="prd-btns2"></div><div class="prd-btns4"><a href="/board/board.html?code=zooyork77_board8"><img src="http://zooyork77.img7.kr/onedesign/images/w_worldwide_shipping_banner.jpg" border="0"></a></div>-->
                     <div class="prd-btns3"></div>
                     <!--<div class="prd-payco"></div>
                     <div class="prd-kakao"></div>-->   

							
				<div class="warning">SPECIFICATION
<br>-
<br>* Outer Fabric - Cotton 50% Polyester 50%
<br>
<br>Parts &amp; Detail
<br>-
<br>* Reversible
<br>* U.S. Sailor Hat Brim Shape</div>
				  	
		     			        



</div><!-- .info -->
</form>

						
                        </div><!-- .thumb-info -->
						
					




<!------------상세시작--------------------------->
                        <div class="prd-detail" style="text-align:center;padding:60px 0 20px">

	                    <div id="videotalk_area"></div><!-- [OPENEDITOR] --><div style="TEXT-ALIGN: left !important">
<img src="http://cdn015.negagea.net/wherehouse/ESPIONAGE/20AW/epog_20aw_68_wear_01.jpg" border="0">
<br>
<table style="TEXT-ALIGN: center; WIDTH: 923px"> 
<tbody><tr><td class="prd-detail-size-notice" colspan="6">SIZE INFORMATION</td>
</tr><tr>
<td class="prd-detail-size-td"><span>단위:cm</span></td>
<td class="prd-detail-size-td"><span>OS</span></td>
</tr><tr>
<td class="prd-detail-size-td"><span>둘레</span></td>
<td class="prd-detail-size-td">62.0</td>
</tr><tr>
<td class="prd-detail-size-td"><span>깊이</span></td>
<td class="prd-detail-size-td">9.0</td>
</tr><tr>
<td class="prd-detail-size-td"><span>챙길이</span></td>
<td class="prd-detail-size-td">7.0</td>
</tr><tr>
</tr><tr><td class="prd-detail-size-notice" colspan="3"><span>본 실측표의 측정 치수는 웨얼하우스에서 제공되며 절대적이지 않은 참고용 자료입니다.
<br>측정자에 따라서 약간의 오차가 있을 수 있으며 같은 제품 내에서도 실제 기재된 수치와 차이가 있으니 참고용 자료로만 사용하시기 바랍니다.</span></td>
</tr></tbody>
</table><br>
<!--제품 상세설명 시작--><span class="prd-detail-section-title">REVERSIBLE BUCKET HAT</span> 
<div class="prd-detail-section-body02"><!--가로 사이즈---------------------------------------------------------------------------------------------->
<br>
딕시 컵이라 불리는 미 해군의 세일러햇의 챙을 적용한 버킷 햇으로 기존에 발매되었던 버킷 햇보다 낮은 챙의 각도를 보여줍니다. 모자챙의 고시감(Hardness)을 살리기 위해 추가로 지그재그로 스티치를 넣었으며 케어라벨을 제거하고 양면으로 착용 가능하도록 제작하였습니다. 제품 완성 후 노멀워싱 공정을 거쳐 네추럴한 색감과 착용감을 더했으며, 세탁 후에 발생할 수 있는 뒤틀림이나 수축을 최소화하였습니다.<br>
<br>
</div><br><br>
<!--제품 상세설명 종료-->
<!--안내사항 시작--><span class="prd-detail-section-title" style="COLOR: #000000">NOTICE</span> 
<div class="prd-detail-section-body"><!--가로 사이즈------------------------------------------------------------------------------------------------------------------------------------->
※ 제품의 실제 색상은 모델 착용컷이 아닌 제품 세부사진이 가장 가까우니 구매시 참고하시기 바라며,<br>
   또한 착용시 조명(eg. 백열등, 스트로보, 자연광 등)의 상황에 따라 색상이 상이하게 나타날 수 있는 점 참고부탁드립니다.<br>
※ 개인적인 세탁 부주의에 의한 제품 손상 및 이상 시에는 교환 및 환불이 불가능하니 케어라벨을 참조하여 세탁해주시길 부탁드립니다.<br>
※ 택을 제거한 제품의 경우 교환 및 환불 절차 진행시 불가능하거나 지연될 수 있습니다.<br>
※ 폴리백 원단의 특성상 내부 제품 보호를 위해 유연제 및 식용 파우더가 사용되어 제품 최초 개봉시<br>
    미량의 파우더가 묻어나올 수 있으나 이것은 불량이 아닌 자연스러운 현상으로 이에 따른 교환 및<br>
 환불은 불가능함을 알려 드립니다. 해당 파우더는 손으로 털어서 제거가 가능하오니 참고 부탁드립니다.<br>
※ 해당 제품은 깊이감이 있는 제품으로 구매전 룩북이미지 착용컷 참고 후 구매 부탁드립니다.<br>
</div><div style="TEXT-ALIGN: left !important"><br></div><br>
<!--안내사항 종료-->
<!--소비자보호사항 시작--><span class="prd-detail-section-title">CONSUMER PROTECTION DETAILS</span> 
<div class="prd-detail-section-body">
- 제조년월 : 2020년 9월<br>
- 세탁방법 및 취급시 주의사항 : 케어라벨 참조<br>
- 소재 : Cotton 50% Polyester 50%<br> 
- 제조자 : 웨얼하우스<br>
- 제조국 : 대한민국<br>
- 품질보증 기준 : 제품구매일로부터 6개월<br>
보상가능 : 품질보증기간 이내에 정상적인 사용상태에서 발생한 기능상 하자일경우 무상 A/S<br>
보상제외 : 소비자 부주의에 의한 훼손, 세탁잘못으로 인한 변형 및 보증기간이 지난 제품은 유상 A/S<br>
- 고객센터 : 02-544-1793 / A/S 담당자<br>
</div></div>
<br>
<!--교환환불 시작-->
<div style="TEXT-ALIGN: left !important">
<span class="prd-detail-section-title">배송/교환/환불 안내</span> 
<div class="prd-detail-section-body">
<br>
배송안내<br>
-전산 상 15:00시까지 결제완료 된 주문건에 한하여 당일배송이 진행됩니다.<br>
-배송기간은 출고일 기준 5일이내 수령 가능합니다. (공휴일 제외 / 산간도서지방 / 재고상황에 따라 가변적)<br>
-본 상품은 오프라인 매장과 동시판매 되고 있어 주문 결제 완료 후 배송준비 도중 매장에서 판매완료되어 발송이 지연되거나 품절될 수 있습니다.<br>
<br>
교환 및 환불 안내<br>
-제품 수령 후 7일 이내인 경우에 한하여 환불 및 1회 교환이 가능합니다.<br>
-반품 및 교환 신청은 배송 완료 후 Q&amp;A 게시판, 카카오 플러스친구를 통해 접수하실 수 있습니다.<br>
-제품하자/불량/오배송으로 인한 반품, 교환 시 배송비는 웨얼하우스에서 부담합니다.<br>
-교환 시 상품간의 맞교환은 불가능하며 교환상품 도착 확인 후 새 제품 발송을 원칙으로 합니다.<br>
-단순변심, 사이즈 미스, 색상/디자인 불만족 등으로 인한 반품, 교환 시에는 왕복 배송비를 고객님께서 부담하셔야 합니다.<br>
-상품의 박스와 택등이 훼손, 제거되어 있거나 상품 구성물이 누락된 경우 반품/교환이 불가하오니 유의해주시길 바랍니다.<br>
-모니터상의 사진과 제품의 색상은 다소 차이가 있으며, 미세한 색상의 차이는 제품이상으로 인한 반품사유가 되지 않습니다.<br>
-반품 및 교환 시 주소 : 서울시 강남구 신사동 662-7, 2F 웨얼하우스 / 02-544-1793 <br>
-물류대행업체 사용으로 인해 CJ대한통운 반품접수를 이용하여 반품 택배 발송 시 교환 및 환불처리까지<br>
  1주일 이상 소요 될 수 있으니 빠른 처리를 원하시는 경우 반드시 고객센터를 통해 안내받으시기 바랍니다.<br>
<br>
주문 취소 및 변경 안내<br>
-입금 이후 취소 및 고객정보 변경은 웨얼하우스 C/S센터 (02-544-1793)로 연락 부탁드립니다.<br>
<br>
상품 A/S 안내<br>
-구매하신 상품에 따라 A/S 기준이 상이하므로 웨얼하우스 C/S 센터 (02-544-1793)로 연락 부탁드립니다.<br>
</div></div>

<!--제품 사양 종료-->
                            <!-- s: 상품 일반정보(상품정보제공 고시) -->
                                                        <!-- e: 상품 일반정보(상품정보제공 고시) -->
							
							
                                                        <!-- 몰티비 플레이어 노출 위치 -->
<div id="malltb_video_player" style="margin-top: 10px; margin-bottom: 10px; text-align: center; display: none;"></div>                            														
                        </div><!-- .prd-detail -->






   

<!------------상세끝--------------------------->




                    
<link type="text/css" rel="stylesheet" href="/template_common/shop/modern_simple/power_review_custom.3.css?t=202103080910">
<div id="powerReview">
    <div class="hd-t">
        <h2>POWER REVIEW</h2>
        <div class="pr-btn-list">
                        <a href="/board/power_review.html">전체리뷰</a>
        </div>
    </div><!-- .hd-t -->
<div id="writePowerReview">
        <div class="PR15N01-write">
            <form name="prw_form" id="prw_form" action="" method="post" autocomplete="off">
    <input type="hidden" name="action_type" value="">
    <input type="hidden" name="product_uid" value="1000002787">
    <input type="hidden" name="ordernum" value="">
    <input type="hidden" name="basketnum" value="">
    <input type="hidden" name="write_type" value="DETAIL">    <input type="hidden" name="score1" value="5">                <div id="pr_authimgdiv" class="pr-authimgdiv" name="authimgdiv" style="position: absolute; display: none; width: 500px; height: 200px;"></div>                        <div class="pr-btn-right">
                <a href="/shop/member.html?type=shopdetail&amp;branduid=1000002787" class="pr-btn-h26">로그인 후 작성</a>
            </div>
                                    <dl class="pr-member">
                <dt>작성자</dt>
                <dd><input type="text" name="hname" value=""></dd>
                <dt>비밀번호</dt>
                <dd><input type="password" name="passwd" value=""></dd>
            </dl>
                                    <div class="pr-options">
                                <dl>
                    <dt>키</dt>
                    <dd><input type="text" name="add_data[1]" value="" class="pr-add-data" aidx="1" intype="text" req="Y" limit="50" title="키"></dd>
                </dl>
                                <dl>
                    <dt>몸무게</dt>
                    <dd><input type="text" name="add_data[2]" value="" class="pr-add-data" aidx="2" intype="text" req="Y" limit="50" title="몸무게"></dd>
                </dl>
                                <dl>
                    <dt>사이즈</dt>
                    <dd><input type="text" name="add_data[3]" value="" class="pr-add-data" aidx="3" intype="text" req="Y" limit="50" title="사이즈"></dd>
                </dl>
                            </div>
                     <div class="pr-txtbox">
            <textarea name="content">웨얼하우스의 제품을 구매해주셔서 감사합니다.
구매해주신 상품의 대한 리뷰를 남겨주시면 적립금이 지급됩니다.

일반후기 - 키,몸무게,사이즈,내용 기재시 1,000원 지급
포토후기 - 키,몸무게,사이즈,내용,착용샷 기재시 2,000원 지급

*사진의 경우 구매한 제품과 함께 촬영된 전신 사진만 허용

고객님의 소중한 정보로 더욱 나은 서비스를
제공할 수 있도록 노력하겠습니다.
감사합니다.</textarea><textarea style="display:none" name="board_writeword">웨얼하우스의 제품을 구매해주셔서 감사합니다.
구매해주신 상품의 대한 리뷰를 남겨주시면 적립금이 지급됩니다.

일반후기 - 키,몸무게,사이즈,내용 기재시 1,000원 지급
포토후기 - 키,몸무게,사이즈,내용,착용샷 기재시 2,000원 지급

*사진의 경우 구매한 제품과 함께 촬영된 전신 사진만 허용

고객님의 소중한 정보로 더욱 나은 서비스를
제공할 수 있도록 노력하겠습니다.
감사합니다.</textarea>                        <div class="pr-text-length">
                <em class="pr-red"><span id="PR_CONTENT_LENGTH">0</span></em>자             </div>
                        <div class="thumb-wrap"></div>
        </div>
        </form>                                                <form name="pr_agrre">
                                <div class="new-privercy-contract"> 
                                    <p>개인정보 수집·이용</p>
                                    <a class="lnk" href="javascript:power_review_agree_show();">내용보기</a>
                                    <div class="privercy-agree">
                                        <label><input type="radio" name="privercy_agree" value="Y"> 동의</label>
                                        <label><input type="radio" name="privercy_agree" value="N" checked=""> 동의안함</label>
                                    </div>
                                    <div class="privercy-contract">
                                        <table class="tbl" summary="목적, 항목, 보유기간">
                                            <caption>개인정보 수집/이용</caption>
                                            <colgroup>
                                                <col width="30%">
                                                <col width="*">
                                                <col width="20%">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th scope="col">목적</th>
                                                    <th scope="col">항목</th>
                                                    <th scope="col">보유기간</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                                                    <tr>
                                        <td class="purpose"><div class="txt-l">게시판 서비스 제공 / 이용 고객 확인</div></td>
                                        <td class="items"><div class="txt-l">이름, 비밀번호, 작성내용, IP Address</div></td>
                                        <td class="holding"><div class="txt-l">게시글 삭제 시</div></td>
                                    </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="pc-txt">* 동의하셔야 서비스를 이용하실 수 있습니다.</div>
                                </div>
                            </form>        
    </div><!-- .PR15N01-write -->
    <div class="PR15N01-recmd ">
            <div id="files" class="files"></div>
    <form name="prw_file_form" id="prw_file_form" action="http://board.makeshop.co.kr/upload.html" method="post" enctype="multipart/form-data">
    <input type="hidden" name="type" value="upload">
    <input type="hidden" name="servername" value="special304">
    <input type="hidden" name="url" value="espionage.co.kr">
    <input type="hidden" name="code" value="zooyork77_board7">
    <input type="hidden" name="size" value="512000">
    <input type="hidden" name="org" value="zooyork77">
    <input type="hidden" name="maxsize" value="">
    <input type="hidden" name="Btype" value="">
    <input type="hidden" name="img_resize" value="N">
    <input type="hidden" name="img_maxwidth" value="">
    <input type="hidden" name="gallery_type">
    <input type="hidden" name="form_name" value="power_review">
    <input type="hidden" name="mini_bgcolor" value="">
    <input type="hidden" name="mini_size" value="100">
    <input type="hidden" name="mini_space" value="">
    <input type="hidden" name="fileobj_name" value="file_name1">
    <input type="hidden" name="device_type" value="PC">        <div class="cvr"><a class="pr-lnk-photo" href="#none"><input type="file" name="file" class="trick file-attach" id="fileupload"><span>사진추가</span></a></div>
        </form>                <div class="star-list">
            <span class="bull">▼</span>
            <a href="#none"><em>★★★★★</em><span class="survey">아주만족</span></a>
            <ul>
                            <li><a href="#none"><em>★★★★★</em><span class="survey">아주만족</span></a></li>
                            <li><a href="#none"><em>★★★★</em><span class="survey">만족</span></a></li>
                            <li><a href="#none"><em>★★★</em><span class="survey">보통</span></a></li>
                            <li><a href="#none"><em>★★</em><span class="survey">미흡</span></a></li>
                            <li><a href="#none"><em>★</em><span class="survey">불만족</span></a></li>
                        </ul>
        </div>
                <div class="cvr right"><a class="lnk-review" href="javascript:power_review_submit();"><span>리뷰등록</span></a></div>    </div><!-- .PR15N01-recmd -->
</div>
    <dl class="PR15N01-best-review">
        <dt><p><em>0</em> 개의 포토리뷰가 있습니다</p>포토리뷰 모아보기</dt>
        <dd>
            <button onclick="javascript:power_review_photo_prev();" class="prev" type="button">이전</button>
            <button onclick="javascript:power_review_photo_next();" class="next" type="button">다음</button>
            <ul id="power_review_detail_photo" style="width: 300px;">
                            </ul>
        </dd>
    </dl><!-- .PR15N01-best-review -->

    <div class="PR15N01-hd">
        <h2>프리미엄 상품평 <span>(3개)</span></h2>
        <div class="pr-photo-toggle pr-photo-toggle-sort"><a href="javascript:power_review_list_toggle();">포토리뷰 모아보기</a></div>        <div class="pr-photo-toggle pr-photo-toggle-sort"><a href="javascript:power_review_list_toggle();">포토리뷰 모아보기</a></div>                <ul class="sort">
            <li class="now" val="date"><a href="javascript:power_review_sort('date');">최신 순</a></li>
            <li val="score"><a href="javascript:power_review_sort('score');">평점 순</a></li>
            <li "="" val="good"><a href="javascript:power_review_sort('good');">추천 순</a></li>
        </ul>
            </div><!-- .PR15N01-hd -->
        <div id="listPowerReview" class="MS_power_review_list">
     
    <ul class="PR15N01-review-wrap">
                <li id="power_review_block992483" class="power-review-list-box">
            <div class="hd-box">
            <ul class="desc">
                                <li><span>작성자 : </span>co****</li>                            </ul>
            <div class="star-icon">
                                <span class="star"><em>★★★★★</em></span>
                                <span class="survey">아주만족</span>
                <span class="icon">
                                                                                <img src="/images/d3/modern_simple/ico_mobile_h38.png" alt="mobile">
                                                        </span>
            </div>
            </div>
                                    <div class="pr-options" style="display:block;">
                            <dl>
                                    <dt>키</dt>
                    <dd>182</dd>
                                </dl>
                            <dl>
                                    <dt>몸무게</dt>
                    <dd>86</dd>
                                </dl>
                            <dl>
                                    <dt>사이즈</dt>
                    <dd>L</dd>
                                </dl>
                        </div>
                        <div class="content">
                                    <p class="content_p">
                                            <a href="javascript:power_review_more('992483', '00000');" class="more-options">머리 큽니다<br>
이마 넓습니다<br>
근데 생각보다 잘 맞고 눈까지 가려집니다<br>
뒤집어서 써지진 않을것 같습니다</a><a class="pr-close" href="javascript:power_review_more_close('992483');">...<span>▲ 닫기</span></a>
                     
                    </p>
                                <div class="ctr">
                                                        </div>
            </div>
                        <div class="reply">
                <a class="cnt" href="javascript:power_review_view_comment('992483', '992483');">1 ▼</a>                                <span class="pr-txt">이 리뷰가 도움이 되셨나요?</span>
                <a class="yes" href="javascript:power_review_good('992483', 'N', 'shopdetail');"><span>0</span></a>
                <a class="no" href="javascript:power_review_bad('992483', 'N', 'shopdetail');"><span>0</span></a>                            </div>
            <div class="reply-wrap" style="display:none;">
                                <ul class="lst">
                                        <li class="block_comment">
                        <dl>
                            <dt class="replace_icon">replace_writer</dt>
                            <dd><p>replace_comment</p>
                                <div class="ctr" replace_btn="">
                                    <a class="modify" href="replace_link_modify">수정</a>
                                    <a class="delete" href="replace_link_del">삭제</a>
                                </div>
                            </dd>
                        </dl>
                    </li>
                                    </ul>
            </div>
        </li>
                <li id="power_review_block992555" class="power-review-list-box">
            <div class="hd-box">
            <ul class="desc">
                                <li><span>작성자 : </span>as****</li>                            </ul>
            <div class="star-icon">
                                <span class="star"><em>★★★★</em>★</span>
                                <span class="survey">만족</span>
                <span class="icon">
                                                                                <img src="/images/d3/modern_simple/ico_pc_h38.png" alt="pc">
                                                        </span>
            </div>
            </div>
                                    <div class="pr-options" style="display:block;">
                            <dl>
                                    <dt>키</dt>
                    <dd>171</dd>
                                </dl>
                            <dl>
                                    <dt>몸무게</dt>
                    <dd>70</dd>
                                </dl>
                            <dl>
                                    <dt>사이즈</dt>
                    <dd>F</dd>
                                </dl>
                        </div>
                        <div class="content">
                                    <p class="content_p">
                                            <a href="javascript:power_review_more('992555', '00000');" class="more-options">다 좋은데 속에 들어있는 택을 잘라내야 하는 부분이 아쉬웠습니다.</a><a class="pr-close" href="javascript:power_review_more_close('992555');">...<span>▲ 닫기</span></a>
                     
                    </p>
                                <div class="ctr">
                                                        </div>
            </div>
                        <div class="reply">
                <a class="cnt" href="javascript:power_review_view_comment('992555', '992555');">1 ▼</a>                                <span class="pr-txt">이 리뷰가 도움이 되셨나요?</span>
                <a class="yes" href="javascript:power_review_good('992555', 'N', 'shopdetail');"><span>0</span></a>
                <a class="no" href="javascript:power_review_bad('992555', 'N', 'shopdetail');"><span>0</span></a>                            </div>
            <div class="reply-wrap" style="display:none;">
                                <ul class="lst">
                                        <li class="block_comment">
                        <dl>
                            <dt class="replace_icon">replace_writer</dt>
                            <dd><p>replace_comment</p>
                                <div class="ctr" replace_btn="">
                                    <a class="modify" href="replace_link_modify">수정</a>
                                    <a class="delete" href="replace_link_del">삭제</a>
                                </div>
                            </dd>
                        </dl>
                    </li>
                                    </ul>
            </div>
        </li>
                <li id="power_review_block992645" class="power-review-list-box">
            <div class="hd-box">
            <ul class="desc">
                                <li><span>작성자 : </span>yo********</li>                            </ul>
            <div class="star-icon">
                                <span class="star"><em>★★★★★</em></span>
                                <span class="survey">아주만족</span>
                <span class="icon">
                                                                                <img src="/images/d3/modern_simple/ico_pc_h38.png" alt="pc">
                                                        </span>
            </div>
            </div>
                                    <div class="pr-options" style="display:block;">
                            <dl>
                                    <dt>키</dt>
                    <dd>173</dd>
                                </dl>
                            <dl>
                                    <dt>몸무게</dt>
                    <dd>65</dd>
                                </dl>
                            <dl>
                                    <dt>사이즈</dt>
                    <dd>L</dd>
                                </dl>
                        </div>
                        <div class="content">
                                    <p class="content_p">
                                            <a href="javascript:power_review_more('992645', '00000');" class="more-options">아.. 이정도로 모자가 크고 깊을 줄 몰랐습니다....<br>
모자 쓰면 앞이 안보여요...ㅠㅠ</a><a class="pr-close" href="javascript:power_review_more_close('992645');">...<span>▲ 닫기</span></a>
                     
                    </p>
                                <div class="ctr">
                                                        </div>
            </div>
                        <div class="reply">
                <a class="cnt" href="javascript:power_review_view_comment('992645', '992645');">1 ▼</a>                                <span class="pr-txt">이 리뷰가 도움이 되셨나요?</span>
                <a class="yes" href="javascript:power_review_good('992645', 'N', 'shopdetail');"><span>0</span></a>
                <a class="no" href="javascript:power_review_bad('992645', 'N', 'shopdetail');"><span>0</span></a>                            </div>
            <div class="reply-wrap" style="display:none;">
                                <ul class="lst">
                                        <li class="block_comment">
                        <dl>
                            <dt class="replace_icon">replace_writer</dt>
                            <dd><p>replace_comment</p>
                                <div class="ctr" replace_btn="">
                                    <a class="modify" href="replace_link_modify">수정</a>
                                    <a class="delete" href="replace_link_del">삭제</a>
                                </div>
                            </dd>
                        </dl>
                    </li>
                                    </ul>
            </div>
        </li>
            </ul><!-- .PR15N01-review-wrap -->
    <div class="paging">
                                                <a class="now" href="#none"><span>1</span></a>
                    
                    </div><!-- .paging -->
        </div>    <div id="updatePowerReview" class="MS_power_review_update"></div>    <div id="layerReplyModify" style="display: none">
        <div class="layer-wrap">
            <a class="close-layer" href="#layerReplyModify">닫기</a>
                <form name="pruc" id="pruc_form" action="/shop/power_review_comment.action.html" method="post" autocomplete="off">            <div class="wrt"><textarea name="update_comment"></textarea></div>
            </form>            <div class="ctr">
                <a class="modify" href="javascript:power_review_update_comment();">수정</a>
            </div>
        </div><!-- .layer-wrap -->
    </div><!-- #layerReplyModify -->
        <div id="layerChkPasswd" class="chk-passwd">
                <form name="prcp_form" id="prcp_form" action="/shop/power_review.action.html" method="post" autocomplete="off">
            <input type="hidden" name="num1" value="">
            <input type="hidden" name="chk_type" value="">            <a class="close" href="#layerChkPasswd">닫기</a>
            <strong>비밀번호</strong>
            <input type="password" name="passwd" value="">             <a class="btn" href="javascript:power_review_chkpass();"><img src="/images/d3/modern_simple/btn/btn_h20_confirm.gif" alt="확인"></a>
        </form>    </div>
    </div><!-- #powerReview-->
<p style="clear:both"></p>                    </div><!-- .page-body -->
                </div><!-- #productDetail -->
            </div><!-- #content -->
        </div><!-- #contentWrap -->
    </div><!-- #contentWrapper-->
    <hr>
    
<link type="text/css" rel="stylesheet" href="/shopimages/zooyork77/template/work/37329/footer.1.css?t=202007271613">
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

<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js"></script><iframe name="google_cookie_match_frame" title="Google cookie match frame" width="1" height="1" src="https://bid.g.doubleclick.net/xbbe/pixel?d=KAE" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" style="display:none" scrolling="no"></iframe>

<noscript>
<div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/984775192/?value=0&guid=ON&script=0"/></div>
</noscript>

<div id="footer_wrap">
  <div id="footer">

	<div class="foot_left">
<p>	 
 <font style="font-weight:bold;">CUSTOM SERVICE</font><br>
	 <font style="color:#fff600; font-size:14px;">02-544-1793</font> MON-FRI 11:00-18:00 ( Break 12:30-13:30 )
         <a href="https://pf.kakao.com/_qnWTM" target="_blank"><font style="color:#fff600; font-size:14px;">
         <i class="xi-kakaotalk  xi-2x"></i> 카카오톡으로 문의하기</font></a>
</p>
<p>
	 (주)웨얼하우스 / owner 최태훈 / tel 02-544-1793 / ad 서울시 강남구 선릉로 161길 21-4 201호 웨얼하우스<br>
	 business license 273-88-00135 / mail-order license 제2015-서울강남-02064호 / privacy officer 신동인<br>
<a href="javascript:bottom_privacy();" style="color:#808080">개인정보처리방침</a><br>
</p>
<p>
	 COPYRIGHT 2018 WHEREHOUSE ltd., Co.
</p>
	</div><!-- .foot_left -->
	
	


	  <!-- 고객센터-->
	  <div class="foot_cs">
	    <div class="guide">
		<ul>
			<li><a href="#">ABOUT US</a></li>
			<li><a href="javascript:view_join_terms();">TERMS &amp; CONDITIONS</a></li>
			<li><a href="javascript:bottom_privacy();">PRIVACY POLICY</a></li>
			<li><a href="http://www.ftc.go.kr/info/bizinfo/communicationList.jsp">BUSINESS LICENSE</a></li>
			<li><a href="/board/board.html?code=zooyork77_board8">INTERNATIONAL ORDER</a></li>
		</ul>
	    </div>
	  </div><!-- .foot_cs -->
	  <!-- 고객센터// -->
	  <!-- 가이드 -->
	  <div class="foot_right">
<img src="/design/zooyork77/image/bottom_logo.jpg">

	  </div><!-- .foot_right -->
	  <!-- 가이드// -->

  </div> <!-- #footer -->
</div> <!-- #footer_wrap -->



<!-- NSM Log Gathering Script V.70.2012031601 -->
<script language="javascript">
if( typeof HL_GUL == 'undefined' ){

var HL_GUL = 'ngc4.nsm-corp.com';var HL_GPT='80'; var _AIMG = new Image(); var _bn=navigator.appName; var _PR = location.protocol=="https:"?"https://"+HL_GUL:"http://"+HL_GUL+":"+HL_GPT;if( _bn.indexOf("Netscape") > -1 || _bn=="Mozilla"){ setTimeout("_AIMG.src = _PR+'/?cookie';",1); } else{ _AIMG.src = _PR+'/?cookie'; };
var _JV="AMZ2012052201";//script Version
var HL_GCD = 'CS2B38583114523'; // gcode
var _UD='undefined';var _UN='unknown';
function _IX(s,t){return s.indexOf(t)}
function _GV(b,a,c,d){ var f = b.split(c);for(var i=0;i<f.length; i++){ if( _IX(f[i],(a+d))==0) return f[i].substring(_IX(f[i],(a+d))+(a.length+d.length),f[i].length); }	return ''; }
function _XV(b,a,c,d,e){ var f = b.split(c);var g='';for(var i=0;i<f.length; i++){ if( _IX(f[i],(a+d))==0){ try{eval(e+"=f[i].substring(_IX(f[i],(a+d))+(a.length+d.length),f[i].length);");}catch(_e){}; continue;}else{ if(g) g+= '&'; g+= f[i];}; } return g;};
function _NOB(a){return (a!=_UD&&a>0)?new Object(a):new Object()}
function _NIM(){return new Image()}
function _IL(a){return a!=_UD?a.length:0}
function _ILF(a){ var b = 0; try{eval("b = a.length");}catch(_e){b=0;}; return b; }
function _VF(a,b){return a!=_UD&&(typeof a==b)?1:0}
function _LST(a,b){if(_IX(a,b)>0){ a=a.substring(0,_IX(a,b));}; return a;}
function _CST(a,b){if(_IX(a,b)>0) a=a.substring(_IX(a,b)+_IL(b),_IL(a));return a}
function _UL(a){a=_LST(a,'#');a=_CST(a,'://');return a}
function _AA(a){return new Array(a?a:0)}
function _IDV(a){return (typeof a!=_UD)?1:0}
if(!_IDV(HL_GUL)) var HL_GUL ='ngc4.nsm-corp.com'; 
if(!_IDV(HL_GPT)) var HL_GPT ='80';
_DC = document.cookie ;
function _AGC(nm) { var cn = nm + "="; var nl = cn.length; var cl = _DC.length; var i = 0; while ( i < cl ) { var j = i + nl; if ( _DC.substring( i, j ) == cn ){ var val = _DC.indexOf(";", j ); if ( val == -1 ) val = _DC.length; return unescape(_DC.substring(j, val)); }; i = _DC.indexOf(" ", i ) + 1; if ( i == 0 ) break; } return ''; }
function _ASC( nm, val, exp ){var expd = new Date(); if ( exp ){ expd.setTime( expd.getTime() + ( exp * 1000 )); document.cookie = nm+"="+ escape(val) + "; expires="+ expd.toGMTString() +"; path="; }else{ document.cookie = nm + "=" + escape(val);};}
function SetUID() {     var newid = ''; var d = new Date(); var t = Math.floor(d.getTime()/1000); newid = 'UID-' + t.toString(16).toUpperCase(); for ( var i = 0; i < 16; i++ ){ var n = Math.floor(Math.random() * 16).toString(16).toUpperCase(); newid += n; }       return newid; }
var _FCV = _AGC("ACEFCID"); if ( !_FCV ) { _FCV = SetUID(); _ASC( "ACEFCID", _FCV , 86400 * 30 * 12 ); _FCV=_AGC("ACEFCID");}
var _AIO = _NIM(); var _AIU = _NIM();  var _AIW = _NIM();  var _AIX = _NIM();  var _AIB = _NIM();  var __hdki_xit = _NIM();
var _gX='/?xuid='+HL_GCD+'&sv='+_JV,_gF='/?fuid='+HL_GCD+'&sv='+_JV,_gU='/?uid='+HL_GCD+'&sv='+_JV+"&FCV="+_FCV,_gE='/?euid='+HL_GCD+'&sv='+_JV,_gW='/?wuid='+HL_GCD+'&sv='+_JV,_gO='/?ouid='+HL_GCD+'&sv='+_JV,_gB='/?buid='+HL_GCD+'&sv='+_JV;

var _d=_rf=_end=_fwd=_arg=_xrg=_av=_bv=_rl=_ak=_xrl=_cd=_cu=_bz='',_sv=11,_tz=20,_ja=_sc=_ul=_ua=_UA=_os=_vs=_UN,_je='n',_bR='blockedReferrer';
if(!_IDV(_CODE)) var _CODE = '' ;
_tz = Math.floor((new Date()).getTimezoneOffset()/60) + 29 ;if( _tz > 24 ) _tz = _tz - 24 ;
// Javascript Variables
if(!_IDV(_amt)) var _amt=0 ;if(!_IDV(_pk)) var _pk='' ;if(!_IDV(_pd)) var _pd='';if(!_IDV(_ct)) var _ct='';
if(!_IDV(_ll)) var _ll='';if(!_IDV(_ag)) var _ag=0;	if(!_IDV(_id)) var _id='' ;if(!_IDV(_mr)) var _mr = _UN;
if(!_IDV(_gd)) var _gd=_UN;if(!_IDV(_jn)) var _jn='';if(!_IDV(_jid)) var _jid='';if(!_IDV(_skey)) var _skey='';
if(!_IDV(_ud1)) var _ud1='';if(!_IDV(_ud2)) var _ud2='';if(!_IDV(_ud3)) var _ud3='';
if( !_ag ){ _ag = 0 ; }else{ _ag = parseInt(_ag); }
if( _ag < 0 || _ag > 150 ){ _ag = 0; }
if( _gd != 'man' && _gd != 'woman' ){ _gd =_UN;};if( _mr != 'married' && _mr != 'single' ){ _mr =_UN;};if( _jn != 'join' && _jn != 'withdraw' ){ _jn ='';};
if( _ag > 0 || _gd == 'man' || _gd == 'woman'){ _id = 'undefined_member';}
if( _jid != '' ){ _jid = 'undefined_member'; }
_je = (navigator.javaEnabled()==true)?'1':'0';_bn=navigator.appName;
if(_bn.substring(0,9)=="Microsoft") _bn="MSIE";
_bN=(_bn=="Netscape"),_bI=(_bn=="MSIE"),_bO=(_IX(navigator.userAgent,"Opera")>-1);if(_bO)_bI='';
_bz=navigator.appName; _pf=navigator.platform; _av=navigator.appVersion; _bv=parseFloat(_av) ;
if(_bI){_cu=navigator.cpuClass;}else{_cu=navigator.oscpu;};
if((_bn=="MSIE")&&(parseInt(_bv)==2)) _bv=3.01;_rf=document.referrer;var _prl='';var _frm=false;
function _WO(a,b,c){window.open(a,b,c)}
function ACEF_Tracking(a,b,c,d,e,f){ if(!_IDV(b)){var b = 'FLASH';}; if(!_IDV(e)){ var e = '0';};if(!_IDV(c)){ var c = '';};if(!_IDV(d)){ var d = '';}; var a_org=a; b = b.toUpperCase(); var b_org=b;	if(b_org=='FLASH_S'){ b='FLASH'; }; if( typeof CU_rl == 'undefined' ) var CU_rl = _PT(); if(_IDV(HL_GCD)){ var _AF_rl = document.URL; if(a.indexOf('://') < 0  && b_org != 'FLASH_S' ){ var _AT_rl  = ''; if( _AF_rl.indexOf('?') > 0 ){ _AF_rl = _AF_rl.substring(0,_AF_rl.indexOf('?'));}; var spurl = _AF_rl.split('/') ;	for(var ti=0;ti < spurl.length ; ti ++ ){ if( ti == spurl.length-1 ){ break ;}; if( _AT_rl  == '' ){ _AT_rl  = spurl[ti]; }else{ _AT_rl  += '/'+spurl[ti];}; }; var _AU_arg = ''; if( a.indexOf('?') > 0 ){ _AU_arg = a.substring(a.indexOf('?'),a.length); a = a.substring(0,a.indexOf('?')); }; var spurlt = a.split('/') ; if( spurlt.length > 0 ){ a = spurlt[spurlt.length-1];}; a = _AT_rl +'/'+a+_AU_arg;	_AF_rl=document.URL;}; _AF_rl = _AF_rl.substring(_AF_rl.indexOf('//')+2,_AF_rl.length); if( typeof f == 'undefined' ){ var f = a }else{f='http://'+_AF_rl.substring(0,_AF_rl.indexOf('/')+1)+f}; var _AS_rl = CU_rl+'/?xuid='+HL_GCD+'&url='+escape(_AF_rl)+'&xlnk='+escape(f)+'&fdv='+b+'&idx='+e+'&'; var _AF_img = new Image(); _AF_img.src = _AS_rl; if( b_org == 'FLASH' && a_org != '' ){ if(c==''){ window.location.href = a_org; }else{ if(d==''){ window.open(a_org,c);}else{ window.open(a_org,c,d); };};	};} ; }
function _PT(){return location.protocol=="https:"?"https://"+HL_GUL:"http://"+HL_GUL+":"+HL_GPT}
function _EL(a,b,c){if(a.addEventListener){a.addEventListener(b,c,false)}else if(a.attachEvent){a.attachEvent("on"+b,c)} }
function _NA(a){return new Array(a?a:0)}
function HL_ER(a,b,c,d){_xrg=_PT()+_gW+"&url="+escape(_UL(document.URL))+"&err="+((typeof a=="string")?a:"Unknown")+"&ern="+c+"&bz="+_bz+"&bv="+_vs+"&RID="+Math.random()+"&";
if(_IX(_bn,"Netscape") > -1 || _bn == "Mozilla"){ setTimeout("_AIW.src=_xrg;",1); } else{ _AIW.src=_xrg; } }
function HL_PL(a){if(!_IL(a))a=_UL(document.URL);
_arg = _PT()+_gU;
if( typeof HL_ERR !=_UD && HL_ERR == 'err'){ _arg = _PT()+_gE;};
if( _ll.length > 0 ) _arg += "&md=b";
_AIU.src = _arg+"&url="+escape(a)+"&ref="+escape(_rf)+"&cpu="+_cu+"&bz="+_bz+"&bv="+_vs+"&os="+_os+"&dim="+_d+"&cd="+_cd+"&je="+_je+"&jv="+_sv+"&tz="+_tz+"&ul="+_ul+"&ad_key="+escape(_ak)+"&skey="+escape(_skey)+"&age="+_ag+"&gender="+_gd+"&marry="+_mr+"&join="+_jn+"&member_key="+_id+"&jid="+_jid+"&udf1="+_ud1+"&udf2="+_ud2+"&udf3="+_ud3+"&amt="+_amt+"&frwd="+_fwd+"&pd="+escape(_pd)+"&ct="+escape(_ct)+"&ll="+escape(_ll)+"&RID="+Math.random()+"&";
setTimeout("",300);
}
_EL(window,"error",HL_ER); //window Error
if( typeof window.screen == 'object'){_sv=12;_d=screen.width+'*'+screen.height;_sc=_bI?screen.colorDepth:screen.pixelDepth;if(_sc==_UD)_sc=_UN;}
_ro=_NA();if(_ro.toSource||(_bI&&_ro.shift))_sv=13;
if( top && typeof top == 'object' &&_ILF(top.frames)){eval("try{_rl=top.document.URL;}catch(_e){_rl='';};"); if( _rl != document.URL ) _frm = true;};
if(_frm){ eval("try{_prl = top.document.URL;}catch(_e){_prl=_bR;};"); if(_prl == '') eval("try{_prl=parent.document.URL;}catch(_e){_prl='';};"); 
if( _IX(_prl,'#') > 0 ) _prl=_prl.substring(0,_IX(_prl,'#')); 
_prl=_LST(_prl,'#');
if( _IX(_rf,'#') > 0 ) _rf=_rf.substring(0,_IX(_rf,'#')); 
if( _IX(_prl,'/') > 0 && _prl.substring(_prl.length-1,1) == '/' ) _prl =_prl.substring(0,_prl.length-1);
if( _IX(_rf,'/') > 0 && _rf.substring(_rf.length-1,1) == '/' ) _rf =_rf.substring(0,_rf.length-1);
if( _rf == '' ) eval("try{_rf=parent.document.URL;}catch(_e){_rf=_bR;}"); 
if(_rf==_bR||_prl==_bR){ _rf='',_prl='';}; if( _rf == _prl ){ eval("try{_rf=top.document.referrer;}catch(_e){_rf='';}"); 
if( _rf == ''){ _rf = 'bookmark';};if( _IX(document.cookie,'ACEN_CK='+escape(_rf)) > -1 ){ _rf = _prl;} 
else{ 
if(_IX(_prl,'?') > 0){ _ak = _prl.substring(_IX(_prl,'?')+1,_prl.length); _prl = _ak; }
if( _IX(_prl.toUpperCase(),'OVRAW=') >= 0 ){ _ak = 'src=overture&kw='+_GV(_prl.toUpperCase(),'OVRAW','&','=')+'&OVRAW='+_GV(_prl.toUpperCase(),'OVRAW','&','=')+'&OVKEY='+_GV(_prl.toUpperCase(),'OVKEY','&','=')+'&OVMTC='+_GV(_prl.toUpperCase(),'OVMTC','&','=').toLowerCase() }; 
if(_IX(_prl,'gclid=') >= 0 ){ _ak='src=adwords'; }; if(_IX(_prl,'DWIT=') >= 0 ){_ak='src=dnet_cb';}; 
if( _IX(_prl,"rcsite=") >= 0 &&  _IX(_prl,"rctype=") >= 0){ _prl += '&'; _ak = _prl.substring(_IX(_prl,'rcsite='),_prl.indexOf('&',_IX(_prl,'rcsite=')+7))+'-'+_prl.substring(_IX(_prl,'rctype=')+7,_prl.indexOf('&',_IX(_prl,'rctype=')+7))+'&'; };
if( _GV(_prl,'src','&','=') ) _ak += '&src='+_GV(_prl,'src','&','='); if( _GV(_prl,'kw','&','=') ) _ak += '&kw='+_GV(_prl,'kw','&','='); 
if( _IX(_prl, 'FWDRL')> 0 ){ _prl = _XV(_prl,'FWDRL','&','=','_rf'); _rf = unescape(_rf); }; if( _IX(_ak,'FWDRL') > 0 ){_ak = _XV(_ak,'FWDRL','&','=','_prl');}; if( typeof FD_ref=='string' && FD_ref != '' ) _rf = FD_ref; _fwd = _GV(_prl,'FWDIDX','&','=');
document.cookie='ACEN_CK='+escape(_rf)+';path=/;'; 
}; 
if(document.URL.indexOf('?')>0 && ( _IX(_ak,'rcsite=') < 0 && _IX(_ak,'NVAR=') < 0 && _IX(_ak,'src=') < 0 && _IX(_ak,'source=') < 0 && _IX(_ak,'DMCOL=') < 0 ) ) _ak =document.URL.substring(document.URL.indexOf('?')+1,document.URL.length); }; 
}
else{ 
_rf=_LST(_rf,'#');_ak=_CST(document.URL,'?');
if( _IX(_ak,"rcsite=") > 0 &&  _IX(_ak,"rctype=") > 0){
    _ak += '&';
    _ak = _ak.substring(_IX(_ak,'rcsite='),_ak.indexOf('&',_IX(_ak,'rcsite=')+7))+'-'+_ak.substring(_IX(_ak,'rctype=')+7,_ak.indexOf('&',_IX(_ak,'rctype=')+7))+'&';
}
}
_rl=document.URL;
var _trl = _rl.split('?'); if(_trl.length>1){ if( _IX(_trl[1],'FWDRL') > 0 ){ _trl[1] = _XV(_trl[1],'FWDRL','&','=','_rf'); _rf = unescape(_rf); _fwd = _GV(_trl[1],'FWDIDX','&','='); _rl=_trl.join('?'); };  if( _IX(_ak,'FWDRL') > 0 ){ _ak = _XV(_ak,'FWDRL','&','=','_prl');}; }; if( typeof FD_ref=='string' && FD_ref != '' ) _rf = FD_ref;
if( _rf.indexOf('googlesyndication.com') > 0 ){ 
var _rf_idx = _rf.indexOf('&url=');  if( _rf_idx > 0 ){ var _rf_t = unescape(_rf.substring(_rf_idx+5,_rf.indexOf('&',_rf_idx+5)));  if( _rf_t.length > 0 ){ _rf = _rf_t ;};  };  };
_rl = _UL(_rl); _rf = _UL(_rf);

if( typeof _rf_t != 'undefined' && _rf_t != '' ) _rf = _rf_t ;
if( typeof _ak_t != 'undefined' && _ak_t != '' ) _ak = _ak_t ;

if( typeof _rf==_UD||( _rf == '' )) _rf = 'bookmark' ;_cd=(_bI)?screen.colorDepth:screen.pixelDepth;
_UA = navigator.userAgent;_ua = navigator.userAgent.toLowerCase();
if (navigator.language){  _ul = navigator.language.toLowerCase();}else if(navigator.userLanguage){  _ul = navigator.userLanguage.toLowerCase();};

_st = _IX(_UA,'(') + 1;_end = _IX(_UA,')');_str = _UA.substring(_st, _end);_if = _str.split('; ');_cmp = _UN ;

if(_bI){ _cmp = navigator.appName; _str = _if[1].substring(5, _if[1].length); _vs = (parseFloat(_str)).toString();} 
else if ( (_st = _IX(_ua,"opera")) > 0){ _cmp = "Opera" ;_vs = _ua.substring(_st+6, _ua.indexOf('.',_st+6)); } 
else if ((_st = _IX(_ua,"firefox")) > 0){_cmp = "Firefox"; _vs = _ua.substring(_st+8, _ua.indexOf('.',_st+8)); } 
else if ((_st = _IX(_ua,"netscape6")) > 0){ _cmp = "Netscape"; _vs = _ua.substring(_st+10, _ua.length);  
if ((_st = _IX(_vs,"b")) > 0 ) { _str = _vs.substring(0,_IX(_vs,"b")); _vs = _str ;  };}
else if ((_st = _IX(_ua,"netscape/7")) > 0){  _cmp = "Netscape";  _vs = _ua.substring(_st+9, _ua.length);  if ((_st = _IX(_vs,"b")) > 0 ){ _str = _vs.substring(0,_IX(_vs,"b")); _vs = _str;};
}
else{
if (_IX(_ua,"gecko") > 0){ if(_IX(_ua,"safari")>0){ _cmp = "Safari";_ut = _ua.split('/');for( var ii=0;ii<_ut.length;ii++) if(_IX(_ut[ii],'safari')>0){ _vst = _ut[ii].split(' '); _vs = _vst[0];} }else{ _cmp = navigator.vendor;  } } else if (_IX(_ua,"nav") > 0){ _cmp = "Netscape Navigator";}else{ _cmp = navigator.appName;}; _av = _UA ; 
}
if (_IX(_vs,'.')<0){  _vs = _vs + '.0'}
_bz = _cmp; 


var nhn_ssn={uid:HL_GCD,g:HL_GUL,p:HL_GPT,s:_JV,rl:_rl,m:[],run:nhn_ssn?nhn_ssn.uid:this.uid};
function CS2B38583114523(){var f={e:function(s,t){return s.indexOf(t);},d:function(s){var r=String(s); return r.toUpperCase();},f:function(o){var a;a=o;if(f.d(a.tagName)=='A' || f.d(a.tagName)=='AREA'){return a;}else if(f.d(a.tagName)=='BODY'){return 0;}else{return f.f(a.parentNode);} },n:function(s){var str=s+"";var ret="";for(i = 0; i < str.length; i++){	var at = str.charCodeAt(i);var ch=String. fromCharCode(at);	if(at==10 || at==32){ret+=''+ch.replace(ch,'');}else if (at==34||at==39|at==35){ret+=''+ch.replace(ch,' ');	}else{ret+=''+ch;}  } return ret;},ea:function(c,f){var wd;if(c=='click'){wd=window.document;}else{wd=window;}if(wd.addEventListener){wd.addEventListener(c,f,false)}else if(wd.attachEvent){wd.attachEvent("on"+c,f)} } };
var p={h:location.host,p:(location.protocol=='https:')?"https://"+nhn_ssn.g:"http://"+nhn_ssn.g+":"+nhn_ssn.p,s:'/?xuid='+nhn_ssn.uid+'&sv='+nhn_ssn.s,u:function(){var r='';r=String(nhn_ssn.rl);var sh=r.indexOf('#'); if(sh!=-1){r=r.substring(0,sh);}return r+'';},ol:new Image(0,0),xL:function(x){if(typeof(Amz_T_e)==s.u){ p.ol.src=p.p+p.s+'&url='+escape(p.u())+'&xlnk='+escape(x)+'&xidx=0'+'&crn='+Math.random()+'&';nhn_ssn.m.push(p.ol);} } };
var s={Lp:'a.tagName=="B" || a.tagName=="I" || a.tagName== "U" || a.tagName== "FONT" || a.tagName=="I" || a.tagName=="STRONG"'  ,f:'function',	j:'javascript:',u:'undefined'};var c={Run:function(){f.ea('click',this.ec);},ec:function(e){var ok='';var m = document.all ? event.srcElement : e.target;var a=m;var o=m.tagName;if(o=="A" || o=="AREA" || o=="IMG" || eval(s.Lp)){ok=c.lc(m);if(ok.length != 0){p.xL(unescape(ok));};	};},lc:function(o){ try{var ar='';var obj;obj=f.f(o);if(typeof obj==s.u){return '';};if(typeof(obj.href)==s.u){return '';};ar = String(obj.href);if(ar.length == 0){return '';};ar=f.n(ar);if(f.e(ar,'void(') == -1 && f.e(ar,'void0') == -1){	return ar;}else{return s.j + 'void(0)';};return '';}catch(er){return '';} } };
if(p.u().charAt(1) != ':'){if(nhn_ssn.uid!=nhn_ssn.run){c.Run(); } };
};eval(nhn_ssn.uid + '();');


if( _IX(_pf,_UD) >= 0 || _pf ==  '' ){ _os = _UN ;}else{ _os = _pf ; };
if( _IX(_os,'Win32') >= 0 ){if( _IX(_av,'98')>=0){ _os = 'Windows 98';}else if( _IX(_av,'95')>=0 ){ _os = 'Windows 95';}else if( _IX(_av,'Me')>=0 ){ _os = 'Windows Me';}else if( _IX(_av,'NT')>=0 ){ _os = 'Windows NT';}else{ _os = 'Windows';};if( _IX(_ua,'nt 5.0')>=0){ _os = 'Windows 2000';};if( _IX(_ua,'nt 5.1')>=0){_os = 'Windows XP';if( _IX(_ua,'sv1') > 0 ){_os = 'Windows XP SP2';};};if( _IX(_ua,'nt 5.2')>=0){_os ='Windows Server 2003';};if( _IX(_ua,'nt 6.0')>=0){_os ='Windows Vista';};if( _IX(_ua,'nt 6.1')>=0){_os ='Windows 7';};};
_pf_s = _pf.substring(0,4);if( _pf_s == 'Wind'){if( _pf_s == 'Win1'){_os = 'Windows 3.1';}else if( _pf_s == 'Mac6' ){ _os = 'Mac';}else if( _pf_s == 'MacO' ){ _os ='Mac';}else if( _pf_s == 'MacP' ){_os='Mac';}else if(_pf_s == 'Linu'){_os='Linux';}else if( _pf_s == 'WebT' ){ _os='WebTV';}else if(  _pf_s =='OSF1' ){ _os ='Compaq Open VMS';}else if(_pf_s == 'HP-U' ){ _os='HP Unix';}else if(  _pf_s == 'OS/2' ){ _os = 'OS/2' ;}else if( _pf_s == 'AIX4' ){ _os = 'AIX';}else if( _pf_s == 'Free' ){ _os = 'FreeBSD';}else if( _pf_s == 'SunO' ){ _os = 'SunO';}else if( _pf_s == 'Drea' ){ _os = 'Drea'; }else if( _pf_s == 'Plan' ){ _os = 'Plan'; }else{ _os = _UN; };};
if( _cu == 'x86' ){ _cu = 'Intel x86';}else if( _cu == 'PPC' ){ _cu = 'Power PC';}else if( _cu == '68k' ){ _cu = 'Motorola 680x';}else if( _cu == 'Alpha' ){ _cu = 'Compaq Alpa';}else if( _cu == 'Arm' ){ _cu = 'ARM';}else{ _cu = _UN;};if( _d == '' || typeof _d==_UD ){ _d = '0*0';}

HL_PL(_rl); // Site Logging
}
</script>
<!-- NSM Log Gathering Script End -->

	



<script type="text/javascript" src="/shopimages/zooyork77/template/work/37329/footer.1.js?t=202007271613"></script>
<!-- #wrap -->
<script type="text/javascript" src="/shopimages/zooyork77/template/work/37329/shopdetail.js?t=202009181448"></script>

<link type="text/css" rel="stylesheet" href="/css/shopdetail.css">

<iframe id="loginiframe" name="loginiframe" style="display: none;" frameborder="no" scrolling="no"></iframe>

<div id="basketpage" name="basketpage" style="position: absolute; visibility: hidden;"></div>

<form name="coupon" action="/shop/shopdetail.html" method="post">
<input type="hidden" name="type" value="coupon">
<input type="hidden" name="brandcode" value="061007000133">
<input type="hidden" name="branduid" value="1000002787">
<input type="hidden" name="couponnum">
</form>

<div id="comment_password">
    <form onsubmit="comment_password_submit(); return false;" style="height: 20px; margin: 0; padding: 0;" autocomplete="off">
    <input type="hidden" id="pw_num" name="pw_num" value="">
    <input type="hidden" id="pw_mode" name="pw_mode" value="">
    <span style="font-weight: bold;">비밀번호</span>
    <input type="password" id="input_passwd" name="input_passwd" size="25" value="" style="vertical-align: middle;">
    <img src="/board/images/btn_ok.gif" alt="확인" onclick="comment_password_submit();" style="border: 0px; cursor: pointer; vertical-align: middle;">
    <img src="/board/images/btn_close.gif" alt="닫기" onclick="comment_password_close();" style="border: 0px; cursor: pointer; position: absolute; top: 5px; right: 5px;">
    </form>
</div><form id="frm_get_secret_comment" name="frm_get_secret_comment" method="post">
<input type="hidden" name="code" value="">
<input type="hidden" name="num1" value="">
<input type="hidden" name="num2" value="">
<input type="hidden" name="mode" value="">
<input type="text" name="___DUMMY___" readonly="" disabled="" style="display:none;">
</form>

<div id="detailpage" name="detailpage" style="position: absolute; visibility: hidden;"></div>

<script type="text/javascript" src="/js/jquery.language.js"></script>
<script type="text/javascript" src="/js/jquery.multi_option.js"></script>
<script type="text/javascript" src="/js/lib.js"></script>

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

var changeOpt2value = function(num) {
    var optionIndex = optval = '';
    var optcnt = 0;
    var oki = oki2 = '-1';
    var _form = document.form1;
    if (!document.getElementById('option_type')) {
        if (typeof _form.spcode != 'undefined' && _form.spcode.selectedIndex > 1) {
            temp2 = _form.spcode.selectedIndex - 1;
            if (typeof _form.spcode2 == 'undefined' || _form.spcode2.type == 'hidden') temp3 = 1;
            else temp3 = _form.spcode2.length;
            for (var i = 2; i < temp3; i++) {
                var len = document.form1.spcode2.options[i].text.length;
                document.form1.spcode2.options[i].text = document.form1.spcode2.options[i].text.replace(' (품절)', '');
                if (num[(i - 2) * 10 + (temp2 - 1)] == 0) {
                    document.form1.spcode2.options[i].text = document.form1.spcode2.options[i].text + ' (품절)';
                }
            }
        }
    }
};




function imageview(temp, type) {
    var windowprops = 'height=350,width=450,toolbar=no,menubar=no,resizable=no,status=no';
    if (type == '1') {
        windowprops += ',scrollbars=yes';
        var imgsc = 'yes';
    } else {
        var imgsc = '';
    }
    if (temp.length == 0) {
        alert('큰이미지가 없습니다.');
        return;
    }

    if (document.layers) {
        var url = '/shop/image_view.html?scroll=' + imgsc + '&image=/shopimages/zooyork77/' + escape(temp);
    } else {
        var url = '/shop/image_view.html?scroll=' + imgsc + '&image=/shopimages/zooyork77/' + temp;
    }
    window.open(url, 'win', windowprops);
}


function send_wish(temp, temp2) {
    var _form = document.form1;
                if (create_option_input('form1', 'wish') === false) {
                    return;
                }    _form.ordertype.value += '|parent.|layer';
    _form.target = 'loginiframe';
    _form.action = '/shop/shopdetail.html';
    _form.mode.value = 'wish';
    _form.optiontype.value = 'NO';
    //_form.target = 'new';

    _form.submit();
}


function openTab(tab_name) {
    // 쇼핑탭 상품 리로드 메서드인 reload_product_list()를 사용할수 있을 경우 실행함
    if (typeof(reload_product_list) == 'function') {
        reload_product_list(tab_name);
    }
}

function viewlayerbasket(visible, item, type) {
                openTab('BASKET');
            var _basket = jQuery('#basketpage');
            if (visible == 'visible') {
                jQuery.ajax({
                    type: 'POST',
                    url: '/shop/gobasket.layer.html',
                    dataType: 'html',
                    data: {
                        'item': item,
                        'type': type,
                        'device_type' : ""
                    },            success: function(req) {
                var _x = (jQuery(window).width()) / 2 + jQuery(document).scrollLeft() - 125;
                var _y = (jQuery(window).height()) / 2 + jQuery(document).scrollTop() - 100;
                // 가져온 html을 객체화 시켜서 필요한 부분만 뽑아 온다.
                // 이렇게 하지 않으면 가져온 html의 style이 페이지 전체에 영향을 끼친다.
                var _basket_layer = jQuery('<div></div>').html(req).find('table:first');
                jQuery(_basket).html(_basket_layer).css({
                    'width': 380,
                    'height': 200,
                    'left': _x,
                    'top': _y,
                    'zIndex': 10000,
                    'visibility': visible
                }).show();
                return false;
            }
        });
    } else {
        jQuery(_basket).css('visibility', visible);
    }
}

function send(temp, temp2, direct_order) {
    document.form1.ordertype.value = '';

    //레드오핀 제휴서비스 지원
    if(document.getElementById('logrecom')) {
        logrecom_cart_log(logreco_id, 2, log_url); 
    }
    

    if(temp=="baro") {
		var Naverpay_Btn_W	 =  document.getElementsByName('navercheckout');
		var Naverpay_Btn_Chk = false;
		if(Naverpay_Btn_W.length > 0) {			
			for (var np=0 ; np < Naverpay_Btn_W.length ; np++) {
				if(Naverpay_Btn_W[np].value) {
					Naverpay_Btn_Chk = true;
				} else {
					Naverpay_Btn_Chk = false;
				}
			}
		}

        // 카카오페이 바로구매
        var kakaopay_info_buy_cart = 'N';
        if (direct_order && direct_order == 'kakaopay_direct') {
            kakaopay_info_buy_cart = 'N';
            try{
                var aElement = document.createElement( "<input type='hidden' name='direct_order' id='direct_order' value='kakaopay_direct'>" );
            } catch (e) {
                var aElement = document.createElement( "input" );
                aElement.setAttribute('type','hidden');
                aElement.setAttribute('name','direct_order');
                aElement.setAttribute('id','direct_order');
                aElement.setAttribute('value', 'kakaopay_direct');
            }
            document.form1.appendChild( aElement );
        }

       // 장바구니 바로구매옵션 장바구니 상품 포함 으로 설정된경우 장바구니에 상품담겨진경우 얼랏창 노출
       if ('N' == 'N' && '0' > 0 && Naverpay_Btn_Chk === false && (!document.getElementById('direct_order') || (document.getElementById('direct_order') && document.getElementById('direct_order').value != 'payco_checkout'))) {
            var baro_basket_msg = '장바구니에 담겨 있는, 상품도 함께 주문됩니다.\n원치 않으실 경우 장바구니를 비워주세요.';

            // 카카오바로구매 장바구니 제외 조건이면 경고창 띄우지 않음
            if (kakaopay_info_buy_cart == 'Y' && (document.getElementById('direct_order') && document.getElementById('direct_order').value == 'kakaopay_direct')) {
                baro_basket_msg = '';
            }
            if (baro_basket_msg) alert(baro_basket_msg);
       }
       document.form1.ordertype.value='baro';
       document.form1.ordertype.value+= "|parent.|layer";
       document.form1.target = "loginiframe";
    }else {
       document.form1.ordertype.value='';
       document.form1.target = "";
    }
    if (create_option_input('form1') === false) {
        return;
    }
    document.form1.ordertype.value += '|parent.|layer';
    document.form1.target = 'loginiframe';
        // 페이코 간편구매
        if (document.getElementById('direct_order') && document.getElementById('direct_order').value == 'payco_checkout') {
            if (typeof MOBILE_USE != 'undefined' && MOBILE_USE == 1) {
                document.form1.target = "";
            }
            else {
                window.open('', 'payco_win', 'width=692');
                document.form1.target = "payco_win";
            }
        }    document.form1.action = 'basket.html';
    //document.form1.target = 'new2';
    if (typeof m_acecounter_use !== 'undefined' && m_acecounter_use === true && typeof ACM_PRODUCT == 'function') {
        ACM_PRODUCT(document.getElementById('MS_amount_basic_0').value);
        setTimeout(function () { document.form1.submit(); }, 100);
    } else {
        document.form1.submit();
    }
}


function package_allbasket(temp, temptype) {
    var _form = document.form1;
    var package_dicker_pos = document.getElementById('package_dicker_pos').value;
    if (package_dicker_pos == 'Y') {
        alert('회원 로그인을 하시면 구매하실 수 있습니다.');
        return;
    } else if (package_dicker_pos == 'P') {
        alert('선택하신 세트 상품은 장바구니에 담아 주문이 가능하지 않으니, 관리자에게 문의하세요.');
        return;
    }
        var package_basket_count = temp; // 체크박스 사용하지 않는 세트상품 때문에.. 
        for(var i = 0; i < temp; i++) {
            if(typeof(_form.package_basket) !== "undefined" && _form.package_basket[i].checked === true) {
                package_basket_count--;
            }
        }
        
        if(typeof(_form.package_basket) !== "undefined" && package_basket_count == temp) {
            alert('선택하신 상품이 없습니다.');
            return;
        }

        if(package_basket_count > 0 && package_basket_count < temp) {
            _form.allpackageuid.value = '';
            _form.package_type.value = 'CHECK';   // CHECK : 체크박스 및 개별수량 가상태그 추가 일반상품으로 / ALL : 기존 세트상품으로
            _form.package_discount_type.value = '';
            _form.package_discount_money.value = ''; 
            _form.product_type.value = '';
            _form.package_num.value = 0;
        }
        if (package_basket_count == 0 && _form.package_type.value == 'CHECK') {
            _form.allpackageuid.value = _form.temp_allpackageuid.value;
            _form.package_type.value = 'ALL';   // CHECK : 체크박스 및 개별수량 가상태그 추가 일반상품으로 / ALL : 기존 세트상품으로
            _form.package_discount_type.value = _form.temp_package_discount_type.value;
            _form.package_discount_money.value = _form.temp_package_discount_money.value; 
            _form.product_type.value = _form.temp_product_type.value;
            _form.package_num.value = _form.temp_package_num.value;

        }

        _form.ordertype.value = '';

        if (temptype == 'baro') {
            _form.ordertype.value='baro';
            _form.ordertype.value+= "|parent.|layer";
            _form.target = "loginiframe";
        }            _form.ordertype.value += '|parent.|layer';
            _form.target = 'loginiframe';
    if (create_option_input('form1', 'package') === false) {
        return;
    }    _form.submit();
}


function seloptvalue(){}function allbasket(temp, temptype) {
    var _form = document.form1;
    
    if('relation' == 'relation') {    
        var package_basket_count = temptype; // 체크박스 사용하지 않는 세트상품 때문에.. 
        for(var i = 0; i < temptype; i++) {
            if(typeof(_form.package_basket) !== "undefined" && _form.package_basket[i].checked === true) {
                package_basket_count--;
            }
        }

        if(typeof(_form.package_basket) !== "undefined" && package_basket_count == temptype && 'Y' == 'A') {
            alert('선택하신 상품이 없습니다.');
            return;
        }

        if(package_basket_count > 0 && package_basket_count < temptype) {
            _form.allpackageuid.value = '';
            _form.package_type.value = 'CHECK';   // CHECK : 체크박스 및 개별수량 가상태그 추가 일반상품으로 / ALL : 기존 세트상품으로
            _form.package_discount_type.value = '';
            _form.package_discount_money.value = ''; 
            _form.product_type.value = '';
            _form.package_num.value = 0;
            _form.brandcode.value = '';
            _form.branduid.value = '';
        }
        if (package_basket_count == 0 && _form.package_type.value == 'CHECK') {
            _form.allpackageuid.value = _form.temp_allpackageuid.value;
            _form.package_type.value = 'ALL';   // CHECK : 체크박스 및 개별수량 가상태그 추가 일반상품으로 / ALL : 기존 세트상품으로
            _form.package_discount_type.value = _form.temp_package_discount_type.value;
            _form.package_discount_money.value = _form.temp_package_discount_money.value; 
            _form.product_type.value = _form.temp_product_type.value;
            _form.package_num.value = _form.temp_package_num.value;
        }

    }

    if (create_option_input('allbasket', 'relation', '', 'NORMAL') === false) {
        return;
    }
    document.allbasket.ordertype.value += '|parent.|layer';
    document.allbasket.target = 'loginiframe';
    document.allbasket.submit();
}


function login_chk(brandcode) {
    alert('회원에게만 제공이 되는 서비스입니다.\n우선 로그인을 하여 주시기 바랍니다.');
    location.href = '/shop/member.html?type=wish&brandcode=' + brandcode;
}


var oriimg;
function multi_image_view(obj) {
    var img_obj = document.getElementById('lens_img');
    if (img_obj) {
        oriimg = img_obj.src;
        img_obj.src = obj.src;
    }
}
function multi_image_ori() {
    var img_obj = document.getElementById('lens_img');
    if (img_obj) {
        img_obj.src =oriimg;
    }
}


extra_option_manager.set_info({
    idx                     : '0',
    min_amount              : parseInt('1'),
    min_add_amount          : parseInt('1'),
    max_amount              : parseInt('1'),
    product_uid             : '1000002719',
    brandcode               : '001004000001',
    product_name            : 'OG Logo Safe Touch Carabiner Matt Silver',
    product_price           : '2000',
    option_type             : 'NO',
    option_display_type     : 'EVERY',
    option_insert_mode      : 'manual',
    json                    : {basic:{0:{0:{adminuser:'zooyork77',uid:'1000002719',sto_id:'1',opt_ids:'',sto_type:'BASIC',sto_sort:'0',sto_matrix:'0:0',sto_code:'',opt_values:'',sto_price:'0',sto_provide_price:'0',sto_real_stock:'299',sto_unlimit:'N',sto_check:'',sto_stop_use:'Y',sto_stop_stock:'0',sto_stop_send:'N',sto_stop_date:'',sto_safe_use:'N',sto_safe_stock:'0',sto_safe_send:'N',sto_safe_date:'',sto_order_stock:'583',sto_state:'SALE',sto_note:'',sto_smartpickup:'',sto_image:'',sto_detail_image:'',sto_max:'',sto_min:'',org_opt_price:'0'}}}},
    type                    : null,
    extra_require           : 'N'
});

function clickcoupon(couponnum, brandcode) {
    jQuery.ajax({
        type: 'POST',
        url: '/shop/download_coupon.ajax.html',
        dataType: 'html',
        async: false,
        data: {
            'couponnum': couponnum,
            'brandcode': brandcode,
            'type': 'coupon',
            'r': Math.random()
        },
        success: function(req) {
            var flag = req.substring(0,1);
            var msg = req.substring(2);
            alert(msg);
            if (flag == 'Y') location.href = '/shop/member.html?type=shopdetail&brandcode=061007000133&code=061&mcode=007&scode=001';
        }
    });
    return;
}


/**
 * 리뷰 전체 펼침 기능
 * reviewlist = "O" 일때 기능 사용
 */
function reviewAllopen(prefix, total_count) {
    for (var i = 1; i <= total_count; i++) {
        if (document.getElementById(prefix + i) == null) { continue; }
        document.getElementById(prefix + i).style.display = (jQuery.browser.msie) ? (Math.abs(jQuery.browser.version) > 9 ? 'table-row' : 'block') : 'table-row';
    }
}


function comment_password(mode, num, event, code, num1, num2) {
    var comment_password = $('#comment_password');
    var form             = $('form#frm_get_secret_comment');
    $('input[name="code"]', form).val(code);
    $('input[name="num1"]', form).val(num1);
    $('input[name="num2"]', form).val(num2);
    $('input[name="mode"]', form).val(mode);

    $('#pw_num').val(num);

    if (typeof(comment_password) != 'undefined') {
        comment_password.css({ top: $(window).height() / 2 + $(window).scrollTop() + 'px', right: $(window).width() / 2 + 'px'}).show();
    }
    $('#input_passwd').val('').focus();
}
function comment_password_close() {
    $('#comment_password').hide();
    $('#pw_num').val('');
    $('#pw_mode').val('');
    $('#input_passwd').val('');
    return false;
}
function comment_password_submit() {
    var form = $('#frm_get_secret_comment');
    var pwd = $('#input_passwd');
    var num = $('#pw_num');

    if (pwd.val().length <= 0) {
        alert('비밀번호를 입력해주세요.');
        pwd.focus();
        return false;
    }

    $.ajax({
        type: 'post',
        url: '/board/comment.ajax.html',
        dataType: 'json',
        data: {
            code: $('input[name="code"]', form).val(),
            num1: $('input[name="num1"]', form).val(),
            num2: $('input[name="num2"]', form).val(),
            comnum: num.val(),
            pwd: pwd.val(),
            mode: 'view'
        },
        success: function (res) {
            switch (res.success) {
                case 'FAIL':
                    alert('비밀번호가 다릅니다.');
                    $('#input_passwd').focus();
                    break;
                case 'EMPTY':
                    alert('잘못된 접근 입니다..');
                    break;
                default:
                    $('#' + $('input[name="mode"]', form).val() + '_comment_' + $('input[name="num1"]', form).val() + '_' + num.val()).html(res.msg);
                    comment_password_close();
                    break;
            }
        }
    });
    return false;
}



function change_price(temp, temp2, temp3) {

    display_option_stock('NO');
    changeOpt2value(num);
    if (temp3 == '') temp3 = 1;
    var price = new Array();
    var doprice = new Array();
    var downprice = new Array();
    var discount_percent = new Array();
    if (temp == 1) {
        if (document.form1.spcode.selectedIndex>2) temp = 0;
        else temp = document.form1.spcode.selectedIndex;
        document.getElementById('pricevalue').innerHTML = price[temp];

        if (discount_percent[temp] != undefined && document.getElementById('discount_percent_span')) {
            document.getElementById('discount_percent_span').innerHTML = discount_percent[temp];
        }

            
            
    }
    if (temp2 > 0 && temp3 > 0) {
        if (num[(temp3 - 1) * 10 + (temp2 - 1)] <= 0) {
            alert('해당 상품의 옵션은 품절되었습니다. 다른 상품을 선택하세요');
            if (document.form1.spcode.type != 'hidden') document.form1.spcode.focus();
            return;
        }
    } else {
        if (temp2 <= 0 && document.form1.spcode.type != 'hidden') document.form1.spcode.focus();
        else document.form1.spcode2.focus();
        return;
    }
}


(function($) {
    var _code = Array();
    var _type = null;
    var _1st = $('#MS_select_navigation_1st');
    var _2st = $('#MS_select_navigation_2st');
    var _3st = $('#MS_select_navigation_3st');

    var _get_location = function(key) {
        if (key > 0 && _1st.length > 0 && _1st.children('option:selected').val() > 0) { _code.push('xcode=' + _1st.children('option:selected').val()); _type = _1st.children('option:selected').attr('type'); }
        if (key > 1 && _2st.length > 0 && _2st.children('option:selected').val() > 0) { _code.push('mcode=' + _2st.children('option:selected').val()); _type = _2st.children('option:selected').attr('type'); }
        if (key > 2 && _3st.length > 0 && _3st.children('option:selected').val() > 0) { _code.push('scode=' + _3st.children('option:selected').val()); _type = _3st.children('option:selected').attr('type'); }
        if (_code.length > 0) { return 'type=' + _type + '&' + _code.join('&'); }
    };

    _1st.change(function() { location.href = '/shop/shopbrand.html?' + _get_location(1); });
    _2st.change(function() { location.href = '/shop/shopbrand.html?' + _get_location(2); });
    _3st.change(function() { location.href = '/shop/shopbrand.html?' + _get_location(3); });
})(jQuery);

        jQuery(document).ready(function() {
            jQuery('#videotalk_area').html('');
        });

        var power_review_config = {
            board_auth_write : "A",
            board_review_write_type : "DELIVERY",
            board_add_clearw : "Y",
            board_attach_cnt : "4",
            board_min_length : "10",
            board_comment_min_length : "10",
            board_comment_max_length : "500",
            board_photo_review_type  : "",
            board_code:"zooyork77_board7",
            template_page_type:"3",
            file_board_code:"zooyork77_board7",
            product_uid: "1000002787",
            product_gid:"",
            add_protocol:"",
            board_host:"http://board.makeshop.co.kr",
            servername:"special304",
            shopurl:"espionage.co.kr",
            photo_total_page:"",
            photo_page_limit:"4",
            is_login : false,
            max_display_time : '3',
            mobile_division_first : '',
            best_total_page : '',
            info_comment_view : "N",
            is_photo:"",
            info_view_type : "A",
            board_comment_info : "댓글을 작성해 주세요~"
        }
        set_power_review_page('detail', power_review_config);

    var oneclick_product_image_src = '';
    function oneclick_change_mimg(dimg) {
        var is_mobile_use = false;
        if (dimg === false) {
            return false;
        }
        if (dimg.length == 0 && oneclick_product_image_src == '') {
            return false;
        }
        var _thumb = $('img.detail_image');
        if (_thumb && _thumb.length > 0) {
            if (oneclick_product_image_src == '') {
                oneclick_product_image_src = _thumb.attr('src');
            }
            if (dimg.length == 0) {
                if (oneclick_product_image_src.length > 0) {
                    _thumb.attr('src', oneclick_product_image_src);
                }
            } else {
                var _width = _thumb.css('width');
                var _height = _thumb.css('height');
                if (is_mobile_use === true) {
                    _thumb.css({'height': _height});
                } else {
                    _thumb.css({'width': _width});
                }
                _thumb.attr('src', dimg);
            }
        }
    }

</script>
<style type="text/css">
html, body {
scrollbar-face-color:#ffffff;
scrollbar-highlight-color:#cccccc;
scrollbar-shadoW-color:#cccccc;
scrollbar-3dlight-color:#ffffff;
scrollbar-arrow-color:#999999;
scrollbar-track-color:#ffffff;
scrollbar-DARKSHADOW-color:#ffffff;

}
</style><script type="text/javascript">
if (typeof getCookie == 'undefined') {
    function getCookie(cookie_name) {
        var cookie = document.cookie;
        if (cookie.length > 0) {
            start_pos = cookie.indexOf(cookie_name);
            if (start_pos != -1) {
                start_pos += cookie_name.length;
                end_pos = cookie.indexOf(';', start_pos);
                if (end_pos == -1) {
                    end_pos = cookie.length;
                }
                return unescape(cookie.substring(start_pos + 1, end_pos));
            } else {
                return false;
            }
        } else {
            return false;
        }
    }
}
if (typeof setCookie == 'undefined') {
    function setCookie(cookie_name, cookie_value, expire_date, domain) {
        var today = new Date();
        var expire = new Date();
        expire.setTime(today.getTime() + 3600000 * 24 * expire_date);
        cookies = cookie_name + '=' + escape(cookie_value) + '; path=/;';

        if (domain != undefined) {
            cookies += 'domain=' + domain +  ';';
        }  else if (document.domain.match('www.') != null) {
            cookies += 'domain=' + document.domain.substr(3) + ';';
        }
        if (expire_date != 0) cookies += 'expires=' + expire.toGMTString();
        document.cookie = cookies;
    }
}

function setMakeshopLogUniqueId() {
    function s4() {
        return Math.floor((1 + Math.random()) * 0x10000)
        .toString(16)
        .substring(1);
    }
    return s4() + s4() + s4() + s4() + s4() + s4() + s4() + s4();
}

if (getCookie('MakeshopLogUniqueId')) {
    var MakeshopLogUniqueId = getCookie('MakeshopLogUniqueId');
} else {
    var MakeshopLogUniqueId = setMakeshopLogUniqueId();
    setCookie('MakeshopLogUniqueId', MakeshopLogUniqueId);
}

function MSLOG_loadJavascript(url) {
    var head= document.getElementsByTagName('head')[0];
    var script= document.createElement('script');
    script.type= 'text/javascript';
    var loaded = false;
    script.onreadystatechange= function () {
        if (this.readyState == 'loaded' || this.readyState == 'complete')
        { if (loaded) { return; } loaded = true; }
    }
    script.src = url;
    head.appendChild(script);
}
var MSLOG_charset = "euc-kr";
var MSLOG_server  = "https://log5.makeshop.co.kr";
var MSLOG_code = "zooyork77";
var MSLOG_var = "V1ZSdmVFNVVjRGRqZW04eFQybEtibUp0Um5SYVUwazNZM3B2ZVU1NmIybFZiVll5V2xoS2VtRlhTbk5hVTBKRFpGZE9jbHBZVVdkVFIwWXdTVVZLYzFsWFRuSkphblI2VDJwVk5rbHRaR3BpTWxKc1NXcDBlazlxUlhkUGFVbDRUVVJCZDAxRVFYbE9lbWN6U1dwMGVrOXFXVFpKYldSM1kyMXNhbHBUU1RkamVtOHhUMmxKZWs1cVFYZE5RMGszWTNwdk1rOXBTbXBYUjA1MldrZFZhVTh6VFRaTmVtOXBUVVJaZUVscWRIcFBhbGsyU1cxT1Rsa3lPV3RhVTBrM1kzcHZlazlwU1hkTlJHTnBUek5OTms1cWIybFpNVTVxWWpKU2JFbHFkSHBQYWswMlNXcEJkMDFUU1RkamVtOHlUMmxLYWxkSE5XaGlWMVZwVHpOTk5rMXFSVFpKYTFaVVZVVnNVRlJyUmtoU1UwSkNWRVYzWjFWR1NsQlNSbFpFVmtOSk4yTjZiekpQYVVwcVZGYzFhR0pYVldsUE0wMDJUMFJ2YVZORlZrSlNSbVJHVVZaSmFVOHpUVFpPYW05cFdURk9kVmxYTVd4SmFuUjZUMnBOTmtsclRrSlZRMGszWTNwdk0wOXBTbnBqUjFacVlWZEdjMGxxZEU5UE0wMDJUbnB2YVdSdGJIbGtTRlpvWWtOSk4yTjZiM2hQYVVwUFNXcDBlazlxV1RaSmJWSnNaRzFzYWxwVFNUZGplbTk0VDJsS00wbHFkSHBQYWtWNlQybEtkbU50VW14amJEbHlXbGhzTTJJelNtdEphblJQVHpOTk5rNXFiMmxqYlZadFpGaEtjMGxxZEU5UE0wMDJUbFJ2YVdSSE9XdFpXR3RwVHpOTk5rNTZZelpKYVhkNFRVUkJkMDFFUVhwT2FrRXpURVJGZDAxRVFYZE5SRTB6VFVSRmMwMVVRWGROUkVGM1RYcG5kMDlUZDNoTlJFRjNUVVJCZWs5RVJYZE1SRVYzVFVSQmQwMUVUVFJOVkZselRWUkJkMDFFUVhkTmVtZDRUV2wzZUUxRVFYZE5SRUY2VDBSRmVrbHFkRGs9";

//파워앱에서만 사용
try {
    var LOGAPP_var = "";
    var LOGAPP_is  = "N";
    if (LOGAPP_is == "Y" && LOGAPP_var != "") {
        var varUA = navigator.userAgent.toLowerCase(); //userAgent 값 얻기
        if (varUA.match('android') != null) { 
            //안드로이드 일때 처리
            window.android.basket_call(LOGAPP_var);
        } else if (varUA.indexOf("iphone")>-1||varUA.indexOf("ipad")>-1||varUA.indexOf("ipod")>-1) { 
            //IOS 일때 처리
            var messageToPost = {LOGAPP_var: LOGAPP_var};
            window.webkit.messageHandlers.basket_call.postMessage(messageToPost);
        } else {
            //아이폰, 안드로이드 외 처리
        }
    }
} catch(e) {}
//파워앱에서만 사용 END

if (document.charset) MSLOG_charset = document.charset.toLowerCase();
if (document.characterSet) MSLOG_charset = document.characterSet.toLowerCase();  //firefox;
MSLOG_loadJavascript(MSLOG_server + "/js/mslog.js?r=" + Math.random());


</script>
<script type="text/javascript">
var pagekin_el = document.getElementsByTagName("div");
var pagekin_id = [];
for(var i=0; i < pagekin_el.length;i++){ 
        if(pagekin_el[i].className.substring(0,4)=="PKMW") {
                    pagekin_id.push(pagekin_el[i].className);
                        }
}
if(pagekin_id.length>0) {
    var script=document.createElement('script');
    script.src='//image.makeshop.co.kr/pagekin/widget/makeshop.d.js??20210423';
    script.charset='utf-8';
    document.body.appendChild(script);
}
</script>
<!--script type="text/javascript" src="//www.pagekin.com/widget/makeshop.js" charset="utf-8"></script-->

<script>
/*
 * dgg.js
 * dgg 회원인증, 탭 출력 관련 script
 * @author myjeong
 * @date 2011-07-28
*/

/* dgg resize */
function dgg_resize() {
    var dggiframe1 = document.getElementById("dggiframe1");
    var dggiframe2 = document.getElementById("dggiframe2");
    var dggGuide = document.getElementById("dggGuide");
    var dggTbar = document.getElementById("dggTbar");

    var clientWidth = document.body.clientWidth;
    var scrollLeft = document.body.scrollLeft;
    
    var dgg_x = clientWidth/2 + scrollLeft - 485;
    var dgg_y = 30;
    var dgg_w = 970;
    var dgg_h = 560;

    if (dggiframe1.style.visibility == "visible") {
        dggiframe1.style.posLeft = dgg_x;
        dggiframe1.style.posTop = dgg_y;
    }

    if (dggiframe2.style.visibility == "visible") {
        dggiframe2.style.width = document.body.clientWidth;
        dggTbar.style.width = document.body.clientWidth;
    }
    
    /*hideDggTab();*/
}

/* DGG Guide Bar View */
function viewDggGuide() {   
    /*
    if(jQuery("#dggGuide").css('display') != "none") {
        hideDggGuide();
        return;
    }
    */
    document.getElementById("dggTshopInfo").style.display = "none";
    document.getElementById("dggTLang").style.display = "none";

    var dggiframe1 = document.getElementById("dggiframe1");
    var clientWidth = document.body.clientWidth;
    var scrollLeft = document.body.scrollLeft;
    
    var dgg_x = clientWidth/2 + scrollLeft - 485;
    var dgg_y = 30;
    var dgg_w = 970;
    var dgg_h = 560;
    
    document.getElementById("dggGuide").style.display = "inline";
    
    /* 레이어 정상 노출을 위한 iframe */
    dggiframe1.style.posLeft = dgg_x;
    dggiframe1.style.posTop = dgg_y;
    dggiframe1.style.width = dgg_w;
    dggiframe1.style.height = dgg_h;
    dggiframe1.style.visibility = "visible";

    setDggCookie("dgg_guide", "ON");
}

/* DGG Guide Bar Hide */
function hideDggGuide() {   
    document.getElementById("dggGuide").style.display = "none";
    document.getElementById("dggiframe1").style.visibility = "hidden";
}


/* 회원 로그인, 언어 설정 여부에 따라 회원인증 레이어와 상단 탭바 레이어를 보여줌 */
function viewDggTab(resize) {
    var dggiframe1 = document.getElementById("dggiframe1");
    var dggiframe2 = document.getElementById("dggiframe2");
    var clientWidth = document.body.clientWidth;
    var clientHeight = document.body.clientHeight;
    var scrollLeft = document.body.scrollLeft;
    var scrollTop = document.body.scrollTop;

    var dgg_scroll = 17;
    if (resize == "Y") {
        dgg_scroll = 0;
    }
    
    if (getDggCookie("dgg_language").length != 3) { /* 언어 선택 안했을 경우 기본값 ENG */
        setDggCookie("dgg_language", "ENG");
        setDggCookie("dgg_default_language", "Y");
        dgg_language = getDggCookie("dgg_language");
    }
    
    var dgg_postid = getDggCookie("dgg_postid");
    var dgg_language = getDggCookie("dgg_language");
    var dgg_tab = getDggCookie("dgg_tab");
    var dgg_guide = getDggCookie("dgg_guide");
    
    if (dgg_postid == "" && dgg_guide != "OFF") {  /* 가이드 아이프레임 */
        viewDggGuide();
    }
   
    /* 상단 바 레이어 & 아이프레임 */
    var dgg_x2 = 0;
    var dgg_y2 = 0;
    var dgg_w2 = clientWidth;
    var dgg_h2 = 30;

    document.getElementById("dggTbar").style.display = "inline";
    document.getElementById("dggTbar").style.width = dgg_w2 - dgg_scroll;
    
    if (dggiframe2)
    {
        dggiframe2.style.posLeft = dgg_x2;
        dggiframe2.style.posTop = dgg_y2;
        dggiframe2.style.width = dgg_w2 - dgg_scroll;
        dggiframe2.style.height = dgg_h2;
        dggiframe2.style.visibility = "visible";
    }

    document.getElementById("dggHide").style.display = "none";

    setDggCookie("dgg_tab", "ON");
}


/* 미니바 열기 */
function viewDggMini(bar_position, bar_margin) {
    if (!bar_position) {
        bar_position = "left";
    }

    if (!bar_margin) {
        bar_margin = 0;
    }
    
    document.getElementById("dggHide").style.display = "inline";

    if (bar_position == "R") {
        document.getElementById("dggHide").style.right = bar_margin + 9 + "px";
    } else {
        document.getElementById("dggHide").style.left = bar_margin + "px";
    }
}


/* 미니바 닫기 */
function hideDggMini() {
    document.getElementById("dggHide").style.display = "hidden"; 
}


/* 레이어 닫기 */
function hideDggTab(name, bar_position, bar_margin) {
    var dgg_postid = getDggCookie("dgg_postid");
    var dgg_language = getDggCookie("dgg_language");

    if (!bar_position) {
        bar_position = "L";
    }

    if (!bar_margin) {
        bar_margin = 0;
    }

    /* 가이드 레이어 무조건 닫기 */
    document.getElementById("dggGuide").style.display = "none";
    document.getElementById("dggiframe1").style.visibility = "hidden";
    
    if (name == "dggGuide") {
        setDggCookie("dgg_guide", "OFF");
    }

    if (name == "dggTbar") {
    
        /* 레이어 닫을 때 언어설정 레이어 노출 상태일 경우 같이 닫아주기 */
        if(document.getElementById("dggTshopInfo") != undefined) {
            document.getElementById("dggTshopInfo").style.display = "none";
            /*
            document.getElementById("dggiframe3").style.visibility = "hidden";
            */
        }

        if(document.getElementById("dggTLang") != undefined) {
            document.getElementById("dggTLang").style.display = "none";
            /*
            document.getElementById("dggiframe3").style.visibility = "hidden";
            */
        }

        document.getElementById(name).style.display = "none";
        
        if (document.getElementById("dggiframe2")) {
            document.getElementById("dggiframe2").style.visibility = "hidden";
        }
        
        viewDggMini(bar_position, bar_margin);
        setDggCookie("dgg_tab", "OFF");
    }
}


/* 언어설정 히든레이어 체크 */
function setLanguageCheck(language) {
    switch (language) {
        case "ENG" :
            document.getElementById("lang_eng").checked = true;
            break;

        case "JPN" :
            document.getElementById("lang_jpn").checked = true;
            break;

        case "CHN" :
            document.getElementById("lang_chn").checked = true;
            break;

        case "KOR" :
            document.getElementById("lang_kor").checked = true;
            break;
    }
}


/* 레이어 언어별 이미지 */
function setLayerImage(view) {
   
    var _dgg_language = getDggCookie('dgg_language').toLowerCase();
    
    /* 이미지 엑박 방지 */
    if(_dgg_language.length == 0) {
        return;
    }

    /* 
    탭바
    document.getElementById("tbar_language").innerHTML = "<img src='/images/dgg/dgg_tbar_language_" + _dgg_language + ".gif'>";
    document.getElementById("tbar_postbox").innerHTML = "<img src='/images/dgg/dgg_tbar_postbox_" + _dgg_language + ".gif'>";
    document.getElementById("tbar_cart").innerHTML = "<img src='/images/dgg/dgg_tbar_cart_" + _dgg_language + ".gif'>";
    */
    
    /* 가이드 */
    document.getElementById("guide_title").innerHTML = "<img src='/images/dgg/dgg_purchguide_tit_"+ _dgg_language +".gif'>"; 
    document.getElementById("guide_step").innerHTML = "<img src='/images/dgg/dgg_guide_step_"+ _dgg_language +".gif'>"; 
    //document.getElementById("guide_go").innerHTML = "<img src='/images/dgg/dgg_guide_go_"+ _dgg_language +".gif'><img src='/images/dgg/dgg_btn_h15_go.gif'>"; 
    document.getElementById("guide_lang").innerHTML = "<img src='/images/dgg/dgg_guide_lang_"+ _dgg_language +".gif'>";

    var param = "dgg_bar_ajax=Y";
    jQuery.ajax({
        url:'/html/okdgg_tab.inc.html',
        type : 'post',
        data : param,
        success : function(req) {
            /* DGG Bar */
            document.getElementById("dggTbar").innerHTML = req;
            
            /*
            Click Here
            document.getElementById("dggHide").innerHTML = "<img src='/images/dgg/dgg_click_here_"+ _dgg_language +".gif'>";
            */
        }
    });
    /*
    new Ajax.Request('/html/dgg_tab.inc.html', {
        method : 'post',
        asynchronous : false,
        parameters : param,
        onSuccess : function(req) {
            document.getElementById("dggTbar").innerHTML = req.responseText;
            
            
            document.getElementById("tbar_clickhere").innerHTML = "<img src='/images/dgg/dgg_click_here_"+ _dgg_language +".gif'>";
        }
    });
    */

}


/* 쿠키 생성 */
function setDggCookie(name, value, windowMode) {
	var nowDate = new Date();
	var expireday = 1;
	nowDate.setDate(nowDate.getDate() + expireday);
    /*
	document.cookie = name + "=" + escape(value) + "; path=/; expires=" + nowDate.toGMTString() + ";"
    */
	document.cookie = name + "=" + escape(value) + "; path=/;";

    if(name=="dgg_language" && value!="KOR"){
        if(value=="ENG") value="en";
        else if(value=="CHN") value="zh-CN";
        else if(value=="JPN") value="ja";

        document.cookie = "googtrans=/ko/" + escape(value) + "; path=/;";
    }

    if (windowMode == "") {
        windowMode = "none";
    }
    
    /* 언어 설정 쿠키 생성일 경우 히든레이어 라디오버튼 체크 */
    if (name == "dgg_language" && windowMode == "none") {
        setLanguageCheck(value);
    }

    if (name == 'dgg_language') {
        delDggCookie('dgg_default_language');
    }
    
    /* 가이드 레이어일 경우 레이어 이미지 변경 */
    if (windowMode == "GUIDE" || windowMode == "LANGUAGE") {
        setLayerImage();
        if(document.getElementById("dggTLang") != undefined) {
            document.getElementById("dggTLang").style.display = "none";
        }
    }
}


/* 쿠키 삭제 */
function delDggCookie(name) {
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = name + "=; path=/; expires=" + expireDate.toGMTString() + ";";
}


/* 쿠키 전체 삭제 */
function clearAllCookie() {
    var cookie = document.cookie.split(";");
    var total = cookie.length;

    for (i = 0; i < total; i++) {
        name = cookie[i].substring(0, cookie[i].indexOf("="));
        delDggCookie(name);
    }

    location.reload();
}


/* 쿠키값 체크 */
function getDggCookie(name) {
    var dggFound = false;
    var dggStart, dggEnd;
    var d = 0;
    while (d <= document.cookie.length) {
        dggStart = d;
        dggEnd = dggStart + name.length;
        if (document.cookie.substring(dggStart, dggEnd) == name) {
            dggFound = true;
            break;
        }
        d++;
    }

    if (dggFound == true) {
        dggStart = dggEnd + 1;
        dggEnd = document.cookie.indexOf(";", dggStart);
        if (dggEnd < dggStart) {
            dggEnd = document.cookie.length;
        }
        return document.cookie.substring(dggStart, dggEnd);
    }
    return "";
}


/* 회원 신규 가입 */
function dggJoin() {
    frm = document.dgg_join;

    if (document.getElementById("email").value.length == 0) {
        alert("Please enter your email address.");
        document.getElementById("email").focus();
        return;
    }

    if (document.getElementById("eng_name").value.length == 0) {
        alert("Please enter your name");
        document.getElementById("eng_name").focus();
        return;
    }
    
    if (document.getElementById("password1").value.length == 0) {
        alert("Please enter your password.");
        document.getElementById("password1").focus();
        return;
    }
    
    if (document.getElementById("password2").value.length == 0) {
        alert("Please re-enter your password to confirm.");
        document.getElementById("password2").focus();
        return;
    }

    if (document.getElementById("password1").value != document.getElementById("password2").value) {
        alert("Password does not match. Please check again.");
        document.getElementById("password1").value = "";
        document.getElementById("password2").value = "";
        document.getElementById("password1").focus();
        return;
    }

    var url = "/shop/dgg_pbox_info.action.html";
    var params = "";
    params += "mode=dgg_join";
    params += "&eng_name=" + document.getElementById("eng_name").value;
    params += "&email=" + document.getElementById("email").value;
    params += "&language=" + document.getElementById("language").value;
    params += "&password=" + document.getElementById("password1").value;
    
    var myAjax = new Ajax.Request (
            url, {
                method : "POST",
                parameters : params,
                onComplete : return_join
            });
}


/* 회원 가입 결과 */
function return_join(req) {
    var resultObj = eval("(" + req.responseText + ")");
    var dgg_language;

    if (resultObj.result == "SUCCESS") {
        switch (resultObj.dgg_language) {
            case "ENG" :
                dgg_language = "English";
                break;

            case "CHN" :
                dgg_language = "中國語";
                break;

            case "JPN" :
                dgg_language = "日本語";
                break;

            case "KOR" :
                dgg_language = "한국어";
                break;
        }

        document.getElementById("dgg_postid").innerHTML = resultObj.dgg_postid;
        document.getElementById("dgg_email").innerHTML = resultObj.dgg_email;
        document.getElementById("dgg_language").innerHTML = dgg_language;
        document.getElementById("dgg_name").innerHTML = resultObj.dgg_name;
        
        document.getElementById("pbox-result").style.display = "block";
        document.getElementById("pbox-join").style.display = "none";    
        opener.setLayerImage();
    } else {
        alert("OKVIT center has failed to generate a DGG mailbox P.O. Please try again.");
    }
}


/* 엔터 체크 */
/* html/shop/dgg_login.html ->>>
function dgg_CheckKey_log() {
}*/


/* 회원 로그인 */
function dggLogin() {
    if (document.getElementById("post_id").value.length == 0) {
        alert("Please enter your registered E-mail address.");
        document.getElementById("post_id").focus();
        return;
    }

    if (document.getElementById("password").value.length == 0) {
        alert("Please enter your password.");
        document.getElementById("password").focus();
        return;
    }
	
	var id_check = document.getElementsByName("remember_id");
	var check_val = '0';

	if ( id_check[0].checked ) {
		check_val = id_check[0].value;
	} else {
		check_val = '0';
	}

    var url = "/shop/dgg_pbox_info.action.html";
    var params = "";
    params += "mode=dgg_login";
    params += "&post_id=" + document.getElementById("post_id").value;
    params += "&password=" + document.getElementById("password").value;
	params += "&remember_id=" + check_val;

    var myAjax = new Ajax.Request (
            url, {
                method : "POST",
                parameters : params,
                onComplete : return_login
            });
}


/* 로그인 결과 */
function return_login(req) {
    var resultObj = eval("(" + req.responseText + ")");

    if (resultObj.result == "SUCCESS") {
        setDggCookie("dgg_postid", resultObj.dgg_postid);
        setDggCookie("dgg_userinfo", resultObj.dgg_userinfo);

        if (document.getElementById("orderpay") && document.getElementById("orderpay").value == 'Y') {
			window.location.reload();
			window.opener.location.reload();
		} else {
			window.opener.location.reload();
			window.close();
		}
    } else {
        alert("Login failed. Please try again.");
    }
}

function dgg_logout() {
    setDggCookie("dgg_postid", "");
    setDggCookie("dgg_userinfo", "");

    window.location.reload();
}


/* 회원 정보 수정 */
function dggUserinfo() {
    if (document.getElementById("name").value.length == 0) {
        alert("Please enter your name");
        document.getElementById("name").focus();
        return;
    }

    var url = "/shop/dgg_pbox_info.action.html";
    var params = "";
    params += "mode=dgg_userinfo";
    params += "&post_id=" + document.getElementById("post_id").value;
    params += "&email=" + document.getElementById("email").value;
    params += "&language=" + document.getElementById("language").value;
    params += "&name=" + document.getElementById("name").value;

    var myAjax = new Ajax.Request (
            url, {
                method : "POST",
                parameters : params,
                onComplete : return_userinfo
            });
}


/* 회원 정보 수정 결과 */
function return_userinfo(req) {
    var resultObj = eval("(" + req.responseText + ")");

    if (resultObj.result == "SUCCESS") {
        setDggCookie("dgg_userinfo", resultObj.dgg_userinfo);

        alert("Your profile has been modified.");
        window.opener.location.reload();
        window.close();
    } else {
        alert("Failed to modify your personal information. Please try again.");
    }
}


/* 사서함 번호 찾기 */
function dgg_find_postid() {
    if (document.getElementById("email").value.length == 0) {
        alert("Please enter your email address");
        document.getElementById("email").focus();
        return;
    }

    var url = "/shop/dgg_pbox_info.action.html";
    var params = "";
    params += "mode=dgg_findpostid";
    params += "&email=" + document.getElementById("email").value;
    params += "&language=" + document.getElementById("language_pw").value;

    var myAjax = new Ajax.Request (
            url, {
                method : "POST",
                parameters : params,
                onComplete : return_findpost
            });
}


/* 사서함 번호 찾기 결과 */
function return_findpost(req) {
    var resultObj = eval("(" + req.responseText + ")");

    if (resultObj.result == "SUCCESS") {
        alert("To your registered e-mail address, OKVIT center has sent a DGG mailbox P.O. Please check your email.");
        window.close();
    } else {
        alert("Your request was not completed. Please try again.");
    }
}


/* 비밀번호 초기화 */
function dgg_reset_password() {
    if (document.getElementById("post_id_pw").value.length == 0) {
        alert("Please enter your OKVIT P.O.");
        document.getElementById("post_id_pw").focus();
        return;
    }
    
    if (document.getElementById("email_pw").value.length == 0) {
        alert("Please enter your email address");
        document.getElementById("email_pw").focus();
        return;
    }

    var url = "/shop/dgg_pbox_info.action.html";
    var params = "";
    params += "mode=dgg_resetpassword";
    params += "&post_id=" + document.getElementById("post_id_pw").value;
    params += "&email=" + document.getElementById("email_pw").value;
    params += "&language=" + document.getElementById("language_pw").value;
    
    var myAjax = new Ajax.Request (
            url, {
                method : "POST",
                parameters : params,
                onComplete : return_resetpassword
            });
}


/* 비밀번호 초기화 결과 */
function return_resetpassword (req) {
    var resultObj = eval("(" + req.responseText + ")");
 
    if (resultObj.result == "SUCCESS") {
        alert("OKVIT center has sent an e-mail through which you can set up a new password  Please check your e-mail.");
        window.close();
    } else {
        alert("Your request was not completed. Please try again.");    
    }
}


/* 마우스 클릭 위치 찾기 */
function abspos(e) {
    this.x = e.clientX + (document.documentElement.scrollLeft ? document.documentElement.scrollLeft : document.body.scrollLeft);
    this.y = e.clientY + (document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop);

    return this;
}


/* 마우스 클릭한 위치에 레이어 띄우기 */
function itemClick(name, e, viewMode) {
    var dgg_obj = document.getElementById(name);

    hideDggGuide();
    if (name == "dggTLang") {
        document.getElementById("dggTshopInfo").style.display = "none";
        /*
        document.getElementById("dggiframe3").style.visibility = "visible";
        document.getElementById("dggiframe3").style.width = "125px";
        document.getElementById("dggiframe3").style.height = "130px";
        */
    } else {
        document.getElementById("dggTLang").style.display = "none";
        /*
        document.getElementById("dggiframe3").style.visibility = "visible";
        document.getElementById("dggiframe3").style.width = "420px";
        document.getElementById("dggiframe3").style.height = "110px";
        */
    }
    if (dgg_obj.style.display == "block") { 
        dgg_obj.style.display = "none";
        /*
        document.getElementById("dggiframe3").style.visibility = "hidden";
        */
    } else {
        dgg_obj.style.display = "block";
        /*
        document.getElementById("dggiframe3").style.visibility = "visible";
        */
    }
    return;
    
    if (!e) {
        e = window.Event;
    }

    var dgg_pos = abspos(e);

    if (viewMode.length == 0) {
        if (dgg_obj.style.display == "block") { 
            dgg_obj.style.display = "none";
        } else {
            dgg_obj.style.position = "absolute";
            dgg_obj.style.display = "block";
        }

        if (name == "dggTLang") {
            var lang = getDggCookie("dgg_language");
            setLanguageCheck(lang);
        }
    } else {
        dgg_obj.style.position = "absolute";
        dgg_obj.style.display = viewMode;
    }
    
    dgg_obj.style.Left = dgg_pos.x + "px";
    dgg_obj.style.Top = (dgg_pos.y + 10) + "px";
}


/* 팝업열기 */
function openWindow(src, name, width, height, scrollbars, option, endaction) {
    /*
    팝업열때 언어설정 레이어 노출 상태일 경우 같이 닫아주기
    hideDggGuide();
    document.getElementById("dggTshopInfo").style.display   = "none";
    document.getElementById("dggTLang").style.display       = "none";
    */
    var _x = document.body.clientWidth/2 + document.body.scrollLeft - (width / 2);
    var _y = document.body.clientHeight/2 + document.body.scrollTop - (height / 2);
    
    var pop = window.open(src, name, "width=" + width + ", height=" + height + ", left=" + _x + ", top=" + _y + ", scrollbars=" + scrollbars + option);
    pop.focus();

    if (endaction == "close") {
        window.close();
    }
}


/* 페이지 이동 */
function go_url(page_url) {
   location.href = page_url;
}


/* EMS 배송 조회 */
function openEMS(delivery_id) {
    var frm = document.order_form;

    openWindow("about:blank", "dggEms", "800", "600", "yes", "", "none");
    
    document.getElementById("POST_CODE").value = delivery_id;
    frm.action = "http://service.epost.go.kr/trace.RetrieveEmsTraceEng.postal";
    frm.target = "dggEms";
    frm.submit();
}


/* 주문 배송지 수정 레이어 보기 */
function view_modify_address() {
    if (document.getElementById("addr-modify").style.display == "block") {
        document.getElementById("addr-modify").style.display = "none";
    } else {
        document.getElementById("addr-modify").style.display = "block";
    }
}


/* 주문 배송지 수정 */
function modify_address() {
    if (document.getElementById("delivery_name").value.length == 0) {
        alert("Please enter your name");
        document.getElementById("delivery_name").focus();
        return;
    }
    
    if (document.getElementById("delivery_tel1").value.length == 0) {
        alert("Enter your phone number.");
        document.getElementById("delivery_tel1").focus();
        return;
    }
    
    if (document.getElementById("delivery_tel2").value.length == 0) {
        alert("Enter your phone number.");
        document.getElementById("delivery_tel2").focus();
        return;
    }
    
    if (document.getElementById("delivery_tel3").value.length == 0) {
        alert("Enter your phone number.");
        document.getElementById("delivery_tel3").focus();
        return;
    }
    
    if (document.getElementById("delivery_address1").value.length == 0) {
        alert("Enter address.");
        document.getElementById("delivery_address1").focus();
        return;
    }
    
    if (document.getElementById("delivery_address3").value.length == 0) {
        alert("Please enter a city.");
        document.getElementById("delivery_address3").focus();
        return;
    }
    
    if (document.getElementById("delivery_address4").value.length == 0) {
        alert("Please enter a state");
        document.getElementById("delivery_address4").focus();
        return;
    }
    
    if (document.getElementById("delivery_zip").value.length == 0) {
        alert("Please enter a zip code.");
        document.getElementById("delivery_zip").focus();
        return;
    }
    
    var url = "/shop/dgg_order_view.action.html";
    var params = "";
    params += "mode=modify_address";
    params += "&delivery_name=" + document.getElementById("delivery_name").value;
    params += "&delivery_tel=" + document.getElementById("delivery_tel1").value + "-" + document.getElementById("delivery_tel2").value + "-" + document.getElementById("delivery_tel3").value;
    params += "&delivery_address1=" + document.getElementById("delivery_address1").value;
    /*
    params += "&delivery_address2=" + document.getElementById("delivery_address2").value;
    */
    params += "&delivery_address3=" + document.getElementById("delivery_address3").value;
    params += "&delivery_address4=" + document.getElementById("delivery_address4").value;
    params += "&delivery_zip=" + document.getElementById("delivery_zip").value;
    params += "&delivery_country=" + document.getElementById("delivery_country").value;
    params += "&shop_order_num=" + document.getElementById("orders_no").value;
    params += "&member_id=" + document.getElementById("member_id").value;
    params += "&delivery_htel=" + document.getElementById("delivery_htel").value;
    params += "&goods_etc2=" + document.getElementById("goods_etc2").value;
    params += "&shop_url=" + document.getElementById("shop_url").value;
    params += "&order_tracking_company=" + document.getElementById("order_tracking_company").value;
    params += "&order_tracking_number=" + document.getElementById("order_tracking_number").value;
    params += "&tax_price=" + document.getElementById("tax_price").value;
    params += "&shipping_price=" + document.getElementById("shipping_price").value;
    params += "&discount_price=" + document.getElementById("discount_price").value;
    params += "&tmp_data1=" + document.getElementById("tmp_data1").value;

    var myAjax = new Ajax.Request (
            url, {
                method : "POST",
                parameters : params,
                onComplete : return_ordermodify
            });
}


/* 배송지 수정 결과 */
function return_ordermodify(req) {
    var resultObj = eval("(" + req.responseText + ")");

    if (resultObj.result == "SUCCESS") {
        alert("Your shipping address is modified.");
    } else {
        alert("Your request was not completed. Please try again.");
    }
}


/* 주문 취소 confirm */
function dgg_order_cancel() {
    if (confirm("'[" + document.getElementById("orders_no").value + "]" + document.getElementById("goods_name").value + "' Do you want to cancel your order? / Cancellation cannot be reserved.")) {
        if (document.getElementById("cancel_text").value.length < 1) {
            alert("Must to be a certified member.");
            return;
        }

        var url = "/shop/dgg_order_view.action.html";
        var params = "";
        params += "mode=order_cancel";
        params += "&member_id=" + document.getElementById("member_id").value;
        params += "&shop_order_num=" + document.getElementById("orders_no").value;
        params += "&shop_email=" + document.getElementById("shop_email").value;
        params += "&cancel_text=" + document.getElementById("cancel_text").value;

        var myAjax = new Ajax.Request (
                url, {
                    method : "POST",
                    parameters : params,
                    onComplete : return_ordercancel
                });
    }
}


/* 주문 취소 결과 */
function return_ordercancel(req) {
    var resultObj = eval("(" + req.responseText + ")");

    if (resultObj.result == "SUCCESS") {
        alert("Your order is cancelled.");
        location.href = "dgg_order_history.html";
    } else {
        if (resultObj.code == "NO_DATA") {
            alert("There is no order. Please try again.");
        } else {
            alert("Your request was not completed. Please try again.");
        }
    }
}


/* 숫자만 입력받기 */
function only_number() {
    var key = event.keyCode;
    var messageArea = document.getElementById("ssnMessage");

    if (!(key == 8 || key == 9 || key == 13 || key == 46 || key == 144 || (key >= 48 && key <= 57) || (key >=  96 && key <= 105) || key == 110 || key == 190)) {
        alert("Please enter telephone number with only numbers.");
        event.returnValue = false;
    }
}

/* 미니바 고정 */
function dgg_initfix(target, position) {
    if (!target)
        return false;

    var dgg_obj = target;

    dgg_obj.style.position = "absolute";
    dgg_obj.style.top = position;
}

/* 움직이는 dgg bar */
function dgg_initMoving(target, position, topLimit, btmLimit) {
    if (!target)
        return false;

    var dgg_obj = target;
    dgg_obj.initTop = position;
    dgg_obj.topLimit = topLimit;
    dgg_obj.bottomLimit = Math.max(document.documentElement.scrollHeight, document.body.scrollHeight) - btmLimit - dgg_obj.offsetHeight;

    dgg_obj.style.position = "absolute";
    dgg_obj.top = dgg_obj.initTop;
    dgg_obj.left = dgg_obj.initLeft;

    if (typeof(window.pageYOffset) == "number") {   /* WebKit */
        dgg_obj.getTop = function() {
            return window.pageYOffset;
        }
    } else if (typeof(document.documentElement.scrollTop) == "number") {
        dgg_obj.getTop = function() {
            return Math.max(document.documentElement.scrollTop, document.body.scrollTop);
        }
    } else {
        dgg_obj.getTop = function() {
            return 0;
        }
    }

    if (self.innerHeight) { /* WebKit */
        dgg_obj.getHeight = function() {
            return self.innerHeight;
        }
    } else if(document.documentElement.clientHeight) {
        dgg_obj.getHeight = function() {
            return document.documentElement.clientHeight;
        }
    } else {
        dgg_obj.getHeight = function() {
            return 500;
        }
    }

    dgg_obj.move = setInterval(function() {
        var dgg_pos = dgg_obj.getTop() + dgg_obj.initTop;
        /*
        if (dgg_obj.initTop > 0) {
            dgg_pos = dgg_obj.getTop() + dgg_obj.initTop;
        } else {
            dgg_pos = dgg_obj.getTop() + dgg_obj.getHeight() + dgg_obj.initTop;
        }
        */

        if (dgg_pos > dgg_obj.bottomLimit)
            dgg_pos = dgg_obj.bottomLimit;
        if (dgg_pos < dgg_obj.topLimit)
            dgg_pos = dgg_obj.topLimit;

        var dgg_interval = dgg_obj.top - dgg_pos;
        dgg_obj.top = dgg_obj.top - dgg_interval / 3;
        dgg_obj.style.top = dgg_obj.top + "px";
    }, 30)
}

function CheckKey_log(e) {
    e = e || window.event;
    key = e.keyCode;
    if (key == 13) {
        dggLogin()
    }
}
</script>
            <script type="text/javascript" src="/js/jquery.js"></script>
            <!--<script>jQuery.noConflict();</script>-->        <link rel="stylesheet" href="/css/okdgg_layer.css" type="text/css">
        
    
        <!-- 상단 hide layer -->
    <div id="dggHide" class="dgg-w mini-theme-type4" style="display: inline; right: 9px; position: absolute; top: 0px;">
        <span class="bg-wp">
            <span class="bg-w">
                <!--a href="#none" class="kor" onclick="viewDggTab('Y'); setDggCookie('dgg_language', 'KOR', 'LANGUAGE');"><span>Korea</span></a-->
                <a href="#none" class="usa" onclick="viewDggTab('Y'); setDggCookie('dgg_language', 'ENG', 'LANGUAGE');"><span>USA</span></a>
                <a href="#none" class="jp" onclick="viewDggTab('Y'); setDggCookie('dgg_language', 'JPN', 'LANGUAGE');"><span>Japen</span></a>
                <a href="#none" class="cn" onclick="viewDggTab('Y'); setDggCookie('dgg_language', 'CHN', 'LANGUAGE');"><span>China</span></a>
            </span>
        </span>
    </div><!-- #dggHide -->
    <!-- //상단 hide layer -->
        <!-- 해외 구매자를 위한 안내 -->
    <div id="dggGuide" class="dgg-w dgg-blayer" style="top: 30px; position: absolute;">
        <div class="hd">
            <div class="tit"><div id="guide_title"><img src="/images/dgg/dgg_purchguide_tit_eng.gif" alt=""></div></div>
            <dl class="lang">
                <dt><span id="guide_lang"><img src="/images/dgg/dgg_guide_lang_eng.gif" alt=""></span></dt>
                <dd>
                    <ul>
                        <!--li><a href="javascript:setDggCookie('dgg_language', 'KOR', 'GUIDE');"><img src="/images/dgg/dgg_purchguide_lang_kor.gif" alt="korean" /></a></li-->
                        <li><a href="javascript:setDggCookie('dgg_language', 'ENG', 'GUIDE');"><img src="/images/dgg/dgg_purchguide_lang_eng.gif" alt="english"></a></li>
                        <li><a href="javascript:setDggCookie('dgg_language', 'CHN', 'GUIDE');"><img src="/images/dgg/dgg_purchguide_lang_china.gif" alt="chinese"></a></li>
                        <li><a href="javascript:setDggCookie('dgg_language', 'JPN', 'GUIDE');"><img src="/images/dgg/dgg_purchguide_lang_jp.gif" alt="Japanese"></a></li>
                    </ul>
                </dd>
            </dl>
            <a class="close-layer" href="javascript:hideDggTab('dggGuide', 'R', 0);">close</a>
        </div>
        <div class="lcont">
            <div class="tmsg-w">
                <div id="guide_step"><img src="/images/dgg/dgg_guide_step_eng.gif" alt=""></div>
            </div>
        </div><!-- .lcont -->
    </div><!-- #dggGuide -->
    <!-- //해외 구매자를 위한 안내 -->
        <!-- 레이어 처리를 위한 iframe -->
    <iframe id="dggiframe1" name="dggiframe1" src="about:blank" frameborder="0" scrolling="no" style="left:0px; top:0px; width:0; height: 0; position:absolute; visibility:hidden"></iframe>
    <iframe id="dggiframe2" name="dggiframe2" src="about:blank" frameborder="0" scrolling="no" style="left:0px; top:0px; width:0; height: 0; position:absolute; visibility:hidden"></iframe>
    <iframe id="dggiframe3" name="dggiframe3" src="about:blank" frameborder="0" scrolling="no" style="left:0px; top:0px; width:0px; height: 0px; position:absolute; visibility:hidden"></iframe>
    <!-- //레이어 처리를 위한 iframe -->
    <!-- 상단 bar -->
    <div id="dggTbar" class="dgg-w lang-jp theme-type3" style="display: none; position: absolute; top: 0px;">
            <!--
        width값은 상점의 가로 넓이
    -->
    <div class="cont-w" style="width: 1004px;">
        <div class="cont cont-l">
            <span class="bi" onclick="viewDggGuide();"></span>
            <dl class="shop-box">
                <dt>shopinfo</dt>
                <dd class="info">
                    <!--<span class="name-ellipsis">with wherehouse</span>-->
                    <!--<a href="javascript:itemClick('dggTshopInfo', event, '');"><img src="/images/dgg/dgg_bar_shopinfo_type3.png" alt="shopinfo" /></a>-->
                        <!-- 레이어 - 상점 정보 -->
    <div id="dggTshopInfo" class="dgg-w">
        <div class="lcont">
            <span class="logo"><img src="/images/dgg/dgg_shopinfo_eng.gif" alt=""></span>
            <dl class="name">
                <dt><img src="/images/dgg/dgg_shopinfo_name_eng.gif" alt=""></dt>
                <dd> : <span class="name-ellipsis">wherehouse</span></dd>
                <dd class="dsc">
                    
                </dd>
            </dl>
            <dl class="cs">
                <dt><img src="/images/dgg/dgg_shopinfo_phone_eng.gif" alt=""></dt>
                <dd> : 82-2-544-1793</dd>
            </dl>
            <dl class="email">
                <dt><img src="/images/dgg/dgg_shopinfo_email_eng.gif" alt=""></dt>
                <dd> : <a href="mailto:sales@wherehouse.co.kr">sales@wherehouse.co.kr</a></dd>
            </dl>
        </div>
        <a class="hide-info" href="javascript:itemClick('dggTshopInfo', event, 'none');"><img src="/images/dgg/dgg_lang_close.gif" alt="close"></a>
    </div><!-- #dggTshopInfo -->
    <!-- //레이어 - 상점 정보 -->
                </dd>
                <dd class="url">
                    www.espionage.co.kr
                </dd>
            </dl>
        </div>
        <div class="cont cont-r">
                    <ul class="link">
            <li class="first"><a href="javascript:itemClick('dggTLang', event, '');"><span id="tbar_language"><img src="/images/dgg/okdgg_tbar_language_eng.gif" alt=""></span></a></li>
			
        </ul>
                <!-- 레이어 - 언어설정 -->
    <div id="dggTLang" class="dgg-w">
        <div class="lcont">
            <span class="tit">언어설정</span>
            <ul>
                <li><label><input type="radio" name="dgg_language" value="ENG" id="lang_eng" class="chk-rdo" checked="" onclick="setDggCookie('dgg_language', 'ENG', 'LANGUAGE');"> <img src="/images/dgg/dgg_lang_choice_eng.gif" alt=""></label></li>
                <li><label><input type="radio" name="dgg_language" value="JPN" id="lang_jpn" class="chk-rdo" onclick="setDggCookie('dgg_language', 'JPN', 'LANGUAGE');"> <img src="/images/dgg/dgg_lang_choice_jpn.gif" alt=""></label></li>
                <li><label><input type="radio" name="dgg_language" value="CHN" id="lang_chn" class="chk-rdo" onclick="setDggCookie('dgg_language', 'CHN', 'LANGUAGE');"> <img src="/images/dgg/dgg_lang_choice_chn.gif" alt=""></label></li>
                <!--li><label><input type="radio" name="dgg_language" value="KOR" id="lang_kor" class="chk-rdo"  onclick="setDggCookie('dgg_language', 'KOR', 'LANGUAGE');" /> <img src="/images/dgg/dgg_lang_choice_kor.gif" alt="" /></label></li-->
            </ul>
        </div>
        <a class="hide-lang" href="javascript:itemClick('dggTLang', event, 'none');"><img src="/images/dgg/dgg_lang_close.gif" alt="close"></a>
    </div><!-- #dggTLang -->
    <!-- // 레이어 - 언어설정 -->
        </div>
    </div><!-- .cont-w -->
    <a class="hide-tbar" href="javascript:hideDggTab('dggTbar',  'R', 0);" onfocus="this.blur();"><img src="/images/dgg/dgg_bar_close_type3.gif" style="vertical-align:middle;"></a>
    <!---->
    </div><!-- #dggTbar -->
    <!-- //상단bar --><input type="hidden" name="btn_type_js" value="9_col1" id="btn_type_js">
<script>
    var dgg_tab = getDggCookie("dgg_tab");

    var dgg_move = 'A';
    
    // 브라우져 언어 가져오기 
    function get_browser_language() {
        var lang;
        if (typeof navigator.userLanguage != "undefined") {
            lang = navigator.userLanguage;
        } else if (typeof navigator.language != "undefined") {
            lang = navigator.language;
        }
        lang = lang.substring(0,2);
        return lang;
    }
        
        if (dgg_tab == "ON") {
        viewDggTab("Y");
    } else {
        viewDggMini("R", 0);
    }
    if (dgg_move == "B") {
        dgg_initMoving(document.getElementById("dggTbar"), 0, 0, 0);
        dgg_initMoving(document.getElementById("dggiframe2"), 0, 0, 0);
        dgg_initMoving(document.getElementById("dggGuide"), 30, 0, 0);
        dgg_initMoving(document.getElementById("dggiframe1"), 30, 0, 0);
        dgg_initMoving(document.getElementById("dggHide"), 0, 0, 0);
        dgg_initMoving(document.getElementById("dggiframe3"), 0, 0, 0);
    } else if (dgg_move == "A") {
        dgg_initfix(document.getElementById("dggTbar"), 0);
        dgg_initfix(document.getElementById("dggiframe2"), 0);
        dgg_initfix(document.getElementById("dggGuide"), 30);
        dgg_initfix(document.getElementById("dggiframe1"), 30);
        dgg_initfix(document.getElementById("dggHide"), 0);
        dgg_initfix(document.getElementById("dggiframe3"), 0);
    }

    //window.onresize = dgg_resize;
    if( window.addEventListener ) {
        window.addEventListener("resize",function() {
            dgg_resize();
        },false);
    } else if( document.addEventListener ) {
        document.addEventListener("resize",function() {
            dgg_resize();
        },false);
    } else if( window.attachEvent ) {
        window.attachEvent("onresize",function() {
            dgg_resize();
        });
    }
</script><script type="text/javascript" src="/js/cookie.js"></script>
<script type="text/javascript">
function __mk_open(url, name, option) {
    window.open(url, name, option);
    //return false;
}

function action_invalidity() {
    return false;
}
</script>
<script type="text/javascript"></script><script type="text/javascript"></script>

<!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
    n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.agent='plmakeshop-kr';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
        document,'script','//connect.facebook.net/en_US/fbevents.js');
    fbq('init', '194240801406786', {external_id: 'f5f860ba2fb69775c98bec9d4866f6101a2a98ccc42fa3eb150b7eb7e761657c'}, {'agent':'plmakeshop-kr'});
    fbq('track', 'PageView', {}, {eventID: 'MS_zooyork77_pageview_20210423021319_700033402'});
    // ViewContent
    // Track key page views (ex: product page, landing page or article)
    fbq('track', 'ViewContent', {
        content_ids : ['1000002787'],
        content_type: 'product',
        value       : 36000,
        currency    : 'KRW'
    }, {eventID: 'MS_zooyork77_viewcontent_20210423021319_700033402'});</script>
<!-- End Facebook Pixel Code -->
<script type="text/javascript" src="https://image.makeshop.co.kr/log/js/script.min.js" charset="utf-8"></script>
<script type="text/javascript" src="https://image.makeshop.co.kr/log/js/remind.min.js" charset="utf-8"></script>             <script type="text/javascript" src="/js/jquery.js"></script>
            <script type="text/javascript">
            <!--
                jQuery(document).ready(function() {

                    var rollover_out = '';

                    jQuery('img').hover(function() {
                        rollover_out = jQuery(this).attr('src');

                        if (jQuery(this).attr('rollover_onimg')) {
                            jQuery(this).attr('src', jQuery(this).attr('rollover_onimg'));
                        }
                    }, function() {
                        if (rollover_out && jQuery(this).attr('rollover_onimg')) {
                            jQuery(this).attr('src', rollover_out);
                        }
                    });
                });
            //-->
            </script><script>


function getInternetExplorerVersion() {
    var rv = -1;
    if (navigator.appName == 'Microsoft Internet Explorer') {
    var ua = navigator.userAgent;
    var re = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
    if (re.exec(ua) != null)
    rv = parseFloat(RegExp.$1);
    }
    return rv;
}

function showcherrypickerWindow(height,mode,db){
    cherrypicker_width = document.body.clientWidth;
    var isIe = /*@cc_on!@*/false;
    if (isIe) {
        cherrypicker_width = parseInt(cherrypicker_width + 18);
    }
    setCookie('cherrypicker_view','on', 0);

    
    document.getElementById('cherrypicker_layer').style.display = "block";
    document.getElementById('cherrypicker_layer').innerHTML = Createflash_return(cherrypicker_width,'','/flashskin/CherryPicker.swf?initial_xml=/shopimages/zooyork77/cherrypicker_initial.xml%3Fv=1619154799&product_xml=/shopimages/zooyork77/%3Fv=1619154799', 'cherrypicker_flash', '');
}

function load_cherrypicker(){
    cherrypicker_check = true;

    if (!document.getElementById('cherrypicker_layer')) {
        return;
    }


}
</script>
<script>
var inputs = document.getElementsByTagName("input");
for (x=0; x<=inputs.length; x++) {
    if (inputs[x]) {
        myname = inputs[x].getAttribute("name");
        if(myname == "ssl") {
            inputs[x].checked = 'checked';
        }
    }
}
(function($) {
    $(document).ready(function() {
        jQuery(':checkbox[name=ssl]').click(function() {
            this.checked = true;
        });
    });
})(jQuery);
</script><script type="text/javascript">
if (document.cookie.indexOf("app_agent=power_app") >= 0) {
    
}
</script>
<script type="text/javascript" src="/shopimages/zooyork77/template/work/37329/common.js?r=1616560623"></script>



<div id="ch-plugin"><div id="ch-plugin-core"><style data-styled="active" data-styled-version="5.1.1"></style><style data-styled="active" data-styled-version="5.1.1"></style><div data-ch-testid="full-screen-push-message" hidden="" class="FullScreenPushMessagestyled__Wrapper-nxoc25-9 jNIDNu PushMessagestyled__PCPopupMessage-vqm8p7-1 jEfFDc" style="z-index: 100000000 !important;"><div class="FullScreenPushMessagestyled__MainWrapper-nxoc25-8 fCsTtf"><div class="FullScreenPushMessagestyled__SVGIconWrapper-nxoc25-0 kmAVFX"><div name="cancel" size="16" width="24" height="24" class="SVGIconstyled__SVGIcon-sc-15isf0b-0 cQJNXd"></div></div><div class="FullScreenPushMessagestyled__Header-nxoc25-3 fzszwe"><div size="24" radius="8px" class="Avatarstyled__Avatar-yfy5xq-0 jUtegZ"></div><div class="FullScreenPushMessagestyled__Name-nxoc25-2 fqimYT">(Unknown)</div><div class="FullScreenPushMessagestyled__HeaderContent-nxoc25-1 dVbCKK">9:00 AM</div></div><div class="FullScreenPushMessagestyled__Content-nxoc25-7 Eohuv"><div class="FullScreenPushMessagestyled__Text-nxoc25-4 kOiAv"></div></div></div></div><div data-ch-testid="launcher" class="Launcherstyled__Wrapper-oef45p-0 kyEsUG"><div id="ch-plugin-launcher" width="63.5" height="63.5" class="Launcherstyled__Image-oef45p-4 cLtPpl"><div data-ch-testid="badge" hidden="" class="Badgestyled__Badge-sc-1ztqq4-0 Launcherstyled__Badge-oef45p-5 bZpFRQ">0</div></div></div></div><div id="ch-plugin-script" style="display:none" class="ch-messenger-hidden"><iframe id="ch-plugin-script-iframe" style="position:relative!important;height:100%!important;width:100%!important;border:none!important;"></iframe></div></div><style data-styled="active" data-styled-version="5.1.1"></style></body></html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>