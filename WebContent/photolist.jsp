<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- main_layout.jspにコンテンツとタイトルを渡す -->
<c:import url="./layout/main_layout.jsp">
	<c:param name="title" value="写真一覧"/>
	<c:param name="content">
	<!--  検索窓 -->
	<div class="search-form">
		<form action="#" method="GET">
			<div class="form-horizontal">
				<div class="form-group">
					<div class="col-xs-offset-2 col-xs-6">
						<input type="text" name="search" class="form-control" />
					</div>
					<div class="col-xs-2">
						<button type="submit" class="btn">検索</button>
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- 写真をリストで表示 -->
	<div class="pic-list">
	
		<div class="pic-row">
		<c:forEach var="p" items="${ photolist }"  begin="0" end="3">
			<div class="pic-area">
				<div class="pic">
				<img src="/HEW_Zidolympic/UploadImages/${p.img_pass }" width="200" height="auto">
				</div>
				<div class="pic-title">${p.img_title}</div>
			</div>
			</c:forEach>
		</div>
		<div class="pic-row">
		<c:forEach var="p" items="${ photolist }"  begin="4" end="7">
			<div class="pic-area">
				<div class="pic">
				<img src="/HEW_Zidolympic/UploadImages/${p.img_pass }" width="200" height="auto">
				</div>
				<div class="pic-title">${p.img_title}</div>
			</div>
			</c:forEach>
		</div>
		<div class="pic-row">
		<c:forEach var="p" items="${ photolist }"  begin="8" end="11">
			<div class="pic-area">
				<div class="pic">
				<img src="/HEW_Zidolympic/UploadImages/${p.img_pass }" width="200" height="auto">
				</div>
				<div class="pic-title">${p.img_title}</div>
			</div>
			</c:forEach>
		</div>
		<div class="pic-row">
		<c:forEach var="p" items="${ photolist }"  begin="12" end="15">
			<div class="pic-area">
				<div class="pic">
				<img src="/HEW_Zidolympic/UploadImages/${p.img_pass }" width="200" height="auto">
				</div>
				<div class="pic-title">${p.img_title}</div>
			</div>
			</c:forEach>
		</div>
		<!-- ページング -->
		<div class="paging">
			<div class="page-ahead page">　　＜＜　　</div>
			<div class="page-ahead page">　　１　　</div>
			<div class="page-ahead page">　　＞＞　　</div>
		</div>
	</div>
	</c:param>
</c:import>