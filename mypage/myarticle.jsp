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
<link href="<%=cp%>/project3/login/img/icon.png" rel="shortcut icon" type="image/x-icon">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<title>주문 내역</title>

<link type="text/css" rel="stylesheet" href="/shopimages/zooyork77/template/work/37329/common.css?r=1616560623" />
<link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css' rel='stylesheet' type='text/css' />
<link href='http://zooyork77.img7.kr/onedesign/mainrolling/nerveSlider.min.css' rel='stylesheet' type='text/css' />
<link href='http://cdn.rawgit.com/young-ha/webfont-archive/20161201/css/Arita-dotum.css' rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" type="text/css" href="http://cdn015.negagea.net/wherehouse/2018/webstore/feature/staffsnap/css/pgwslider.css" />

<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/unit_header.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/scroll.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/main.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/header.3.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/footer.1.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/project3/shopimages/zooyork77/template/work/37329/common.css">


<link rel="stylesheet" type="text/css" href="<%=cp %>/project3//mypage/css/common.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp %>/project3//mypage/css/mp_main.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp %>/project3//mypage/css/mp_article.css"/>

</head>
<body>
<div id="contentWrapper">
<div id="contentWrap">
<div id="content">
	<div class="title_etc">
		<h2>BOARD LIST</h2>
	</div>
	<div class="mytitle2">
		<ul>
			<li><a href="<%=cp %>/shop/myorder.do">주문조회</a> </li>
			<li><a href="<%=cp %>/shop/mywishlist.do">관심상품</a></li>
			<li><a href="<%=cp %>/shop/mym2mboard.do">1:1게시판</a></li>
			<li><a href="<%=cp %>/shop/myarticle.do">Q&A게시판</a></li>
			<li><a href="<%=cp %>/shop/myreserve.do">적립금</a></li>
		</ul>	
	</div>
	<div id="myHistory">
		<div class="page-body">
			<p class="t-box-msg">
			<strong>${sessionScope.customInfo.name }</strong>님이 쇼핑몰 게시판에 작성한 게시글 내역입니다.
			</p>
			<div class="total-page">
				<p class="total">총 게시판: 0건</p>
				<p class="page">PAGE 1/1</p>
			</div>
			<div class="table-d2-list">
				<table summary="번호, 게시판, 제목, 날짜, hit수">
				<caption>내 게시글 리스트</caption>
				<colgroup>
					<col width="65" />
					<col width="100" />
					<col width="*" />
					<col width="100" />
					<col width="65" />					
				</colgroup>
				<thead>
				<tr>
					<th scope="row"><div class="tb-center">번호</div></th>
					<th scope="row"><div class="tb-center">게시판</div></th>
					<th scope="row"><div class="tb-center">제목</div></th>
					<th scope="row"><div class="tb-center">날짜</div></th>
					<th scope="row"><div class="tb-center">조회수</div></th>
				</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="8"><div class="tb-center">작성된 게시글이 없습니다.</div></td>
					</tr>
				</tbody>				                       
				</table>
			</div>
			<ol class="paging">
			</ol>
			</div>
		</div>
	</div>
</div>
</div>
</body>
</html>



