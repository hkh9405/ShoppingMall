<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
			
	String pCONTENT = request.getParameter("pCONTENT");
	String pNAME = request.getParameter("pNAME");
	String pPRICE = request.getParameter("pPRICE");
	
	String path1 = "&pCONTENT=" + pCONTENT + "&pNAME=" + pNAME + "&pPRICE=" + pPRICE;
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ESPIONAGE OFFICIAL STORE</title>
<link href="<%=cp%>/project3/login/img/icon.png" rel="shortcut icon" type="image/x-icon">


<style type="text/css">
/* BASIC css start */
/* »óÇ° »ó¼¼ÆäÀÌÁö */
#productDetail .page-body {
	padding-top: 0px;
	margin-top: -18px
}

/* »ó´Ü ¼¶³×ÀÏ, »óÇ° ¿É¼Ç Á¤º¸ */
#productDetail .thumb-info {
	zoom: 1;
	margin: 0 auto;
	text-align: center;
	padding: 0px;
	overflow: hidden;
}

/* ¼¶³×ÀÏ */
#productDetail .thumb-info .thumb-wrap {
	float: left;
	display: inline-block;
	width: 709px;
	padding-right: 20px;
}

#productDetail .thumb-info .thumb {
	width: 709px;
	text-align: center;
}

#productDetail .thumb-info .thumb img {display;block;
	height: auto;
	width: 560px;
}

#productDetail .thumb-info .thumb-ctrl {
	clear: both;
	padding-top: 20px;
	text-align: center;
}

#productDetail .thumb-info .thumb-ctrl a {
	font-size: 11px;
}

#productDetail .thumb-info .thumb-ctrl a img {
	vertical-align: middle;
	margin-right: 3px;
}

#productDetail .thumb-info .thumb-ctrl a:hover {
	text-decoration: underline;
}

/* ¸ÖÆ¼ ÀÌ¹ÌÁö */
#productDetail #sangse_name .listImg {
	overflow: hidden;
	width: 564px;
	margin: 0px auto 0px;
}

#productDetail #sangse_name .listImg ul {
	margin: 0px;
	font-size: 0;
	line-height: 0;
}

#productDetail #sangse_name .listImg li {
	float: left;
	margin: 0 2px;
	font-size: 12px;
	line-height: 14px;
	vertical-align: top;
	*display: inline;
	*zoom: 1;
}

#productDetail #sangse_name .listImg li img {
	width: 90px;
	height: 90px;
	margin-bottom: 5px;
	cursor: pointer;
}

/* »ó¼¼ »ó´Ü »óÇ°¸í, ¿ä¾àÁ¤º¸ */
#productDetail #sangse_name {
	clear: both;
	margin-bottom: 30px;
	padding: 20px;
	border: 0px solid #dedede;
	text-align: left;
}

#productDetail #sangse_name h3 {
	text-align: left;
	padding-bottom: 10px;
	font-size: 14px;
	color: #000;
}

#productDetail #sangse_name h3 span {
	font-weight: normal;
	font-size: 12px;
}

#productDetail #sangse_name .icon {
	padding: 0px;
}

#productDetail #sangse_name .icon img {
	margin: 0;
	vertical-align: middle;
	padding-bottom: 10px;
}

#productDetail #sangse_name .yoyak {
	clear: both;
	line-height: 18px;
	font-size: 12px;
	color: #757575;
}

.groupp span {
	color: #ec642e
}

/* »óÇ°¿É¼Ç Á¤º¸ */
#productDetail .thumb-info .info {
	float: left;
	display: inline-block;
	width: 450px;
	border-left: 1px solid #e9e9e9;
	padding-left: 20px;
	min-height: 600px
}

#productDetail .thumb-info .info h3 {
	text-align: left;
	padding-bottom: 10px;
	font-size: 14px;
	color: #000;
}

#productDetail .thumb-info .info .table-opt {
	margin-top: 10px;
	width: 450px;
}

#productDetail .thumb-info .info .table-opt th {
	font-weight: normal;
	color: #000;
	width: 55px;
	height: 22px;
	line-height: 22px;
	text-align: left;
	vertical-align: top;
	text-transform: uppercase;
}

#productDetail .thumb-info .info .table-opt td {
	height: 22px;
	line-height: 22px;
	vertical-align: top;
}

#productDetail .thumb-info .info .table-opt td select.vo_value_list {
	width: 338px;
	height: 22px;
	line-height: 22px;
	border: 1px solid #d9d9d9;
	vertical-align: middle;
}

/* ÆÇ¸Å°¡°Ý */
#productDetail .thumb-info .info .table-opt .price {
	font-weight: bold;
	height: 24px;
	line-height: 24px;
}

#productDetail .thumb-info .info .table-opt .subname {
	color: #f00;
}

#productDetail .thumb-info .info .table-opt .order_info {
	height: 18px;
	line-height: 18px;
	padding-bottom: 60px
}

#productDetail .mem {
	padding-top: 6px
}

#productDetail .mem a {
	width: 150px;
	display: block;
}

/* ÁÖ¹®¼ö·® */
#goods_amount {
	float: left;
	width: 32px;
	border: 0;
}

#productDetail .thumb-info .info .table-opt .opt-spin {
	/*position: relative;*/
	width: 60px;
	height: 23px;
	border: 1px solid #d9d9d9;
}

#productDetail .thumb-info .info .table-opt .opt-spin .txt-spin,
	#productDetail .thumb-info .info .table-opt .opt-spin .btns {
	float: left;
}

#productDetail .thumb-info .info .table-opt .opt-spin .txt-spin {
	width: 41px;
	height: 13px;
	padding-left: 2px padding-top: 2px;
	border: 0;
	font-size: 11px;
}

#productDetail .thumb-info .info .table-opt .opt-spin .btns {
	width: 19px;
	height: 22px;
	border-left: 1px solid #d9d9d9;
}

#productDetail .thumb-info .info .table-opt .opt-spin .btns a {
	overflow: hidden;
	float: left;
	width: 100%;
	height: 11px;
	text-indent: -999px;
	background: none;
}

#productDetail .thumb-info .info .table-opt .opt-spin .btns a.btn-up {
	border-bottom: 1px solid #aaa;
	background: url(/images/d3/modern_simple/btn/btn_h5_spin_up.gif)
		no-repeat 50% 5px;
}

#productDetail .thumb-info .info .table-opt .opt-spin .btns a.btn-dw {
	background: url(/images/d3/modern_simple/btn/btn_h5_spin_dw.gif)
		no-repeat 50% 4px;
}

/* ±¸¸Å¹öÆ° */
#productDetail .prd-btns {
	overflow: hidden;
	font-size: 0;
	line-height: 0;
	margin: 3px 0;
}

#productDetail .prd-btns a {
	float: left;
	display: inline-block;
	color: #333;
	background: #fff;
	border: 1px solid #aeaeae;
	font-family: 'Open Sans', 'NanumGothic';
	font-size: 13px;
	height: 35px;
	line-height: 35px;
}

#productDetail .prd-btns span {
	line-height: 35px;
	cursor: pointer;
	text-align: center
}

#productDetail .prd-btns a.sbn01:hover {
	color: #fff;
	background: #00c73c;
	border: 1px solid #00c73c;
}

#productDetail .prd-btns a:hover {
	color: #000;
	border: 1px solid #000;
}

#productDetail .prd-btns a.sbn01 {
	width: 110px;
	color: #fff;
	background: #222;
	border: 1px solid #222;
	text-align: center
}

#productDetail .prd-btns a.sbn02 {
	width: 124px;
	margin: 0 5px
}

#productDetail .prd-btns a.sbn03 {
	width: 96px;
	margin: 0 5px 0 0
}

#productDetail .prd-btns a.sbn04 {
	width: 80px;
}

/* DGG¹öÆ° */
#productDetail .prd-btns2 {
	display: inline-block;
	padding-right: 4px;
	padding-top: 5px;
	float: left;
}

#dggguide {
	top: 170px !important;
}

/* International Order ¹öÆ° */
#productDetail .prd-btns4 {
	display: inline-block;
	Padding-top: 5px;
	float: left;
}

/* NAVER Ã¼Å©¾Æ¿ô ¹öÆ° */
#productDetail .prd-btns3 {
	padding-top: 5px;
	text-align: left
}

/* ÆäÀÌÄÚ ¹öÆ° */
#productDetail .prd-payco {
	display: inline-block;
	Padding-top: 5px;
}

/* Ä«Ä«¿À ¹öÆ° */
#productDetail .prd-kakao {
	display: inline-block;
	Padding-top: 5px;
}

/* »óÇ° À¯ÀÇ»çÇ× */
.warning {
	font-size: 13px;
	text-align: left;
	margin: 30px 0 10px
}

/* »óÇ° »ó¼¼ ÀÌ¹ÌÁö */
#productDetail .prd-detail {
	padding: 60px 0 20px;
	color: #000;
	line-height: 18px;
	text-align: center;
}

#productDetail .prd-detail h3 {
	width: 100%;
	margin: 0 0 20px;
	font-size: 17px;
	height: 20px;
	line-height: 20px;
	color: #000;
	text-align: left;
	padding-bottom: 10px;
	border-bottom: 1px solid #dedede;
}

#productDetail .prd-detail table {
	table-layout: auto;
}

#productDetail .prd-detail {
	margin-top: 0px;
	width: 100%;
	overflow: hidden;
	text-align: center;
}

#productDetail .prd-detail img {
	max-width: 100%;
	text-align: center;
}

/* °ü·Ã»óÇ° */
#productDetail .prd-list {
	margin-top: 0px;
}

#productDetail .prd-list th {
	padding: 10px 0;
	border-bottom: 1px solid #ddd;
	font-weight: normal;
	font-size: 11px;
}

#productDetail .prd-list td {
	padding: 5px 0;
	border-bottom: 1px solid #ddd;
	vertical-align: middle;
}

#productDetail .prd-list .thumb {
	width: 50px;
	height: 50px;
}

#productDetail .prd-list .prd-amount {
	position: relative;
	width: 52px;
	height: 15px;
	border: 1px solid #aaa;
}

#productDetail .prd-list .prd-amount input {
	width: 32px;
	height: 15px;
	border: 0;
}

#productDetail .prd-list .prd-amount .btns {
	float: left;
	width: 19px;
	height: 15px;
	border-left: 1px solid #aaa;
}

#productDetail .prd-list .prd-amount .btns a {
	overflow: hidden;
	float: left;
	width: 100%;
	height: 7px;
	text-indent: -999px;
	background: none;
}

#productDetail .prd-list .prd-amount .btns a.btn-up {
	border-bottom: 1px solid #aaa;
	background: url(/images/d3/modern_simple/btn/btn_h5_spin_up.gif)
		no-repeat 50% 2px;
}

#productDetail .prd-list .prd-amount .btns a.btn-dw {
	background: url(/images/d3/modern_simple/btn/btn_h5_spin_dw.gif)
		no-repeat 50% 2px;
}

#productDetail .related-allbasket {
	width: 100%;
	padding-top: 10px;
	text-align: right;
}

.relatedpro {
	width: 918px;
	height: 320px;
	border: 1px solid #dedede;
	border-bottom: 1px solid #aaa;
	margin: 20px 0 30px;
	padding: 50px 40px 0 40px;
	over-flow: hidden;
}

.relatedpro .coordi_title {
	float: left;
	width: 198px;
	line-height: 18px;
	cursor: default;
}

.relatedpro .coordi_title span {
	clear: both;
	font-family: 'Open Sans';
	font-size: 16px;
	color: #000;
	text-transform: uppercase;
	font-weight: bold;
}

.relatedpro .coordi_title p {
	clear: both;
	font-family: µ¸¿ò;
	font-size: 11px;
	color: #888;
	margin-top: 25px;
	padding-top: 25px;
	background: url(http://zooyork77.img7.kr/onedesign/images/banbg.gif) 0
		top no-repeat;
}

.relatedpro .item-list {
	float: left;
	width: 720px;
}

.relatedpro ul.item {
	width: 160px;
	max-height: 320px;
	padding: 0 0 0 20px;
}

.relatedpro .item .prd-thumb {
	float: left;
}

.relatedpro .item .prd-thumb img {
	width: 160px;
	height: auto;
	max-height: 223px;
	text-align: center;
	vertical-align: top;
}

.relatedpro .item li {
	width: 160px;
	text-align: center;
	font: 11px "µ¸¿ò";
	color: #000;
}

/* »óÇ°¸í */
.relatedpro .item .prd-name {
	clear: both;
	color: #000;
	line-height: 15px;
	padding-top: 10px;
}
/* »óÇ°°¡°Ý */
.relatedpro .item .prd-price {
	clear: both;
	color: #555;
	line-height: 15px;
	padding-top: 5px;
}

/* review-write */
#productDetail .review-write {
	padding: 10px 0 15px 20px;
	border-top: 1px solid #ddd;
	margin-top: 23px;
}

#productDetail .review-write th, #productDetail .review-write td {
	padding: 5px 0;
}

#productDetail .review-write th {
	font-weight: normal;
}

#productDetail .review-write .frm-w input {
	width: 150px;
	height: 18px;
	line-height: 18px;
	border: 1px solid #ededed;
}

#productDetail textarea.MS_review_content_box {
	height: 54px;
}

/* ´ñ±Û¸®½ºÆ® °øÅë */
#productDetail .table-slide {
	border-top: 1px solid #000;
	border-bottom: 1px solid #000;
}

#productDetail .table-slide th {
	padding: 5px 0;
	height: 20px;
	line-height: 20px;
	font-size: 12px;
	font-weight: bold;
	color: #000;
	vertical-align: middle;
	text-transform: uppercase;
}

#productDetail .table-slide td {
	padding: 15px 0;
	height: 20px;
	line-height: 20px;
	font-size: 12px;
	color: #000;
	border-top: 1px solid #dedede;
	text-align: center;
	vertical-align: middle;
}

#productDetail .table-slide tr.cnt {
	display: none;
}

#productDetail .table-slide tr.cnt td {
	cursor: default;
}

#productDetail .table-slide tr.nbg td {
	background-image: none;
}

#productDetail .table-slide tr.ndata td.nolist {
	/*border-top:1px solid #dedede; border-bottom:1px solid #dedede;*/
	font-weight: bold;
}

#productDetail .table-slide tr.reply .tb-txt {
	padding-left: 30px;
	background: url(/images/d3/modern_simple/common/bull_reply.gif)
		no-repeat 10px 0;
}
/* review-list */
#productDetail .review-list .bg {
	padding-top: 35px; /*border-top: 1px solid #000;*/
}
/* qna board */
#productDetail .qna-list .bg { /*border-top: 1px solid #000;*/
	
}
/* item-hd */
#productDetail .item-hd {
	margin-top: 80px;
}

/* ****************** »óÇ° »ó¼¼ ¿É¼Ç ******************** */

/* ÅëÇÕ¿É¼Ç */
#productDetail .thumb-info .info .table-opt .opt-wrap {
	width: 100%;
	margin-top: 10px;
	text-align: left;
}

#productDetail .thumb-info .info .table-opt .opt-wrap .tit {
	margin-bottom: 5px;
	padding-left: 5px;
}

#productDetail .thumb-info .info .table-opt .opt-wrap dl {
	overflow: hidden;
	width: 100%;
}

#productDetail .thumb-info .info .table-opt .opt-wrap dt {
	float: left;
	width: 80px;
	margin-bottom: 5px;
	padding-left: 5px;
}

#productDetail .thumb-info .info .table-opt .opt-wrap dd {
	float: left;
	width: 248px;
	margin-bottom: 5px;
}

#productDetail .thumb-info .info .table-opt .opt-wrap .sel-btn {
	padding-bottom: 10px;
}

#productDetail .thumb-info .info .table-opt .opt-wrap select {
	min-width: 140px;
}

#productDetail .thumb-info .info .table-opt .opt-wrap .opt-btns {
	position: relative;
	width: 56px;
	height: 19px
}

#productDetail .thumb-info .info .table-opt .opt-wrap .opt-btns input {
	position: absolute;
	top: 0;
	left: 0;
	width: 40px;
	height: 17px;
	border: 1px solid #ddd;
	text-align: right;
}

#productDetail .thumb-info .info .table-opt .opt-wrap .opt-btns .btn-up
	{
	position: absolute;
	top: 0;
	right: 0;
}

#productDetail .thumb-info .info .table-opt .opt-wrap .opt-btns .btn-dw
	{
	position: absolute;
	bottom: 0;
	right: 0;
}

#productDetail .thumb-info .info .table-opt .opt-wrap dl .opt-count select
	{
	float: left;
	width: 180px;
}

#productDetail .thumb-info .info .table-opt .opt-wrap dl .opt-count .opt-btns
	{
	float: left;
	width: 56px;
	margin-left: 5px;
}

.MK_not_choice {
	color: red;
}

.MK_optAddWrap, .MK_optAddWrap * {
	margin: 0;
	padding: 0;
}

.MK_optAddWrap {
	color: #666;
	font-size: 11px;
	line-height: 13px;
	text-align: left;
}

.MK_optAddWrap li {
	list-style: none;
}
/* ¿É¼Ç¼±ÅÃ */
#MK_optAddList {
	overflow: hidden;
	*zoom: 1;
}

#MK_optAddList li {
	float: left;
	width: 100%;
	margin-top: 5px;
}

#MK_optAddList .MK_tit, #MK_optAddList .MK_div, #MK_optAddList .MK_st {
	float: left;
}

#MK_optAddList .MK_tit, #MK_optAddList .MK_div {
	font-size: 11px;
	line-height: 16px;
}

#MK_optAddList .MK_tit {
	width: 65px;
	margin-right: 5px;
}

#MK_optAddList .MK_div {
	width: 5px;
	text-align: center;
}

#MK_optAddList .MK_st {
	width: 205px;
}

#MK_optAddList .MK_st .MK_btn-add {
	cursor: pointer;
}

#MK_optAddList .MK_st select {
	margin-left: 5px;
	width: 195px;
	height: 18px;
}

/* ¿É¼Ç¼±ÅÃPP */
#MK_optAddListPP {
	overflow: hidden;
	*zoom: 1;
}

#MK_optAddListPP .MK_tit, #MK_optAddListPP .MK_st {
	float: left;
	width: auto;
}

#MK_optAddListPP .MK_tit {
	margin-right: 5px;
	margin-top: 3px;
}

/* ¿É¼Ç °á°ú ¸®½ºÆ® */
#MK_innerOptWrap #MK_innerOptScroll.limit {
	position: relative;
	height: 150px;
	overflow-y: auto;
}

#MK_innerOptWrap .MK_inner-opt-cm li {
	*zoom: 1;
	position: relative;
	min-height: 13px;
	_height: 13px;
	*margin-bottom: -4px;
	padding: 8px 5px;
	border-bottom: 1px solid #ddd;
	clear: both;
	box-sizing: border-box;
}

#MK_innerOptWrap .MK_inner-opt-cm li .MK_qty-ctrl, #MK_innerOptWrap .MK_inner-opt-cm li .MK_price,
	#MK_innerOptWrap .MK_inner-opt-cm li .MK_btn-del {
	position: absolute;
}

#MK_innerOptWrap .MK_inner-opt-cm li .MK_p-name, #MK_innerOptWrap .MK_inner-opt-cm li .MK_qty-ctrl,
	#MK_innerOptWrap .MK_inner-opt-cm li .MK_price, #MK_innerOptWrap .MK_inner-opt-cm li .MK_btn-del
	{
	display: block;
}

#MK_innerOptWrap .MK_inner-opt-cm li .MK_price {
	right: 20px;
	top: 10px;
	color: #333;
	font-weight: normal;
}

#MK_innerOptWrap .MK_inner-opt-cm li .MK_btn-del {
	right: 5px;
	top: 5px;
}

#MK_innerOptWrap .MK_inner-opt-cm li .MK_qty-ctrl .basic_option {
	margin-top: 3px;
}

#MK_innerOptWrap .MK_inner-opt-cm li .MK_qty-ctrl .addition_option {
	margin-top: 3px;
}

#MK_innerOptWrap .MK_inner-opt-cm li .MK_qty-ctrl .MS_amount_basic {
	margin-top: 3px;
}

/* »ç¿ëÀÚ ÀÔ·Â ÀÎÇ²¹Ú½º (color, size )*/
.MK_optAddWrap .MK_inner-opt-cm li .MK_txt_uinput {
	width: 200px;
}
/* ±âº»¿É¼Ç */
#MK_innerOptWrap #MK_innerOpt_01 li .MK_p-name {
	margin-right: 140px;
}

#MK_innerOptWrap #MK_innerOpt_01 li .MK_qty-ctrl {
	width: 55px;
	top: 3px;
	*top: 2px;
	right: 90px;
}

#MK_innerOptWrap #MK_innerOpt_01 li .MK_qty-ctrl input.MK_count {
	width: 30px;
	height: 16px;
	line-height: 16px;
	padding: 2px 0 0 2px;
}

#MK_innerOptWrap #MK_innerOpt_01 li .MK_qty-ctrl a {
	position: absolute;
	right: 0px;
	font-size: 0;
	line-height: 0;
}

#MK_innerOptWrap #MK_innerOpt_01 li .MK_qty-ctrl a img {
	vertical-align: top;
}

#MK_innerOptWrap #MK_innerOpt_01 li .MK_qty-ctrl a.MK_btn-up {
	top: 2px;
}

#MK_innerOptWrap #MK_innerOpt_01 li .MK_qty-ctrl a.MK_btn-dw {
	top: 12px;
}
/* °³º°¿É¼Ç */
#MK_innerOptWrap #MK_innerOpt_02 li .MK_p-name {
	margin-right: 80px;
}

#MK_innerOptWrap #MK_innerOpt_02 li .MK_qty-ctrl {
	width: 55px;
	top: 3px;
	*top: 2px;
	right: 90px;
}

#MK_innerOptWrap #MK_innerOpt_02 li .MK_qty-ctrl input.MK_count {
	width: 30px;
	height: 16px;
	line-height: 16px;
	padding: 2px 0 0 2px;
}

#MK_innerOptWrap #MK_innerOpt_02 li .MK_qty-ctrl a {
	position: absolute;
	right: 0px;
	font-size: 0;
	line-height: 0;
}

#MK_innerOptWrap #MK_innerOpt_02 li .MK_qty-ctrl a img {
	vertical-align: top;
}

#MK_innerOptWrap #MK_innerOpt_02 li .MK_qty-ctrl a.MK_btn-up {
	top: 2px;
}

#MK_innerOptWrap #MK_innerOpt_02 li .MK_qty-ctrl a.MK_btn-dw {
	top: 12px;
}
/* ÇÏÀÌºê¸®µå ¿É¼Ç */
#MK_innerOptWrap #MK_innerOpt_03 li .MK_p-name {
	margin-right: 80px;
}

#MK_innerOptWrap #MK_innerOpt_03 li .MK_qty-ctrl {
	width: 55px;
	top: 3px;
	*top: 2px;
	right: 90px;
}

#MK_innerOptWrap #MK_innerOpt_03 li .MK_qty-ctrl input.MK_count {
	width: 30px;
	height: 16px;
	line-height: 16px;
	padding: 2px 0 0 2px;
}

#MK_innerOptWrap #MK_innerOpt_03 li .MK_qty-ctrl a {
	position: absolute;
	right: 0px;
	font-size: 0;
	line-height: 0;
}

#MK_innerOptWrap #MK_innerOpt_03 li .MK_qty-ctrl a img {
	vertical-align: top;
}

#MK_innerOptWrap #MK_innerOpt_03 li .MK_qty-ctrl a.MK_btn-up {
	top: 2px;
}

#MK_innerOptWrap #MK_innerOpt_03 li .MK_qty-ctrl a.MK_btn-dw {
	top: 12px;
}

/* ÃÑÇÕ°è */
#MK_innerOptTotal {
	padding: 10px 5px 25px;
	font-size: 13px;
	color: #333;
	text-align: right;
	clear: both;
	box-sizing: border-box;
}

#MK_innerOptTotal .MK_txt-total {
	font-size: 13px;
}

#MK_innerOptTotal .MK_txt-won {
	font-size: 13px;
}

#MK_innerOptTotal .MK_total {
	color: #ff0000;
	font-weight: bold;
	font-size: 13px;
}
/* ¼Ò¸®ºä */
#sorivu {
	position: relative;
	margin-top: 20px;
}
/* »óÇ° ÀÏ¹ÝÁ¤º¸(»óÇ°Á¤º¸Á¦°ø °í½Ã) */
#productWrap {
	margin: 10px 0;
}

#productWrap h3.tb-tit {
	margin-bottom: 10px;
	text-align: left;
}

#productWrap table {
	width: 100%;
	font-size: 12px;
	border-collapse: collapse;
	border-width: 1px 0 1px 0;
	border-color: #b4b4b4;
	border-style: solid;
	table-layout: fixed;
}

#productWrap table th {
	border-right: 1px solid #e0e0e0;
	border-bottom: 1px solid #e0e0e0;
	background-color: #f8f8f8;
	color: #3b3b3d;
	text-align: left;
	padding: 10px 0 10px 15px;
}

#productWrap table td {
	color: #8b8b8b;
	border-bottom: 1px solid #e0e0e0;
	word-break: break-all;
	text-align: left;
	padding: 10px 0 10px 17px;
}

/* »ó¼¼ÆäÀÌÁö °Ô½ÃÆÇ Å¸ÀÌÆ² ¹× ¹öÆ° */
.board-hd {
	padding: 60px 0 20px;
	color: #000;
	line-height: 18px;
	clear: both;
}

.board-hd h3.board-title_b {
	font-size: 17px;
	height: 20px;
	line-height: 20px;
	font-weight: bold;
	text-transform: uppercase;
	color: #000;
	text-align: left;
	padding-bottom: 0px;
}

.board-btns {
	width: auto;
	height: 24px;
	float: right;
	margin-top: 20px;
}

.next { /*width:49px; float:right; margin-top:17px;*/
	
}

.next a {
	float: right;
}

.subtop {
	width: 768px;
	border-bottom: 1px solid #ccc;
	clear: both;
	margin-bottom: 50px;
	height: 43px;
}

.snavi {
	float: left;
	width: 200px;
	padding-left: 0px;
}

@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);

.prd-detail-section-title {
	text-align: center;
	width: 100%;
	font-size: 19px;
	font-family: 'Open Sans', sans-serif;
	text-decoration: underline;
	padding-bottom: 10px;
}

.prd-detail-size-td {
	font-size: 13px;
	width: 184px;
	height: 40px;
	border: 1px dotted #d0d0d0;
}

.prd-detail-size-td span {
	font-weight: bold;
	font-family: 'Noto Sans KR', sans-serif;
	text-transform: uppercase;
}

.prd-detail-section-body {
	width: 80%;
	font-size: 13px;
	word-break: break-all;
	letter-spacing: 0.1em;
	line-height: 3.3;
}

.prd-detail-section-body02 {
	text-align: left;
	width: 58%;
	font-size: 14px;
	word-break: break-all;
	letter-spacing: 0.1em;
	line-height: 3.3;
}

.prd-detail-section-body03 {
	text-align: center;
	width: 100%;
	font-size: 19px;
	font-family: 'Open Sans', sans-serif;
	text-decoration: underline;
	padding-bottom: 10px;
}

.size-img-wrap {
	width: 920px;
	border: 1px solid #d1d1d1;
	text-align: center;
}

.snspro {
	margin-top: 10px;
	width: 280px;
	float: left;
}

.snspro a {
	float: left;
}

.tb-left {
	padding: 0px !important;
}

.tb-left li {
	float: left;
	padding-right: 3px;
}

/* ÇÏÀÌºê¸®µå ¿É¼Ç Àû¿ë ¼Ò½º */
#productDetail .thumb-info .info .table-opt .opt-wrap .tit {
	margin-bottom: 5px;
}

#productDetail .thumb-info .info .table-opt .opt-wrap-hybrid {
	width: 100%;
	padding: 0 0 10px;
	border-bottom: 1px solid #e4e4e4;
}

#productDetail .thumb-info .info .table-opt .opt-wrap-hybrid .tit {
	margin-bottom: 8px;
	color: #969696;
}

#productDetail .thumb-info .info .table-opt .option-wrap {
	margin-top: 10px;
	padding: 10px 0;
	border-top: 1px solid #ddd;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box {
	width: 100%;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .tit
	{
	padding: 10px 0 5px;
	color: #666;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list:after
	{
	clear: both;
	content: "";
	display: block;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list
	{
	width: 100%;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li
	{
	float: left;
	width: 70px;
	margin-left: 25px;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li.first,
	#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li:first-child
	{
	margin-left: 0;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li dl
	{
	padding-bottom: 10px;
	color: #333;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li dl dd.prdchk
	{
	text-align: left;
	padding-bottom: 5px;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li dl dd.prdchk input
	{
	width: 13px;
	height: 13px;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li dl dd.prdimg
	{
	position: relative;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li dl dd.prdimg img
	{
	width: 70px;
	height: 70px;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li dl dd.prdimg.noimg
	{
	
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li dl dd.prdimg .soldout
	{
	position: absolute;
	top: 0;
	left: 0;
	display: inline-block;
	width: 100%;
	height: 100%;
	line-height: 71px;
	color: #fff;
	text-align: center;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li dl dd.prdimg .soldout-bg
	{
	position: absolute;
	top: 0;
	left: 0;
	display: inline-block;
	width: 100%;
	height: 100%;
	background: #000;
	filter: alpha(opacity : 40);
	opacity: 0.4;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li dl dd.prdimg .sel-img
	{
	position: absolute;
	top: 0;
	left: 0;
	display: inline-block;
	width: 100%;
	height: 100%;
	background: #000;
	filter: alpha(opacity : 40);
	opacity: 0.4;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li dl dd.prdname
	{
	padding-top: 7px;
	line-height: 14px;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li dl dd.prdname
	{
	padding-bottom: 3px;
	line-height: 14px;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li dl dd.prdprice
	{
	padding-bottom: 3px;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li dl dd.prdqty
	{
	
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li dl dd.prdqty input
	{
	width: 42px;
	height: 18px;
	line-height: 18px;
	border: 1px solid #dfdfdf;
	text-align: center;
	background: none;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li dl dd.prdqty .btn-up-down
	{
	display: inline-block;
	width: 12px;
	height: 26px;
	line-height: 0;
	font-size: 0;
	vertical-align: top;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li dl dd.prdqty .btn-up-down a
	{
	display: inline-block;
	width: 12px;
	height: 12px;
	line-height: 0;
	font-size: 0;
	vertical-align: top;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li dl dd.prdqty .btn-up-down .btn-up
	{
	margin-bottom: 2px;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li.lst-soldout dl
	{
	color: #a7a7a7;
}

#productDetail .thumb-info .info .table-opt .option-wrap .option-box .list li.lst-soldout dl input
	{
	color: #929292;
}

/* ÇÏÀÌºê¸®µå ±âº»»óÇ° °¡°Ý ³ëÃâ ¹× ¼±ÅÃµÈ ÇÏÀÌºê¸®µå ¿É¼Ç³ëÃâÇ×¸ñ*/
#MK_innerOptWrap .MK_inner-opt-hybrid li .MK_p-name, #MK_innerOptWrap .MK_inner-opt-hybrid li .MK_price,
	#MK_innerOptWrap .MK_inner-opt-hybrid li .MK_btn-del {
	display: inline-block;
	*float: left;
}

#MK_innerOptWrap .MK_inner-opt-hybrid li .MK_price {
	top: 4px;
}

/* ÇÏÀÌºê¸®µå ¼±ÅÃµÈ ¿É¼Ç ÃÑ°¡°Ý ³ëÃâ*/
#MK_innerOptWrap #MK_innerOptPrice {
	display: none;
	padding: 12px 5px 10px;
	font-size: 12px;
	color: #333;
	text-align: right;
}

#MK_innerOptAdd {
	display: none;
	padding: 0 5px;
	font-size: 12px;
	color: #333;
	text-align: right;
}

#MK_innerOptTotal {
	padding-top: 15px;
	border-top: 1px solid #e4e4e5;
	*zoom: 1;
	text-align: right;
	margin-top: -1px;
}

#MK_innerOptTotal:after {
	display: block;
	clear: both;
	content: ''
}

#MK_innerOptTotal .totalLeft {
	float: left
}

#MK_innerOptTotal .totalRight {
	float: right
}

#MK_innerOptTotal .MK_txt-total {
	font-size: 14px;
	color: #0e0e0e
}

#MK_innerOptTotal .MK_txt-won {
	font-size: 14px;
	color: #0e0e0e
}

#MK_innerOptTotal .totalRight .MK_total {
	display: inline-block;
	margin-top: -4px;
	font-size: 18px;
	vertical-align: middle;
}

/* Åë¿É Ãß°¡ ±¸¼º »óÇ° */
#productDetail .thumb-info .info .table-opt td.add-option-tit {
	padding: 15px 0 0;
	border-top: 1px solid #e4e4e5;
	color: #000;
	font-size: 14px;
}

#productDetail .thumb-info .info .table-opt tr.add-option-start>td .add-option-img,
	#productDetail .thumb-info .info .table-opt tr.add-option-start>td .add-option-wrap
	{
	border-bottom: 1px dashed #e4e4e5;
}

#productDetail .thumb-info .info .table-opt td.add-option-img {
	padding-top: 10px;
	border-bottom: 1px solid #e4e4e5;
	vertical-align: top;
}

#productDetail .thumb-info .info .table-opt td.add-option-img .thumb-s img
	{
	max-width: 100%;
}

#productDetail .thumb-info .info .table-opt td.add-option-wrap {
	padding-top: 10px;
	border-bottom: 1px solid #e4e4e5;
}

#productDetail .thumb-info .info .table-opt td.add-option-wrap .prd-icon,
	#productDetail .thumb-info .info .table-opt td.add-option-wrap .tit-prd
	{
	padding-left: 20px;
	padding-top: 0;
}

#productDetail .thumb-info .info .table-opt td.add-option-wrap .table-opt
	{
	padding-left: 20px;
}

#productDetail .thumb-info .info .table-opt td.add-option-wrap .table-opt td select.basic_option,
	#productDetail .thumb-info .info .table-opt td.add-option-wrap .table-opt td select.addition_option
	{
	width: 310px;
}

#productDetail .thumb-info .info .table-opt td.add-option-wrap .table-opt td input.basic_option,
	#productDetail .thumb-info .info .table-opt td.add-option-wrap .table-opt td input.addition_option
	{
	width: 306px;
	height: 22px;
	line-height: 24px;
}

#productDetail .thumb-info .info .table-opt td.add-option-wrap .table-opt td .opt-wrap
	{
	padding: 5px 0 0 0;
}

#productDetail .thumb-info .info .table-opt td.add-option-wrap .table-opt td .opt-wrap .tit
	{
	display: none;
}

#productDetail .thumb-info .info .table-opt td.add-option-wrap .table-opt td .opt-wrap dd
	{
	width: 110px;
}

#productDetail .thumb-info .info .table-opt td.add-option-wrap .table-opt td .opt-wrap select
	{
	width: 100px;
}

#productDetail .thumb-info .info .table-opt td.add-option-wrap .table-opt td .opt-wrap input
	{
	width: 205px;
}

#productDetail .thumb-info .info .table-opt tr.add-option-end .MK_p-tit
	{
	display: block;
	width: 90%;
	height: 100%;
	line-height: 12px;
	color: #000;
	font-weight: bold;
}

#productDetail .thumb-info .info .table-opt tr.add-option-end .MK_price
	{
	top: 40px;
	right: 0;
}

#productDetail .thumb-info .info .table-opt tr.add-option-end .MK_btn-del
	{
	top: 0;
}

/* ¿øÅ¬¸¯¿É¼Ç */
.MK-oneclick-list {
	overflow: hidden;
	zoom: 1;
}

.MK-oneclick-list:after {
	content: "";
	display: block;
	clear: both;
}

.MK-oneclick-list li {
	float: left;
	margin: 0 5px 5px 0;
}

.MK-oneclick-list li a {
	border: 1px solid #231f20;
	display: inline-block;
	border-radius: 1px;
	box-sizing: border-box;
}

.MK-oneclick-list li.MK-oneclick-sel a {
	border: 2px solid #000000;
}

.MK-oneclick-list li.MK-oneclick-dis a {
	filter: alpha(opacity = 50);
	-moz-opacity: .5;
	opacity: .5;
}

.MK-oneclick-list li.MK-oneclick-color.MK-oneclick-sel a {
	padding: 1px;
	filter: alpha(opacity = 100);
	-moz-opacity: 1;
	opacity: 1;
}

.MK-oneclick-list li a span {
	display: block;
	text-align: center;
	vertical-align: middle;
	line-height: 19px;
}

.MK-oneclick-list li a img {
	width: 100%;
	height: 100%;
}

.MK-oneclick-list li.MK-oneclick-image a {
	height: 50px;
}

.MK-oneclick-list li.MK-oneclick-image a img {
	width: auto;
	height: 48px;;
}

.MK-oneclick-list li.MK-oneclick-image.MK-oneclick-sel a img {
	height: 46px;
	width: auto;
}

.MK-oneclick-list li.MK-oneclick-color {
	width: 50px;
	height: 50px;
}

.MK-oneclick-list li.MK-oneclick-color a {
	padding: 2px;
}

.MK-oneclick-list li.MK-oneclick-color span {
	width: 44px;
	height: 44px;
}

.MK-oneclick-list li.MK-oneclick-color .mk-oo-sel span {
	width: 27px;
	height: 27px;
}

.MK-oneclick-list li.MK-oneclick-text  .MK-oneclick-list li.MK-oneclick-text
	{
	min-width: 35px;
	max-width: 100%;
	height: 50px;
}

.MK-oneclick-list li.MK-oneclick-text a {
	padding: 2px;
}

.MK-oneclick-list li.MK-oneclick-text.MK-oneclick-sel a {
	padding: 1px;
}

.MK-oneclick-list li.MK-oneclick-text span {
	min-width: 29px;
	line-height: 44px;
}

.MK-oneclick-list li.MK-oneclick-text .MS-oneclick-sel span {
	min-width: 30px;
	line-height: 27px;
}

.MK-oneclick-value {
	padding: 5px 0;
	display: block;
}

.MK-oneclick-only-text li.MK-oneclick-text {
	height: auto;
}

.MK-oneclick-only-text li.MK-oneclick-text span {
	height: auto;
	line-height: 19px;
}

#basketpage #contents {
	width: 358px !important;
	min-height: 50px !important;
}

/* BASIC css end */
</style>

<!-- 테두리 -->


<script type="text/javascript">
 	function sendIt() {
 		
 	 	var f = document.getElementById('comma').value;
 		
 		
 		var str2 = f.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
 			document.getElementById('MK_p_total').innerHTML = str2;
 		
 	}
</script>


<script language="JavaScript">
	function bluring() {
		if (event.srcElement.tagName == "A"
				|| event.srcElement.tagName == "IMG")
			document.body.focus();
	}
	document.onfocusin = bluring;
</script>
<script type="text/javascript">
	function fimg(csrc) {
		window.document.images["img1"].src = csrc;
	}
	
	function sendSize1(){
		
		var f = document.myForm;
		
		var selector = document.querySelector('.size');
		
		var size = selector.options[selector.selectedIndex].value;
		/* String path1 = "&pCONTENT=" + pCONTENT + "&pNAME=" + pNAME + "&pPRICE=" + pPRICE; */
		
		f.action = "<%=cp%>/shop/orders.do?size=" + size + "<%=path1 %>";
		f.submit();		
	}
	
function sendSize2(){
		
		var f = document.myForm;
		var selector = document.querySelector('.size');
		var size = selector.options[selector.selectedIndex].value;
		/* String path1 = "&pCONTENT=" + pCONTENT + "&pNAME=" + pNAME + "&pPRICE=" + pPRICE; */
		
		f.action = "<%=cp%>/shop/basket_ok.do?size=" + size + "<%=path1 %>";
		f.submit();		
	}
	
function sendSize3(){
	
	var f = document.myForm;
	
	var selector = document.querySelector('.size');
	
	var size = selector.options[selector.selectedIndex].value;
	
	/* String path1 = "&pCONTENT=" + pCONTENT + "&pNAME=" + pNAME + "&pPRICE=" + pPRICE; */
	
	f.action = "<%=cp%>/shop/wishlist_ok.do?size=" + size + "<%=path1 %>";
	f.submit();		
}
	
</script>



<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>




</head>

<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/unit_header.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/scroll.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/main.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/header.3.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/footer.1.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/common.css">

<link type="text/css" rel="stylesheet"
	href="<%=cp%>/project3/css/unit_header.css">
<link type="text/css" rel="stylesheet"
	href="<%=cp%>/project3/css/scroll.css">
<link type="text/css" rel="stylesheet"
	href="<%=cp%>/project3/css/main.css">
<link type="text/css" rel="stylesheet"
	href="<%=cp%>/project3/css/header3.css">
<link type="text/css" rel="stylesheet"
	href="<%=cp%>/project3/css/footer1.css">
<link type="text/css" rel="stylesheet"
	href="<%=cp%>/project3/css/common.css">
<link type="text/css" rel="stylesheet"
	href="<%=cp%>/project3/css/powerReview.css">
<link type="text/css" rel="stylesheet"
	href="<%=cp%>/project3/css/shopdetail.css">


<body onload="sendIt();">
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




	<%-- <form action="<%=cp %>/shop/orders.do?pCONTENT=${dtob.pCONTENT }&pNAME=${pNAME }&pPRICE=${pPRICE }"
		name="myForm"> --%>
<form action=""	name="myForm" method="post">
		<div id="contentWrapper">
			<div id="contentWrap">
				<div id="left_menu"></div>
				<div id="content">
					<div id="productDetail">
						<div id="page-body">
							<!-- !!!여기가 첫구역!!! -->
							<div class="thumb-info">
								<!-- 좌측 -->
								<div class="thumb-wrap">
									<!-- 사진구역 -->
									<div class="thumb">
										<img class="detail_page" id="lens_img" align="left"
											src="${imagePath }/${dtob.pCONTENT }" name="img1" width="560"
											height="560" />
									</div>
									<!-- 사진하단 -->
									<div id="sangse_name">
										<div class="">
											<ul>
												<li><img src="<%=cp%>/project3/image/front.jpg"
													width="80" height="80"
													onmouseover="fimg('<%=cp%>/project3/image/front.jpg')" />
													<img src="<%=cp%>/project3/image/back.jpg" width="80"
													height="80" onmouseover="fimg(this.src)" /> <img
													src="<%=cp%>/project3/image/two.jpg" width="80" height="80"
													onmouseover="fimg('<%=cp%>/project3/image/two.jpg')" /> <img
													src="<%=cp%>/project3/image/close.jpg" width="80"
													height="80"
													onmouseover="fimg('<%=cp%>/project3/image/close.jpg')" />
													<img src="<%=cp%>/project3/image/cclose.jpg" width="80"
													height="80"
													onmouseover="fimg('<%=cp%>/project3/image/cclose.jpg')" />
													<img src="<%=cp%>/project3/image/logo.jpg" width="80"
													height="80"
													onmouseover="fimg('<%=cp%>/project3/image/logo.jpg')" /><br />
													<img src="<%=cp%>/project3/image/sleevec.jpg" width="80"
													height="80" onmouseover="fimg(this.src)" /> <img
													src="<%=cp%>/project3/image/front.jpg" width="80"
													height="80" onmouseover="fimg(this.src)" /></li>
											</ul>
										</div>

									</div>
									<!-- sangse끝,사진하단끝 -->
								</div>
								<br />
								<!-- thumb wrap끝 -->
								<div class="info">
									<div class="table-opt">
										<table>
											<tr>
												<td align="right" width="200" style="border: 1px;"
													colspan="1"><img class="detail_page" id="lens_img"
													src="${imagePath }/${pINFO }" /><br /> <!--  size?? --></td>
											<tr>
												<td colspan="2">
													<div class="opt-wrap" style="margin-top: 0">
														<dl>
															<dt>SIZE</dt>
															<dd>
																<select id="size" name="size" class="size">
																	<option value="pickOption">옵션 선택</option>
																	<option value="M">M</option>
																	<option value="L">L</option>
																	<option value="XL">XL</option>
																</select>

															</dd>
														</dl>
													</div>
												</td>
											</tr>
											<tr>
												<td><img class="detail_page" id="lens_img"
													src="${imagePath }/${pOFFICIAL }" /><br /></td>
											</tr>
											<tr>
												<td colspan="2">
													<div id="MK_innerOptWrap">
														<div id="MK_innerOptScroll">
															<ul id="MK_innerOpt_01" class="MK_inner-opt-cm"></ul>
															<ul id="MK_innerOpt_02" class="MK_inner-opt-cm"></ul>
														</div>
														<div id="MK_innerOptTotal">
															<p class="totalLeft">
																<span class="MK_txt-total">총 상품금액</span>
															</p>
															<p class="totalRIght">
																<input type="hidden" value="${pPRICE }" id="comma">
																<strong class="MK_total" id="MK_p_total">${pPRICE }</strong>
																<span class="MK_txt-won">원</span>
															</p>
														</div>
													</div>
												</td>
											</tr>
										</table>
									</div>
									<!--   분담페이지 호출 -->


									<div class="prd-btns">
										<!-- 구매버튼 -->
										<a href="javascript:sendSize1();"
											class="roll sbn01" > <span>BUY NOW</span> <span
											class="over">바로구매하기</span>
										</a> <a
											href="javascript:sendSize2();"
											class="roll sbn02" > <span>ADD TO
												CART</span> <span class="over">장바구니</span>
										</a> <a href="javascript:sendSize3();"
											class="roll sbn03" > <span>WISH-LIST</span> <span
											class="over">관심상품</span>
										</a>
										

										<%-- <a href="<%=cp %>/shop/created.do?pCONTENT=${dtob.pCONTENT }
								&pNAME=${pNAME }&pPRICE=${pPRICE } " class="roll sbn04">
								<span>Q &amp; A</span>
								<span class="over">제품문의</span>
								</a> <br/>
								<br/> --%>
										<a
											href="<%=cp %>/shop/created.do?pCONTENT=${dtob.pCONTENT }
								&pNAME=${pNAME }&pPRICE=${pPRICE } "
											class="roll sbn04"> <span>Q &amp; A</span> <span
											class="over">제품문의</span>
										</a> <br /> <br /> <img class="detail_page" id="lens_img"
											src="${imagePath }/${pNPAY }" align="left" /><br />

									</div>

									<!-- 테이블끝opt -->

								</div>
								<!-- info끝 -->
							</div>
							<br /> <br />
							<!-- thumb-info끝 -->
							<!-- 여기까지가 상단 -->
							<script language="javascript">
						function nhn_buy_nc_baro() {
							var nhnForm = document.allbasket;
							if (navigator.appName == 'Microsoft Internet Explorer') {
								var ie9_chk = navigator.appVersion
										.indexOf("MSIE 9") > -1 ? true : false;
								var ie10_chk = navigator.appVersion
										.indexOf("MSIE 10") > -1 ? true : false;

								if (ie10_chk == true) {
									ie9_chk = true;
								}
							}
							if (ie9_chk
									|| navigator.appName != 'Microsoft Internet Explorer') {
								var aElement = document.createElement("input");
								aElement.setAttribute('type', 'hidden');
								aElement.setAttribute('name', 'navercheckout');
								aElement.setAttribute('value', '1');

								if (typeof (inflowParam) != 'undefined') {
									var aElement2 = document
											.createElement("input");
									aElement2.setAttribute('type', 'hidden');
									aElement2.setAttribute('name', 'nhn_ncisy');
									aElement2
											.setAttribute('value', inflowParam);
								}
							} else {
								try {
									var aElement = document
											.createElement("<input type='hidden' name='navercheckout' value='1'>");

									if (typeof (inflowParam) != 'undefined') {
										var aElement2 = document
												.createElement("<input type='hidden' name='nhn_ncisy' value='"+inflowParam+"'>");
									}
								} catch (e) {
									var aElement = document
											.createElement("input");
									aElement.setAttribute('type', 'hidden');
									aElement.setAttribute('name',
											'navercheckout');
									aElement.setAttribute('value', '1');

									if (typeof (inflowParam) != 'undefined') {
										var aElement2 = document
												.createElement("input");
										aElement2
												.setAttribute('type', 'hidden');
										aElement2.setAttribute('name',
												'nhn_ncisy');
										aElement2.setAttribute('value',
												inflowParam);
									}

									ie9_chk = true;
								}
							}

							nhnForm.appendChild(aElement);

							if (typeof (inflowParam) != 'undefined') {
								nhnForm.appendChild(aElement2);
							}
							nhnForm.target = "loginiframe";
							nhnForm.ordertype.value = "baro|parent.";

							//send_multi('baro','');
							send_multi('', 'baro', '');
							if (ie9_chk
									|| navigator.appName != 'Microsoft Internet Explorer') {
								aElement.setAttribute('value', '');
							} else {
								nhnForm.navercheckout.value = "";
							}

							nhnForm.target = "";
							nhnForm.ordertype.value = "";
							if (!ie9_chk) {
								for (var i = 0; i < nhnForm.navercheckout.length; i++) {
									nhnForm.navercheckout[i].value = "";
								}
							}
						}
						function nhn_buy_nc_order() {

							var type = "N";
							if (type == "N") {
								window.open("order.html?navercheckout=2", "");
							} else {
								location.href = "order.html?navercheckout=2";
							}
							return false;
						}
						function nhn_wishlist_nc(url) {
							window.open(url, "",
									"scrollbars=yes,width=400,height=267");
							return false;
						}
					</script>

							<!-- 여기부터 하단 -->
							<div class="prd-detail"
								style="text-align: center; padding: 60px 0 20px"></div>
							<div id="videotalk_area"></div>
							<div style="text-align: left !important">
								<img class="detail_page" id="lens_img"
									src="${imagePath }/${pIMAGE }" width="800"
									style="max-height: 100%" /><br /> <img class="detail_page"
									id="lens_img" src="${imagePath }/${pDESC}" width="800"
									style="max-height: 100%" /><br /> <img class="detail_page"
									id="lens_img" src="<%=cp %>/project3/image/review.png"
									style="max-height: 100%; max-width: 100%" /><br />

							</div>

						</div>
						<!-- page-body끝 -->

					</div>
					<!-- prdetail끝 -->
				</div>
				<!-- content끝 -->

			</div>

		</div>
		<!-- contentWrapper전체끝 -->
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
			<div style="display: inline;">
				<img height="1" width="1" style="border-style: none;" alt=""
					src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/984775192/?value=0&guid=ON&script=0" />
			</div>
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
							<li>TERMS & CONDITIONS</li>
							<li>PRIVACY POLICY</li>
							<li><a
								href="http://www.ftc.go.kr/info/bizinfo/communicationList.jsp">BUSINESS
									LICENSE</a></li>
							<li>INTERNATIONAL ORDER</li>
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
	</form>
</body>
</html>























