/* 상단 커뮤니티 메뉴 세로 아코디언 */
/*
 (function($) {
			$(function(){

			  $('.mymenu .myopen2').hover(function() {  
				if ($(this).is(':animated')) {
				  $(this).stop().animate({width: "92px"}, 450, "easeOutQuad");
				} else {
				  $(this).stop().animate({width: "308px"}, 450, "easeOutQuad");
				} 
			  }, function () {
				if ($(this).is(':animated')) {
				  $(this).stop().animate({width: "92px"}, 450, "easeInOutQuad")
				} else {
				  $(this).stop(':animated').animate({width: "92px"}, 450, "easeInOutQuad");
				}
			  });

			});


 })(jQuery);
*/

/* 상단 커뮤니티 메뉴 타이틀 활성화시 스타일값 */
/*
$(function(){

$("li.myopen2").hover(function(){
$(this).find("h4 a").css("color","#000");
$(this).find("h4 a").css("background","#fff");

},function(){
$(this).find("h4 a").css("color","#bdbdbd");
$(this).find("h4 a").css("background","#000");
});

});
*/



/* 이미지 롤오버시 숨겨져 있던 다른 이미지 함께 노출 (상단 마이페이지) */
/*
(function($) {
$(function(){


// 카테고리 중분류 출력

$("li.myopen").hover(function(){
$(this).find("> div").show();

},function(){
$(this).find("> div").hide();
});


});
 })(jQuery);
*/





/* 부드럽게 롤오버 */
/*
 (function($) {
	$(document).ready(function(){
		//$(".commu li span").css("display","none");
		$("#logo div").hover(function(){
			$("span",this).fadeIn(200);
			},function(){
			$("span",this).fadeOut(200);			
			});
	});
 })(jQuery);
*/






/* 메인 상단 배너 텍스트 슬라이드 */

 (function($) {



	$(document).ready(function(){

	$(".bn_mains li ul").hide();

		/* 메인배너 텍스트 */
		$(".bn_mains a" , this).hover(function(){
			  $("ul" , this).show();
			  $( "ul", this ).animate( { marginTop: "-140px"}, { queue: false, duration: 180 } , "swing") ;
		},function(){
			$( "ul", this ).animate( { marginTop: "0px"}, { queue: false, duration: 180 } , "swing") ;
		});


	});

 })(jQuery);







//더블클릭시 최상단 또는 최하단으로 이동

/*
toggle=0;
function dblclick() {
    if (toggle==0) {
        var sc=99999; toggle=1;
    } else {
        var sc=0; toggle=0;
    }
    window.scrollTo(0,sc);
}
if (document.layers) {
    document.captureEvents(Event.ONDBLCLICK);
}
document.ondblclick=dblclick;
*/


function getCookie(c_name){
	var i,x,y,ARRcookies=document.cookie.split(";");
	for (i=0;i<ARRcookies.length;i++){
			x=ARRcookies[i].substr(0,ARRcookies[i].indexOf("="));
			y=ARRcookies[i].substr(ARRcookies[i].indexOf("=")+1);
			x=x.replace(/^\s+|\s+$/g,"");
		if (x==c_name){
			return unescape(y);
		}
	}
}

function setCookie(c_name,value,exdays){
	var exdate=new Date();
	exdate.setDate(exdate.getDate() + exdays);
	var c_value=escape(value) + ((exdays==null) ? "" : ";path=/;expires="+exdate.toUTCString());
	document.cookie=c_name + "=" + c_value;
}



var no_tt_cookie = getCookie('no_tt');

var toggle = 0;
document.ondblclick = function() {
	if (no_tt_cookie == '1')
		return;
	
	var sc = 0;
	if (toggle == 0) {
		sc = document.body.scrollHeight;
		toggle = 1;
	} else {
		toggle = 0;
	}
	window.scrollTo(0, sc);
};

var IE = document.all?true:false;
if (!IE) document.captureEvents(Event.MOUSEMOVE)
document.onmousemove = getMouseXY;
var tempX = 0;
var tempY = 0;
function getMouseXY(e) {
    if (IE) { // grab the x-y pos.s if browser is IE
        tempX = event.clientX + document.body.scrollLeft;
        tempY = event.clientY + document.body.scrollTop;
    } else { // grab the x-y pos.s if browser is NS
        tempX = e.pageX;
        tempY = e.pageY;
    }
    if (tempX < 0){tempX = 0;}
    if (tempY < 0){tempY = 0;}
    return true;
}



