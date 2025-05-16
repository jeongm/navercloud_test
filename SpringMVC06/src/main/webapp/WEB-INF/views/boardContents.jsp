<%@page import="java.util.ArrayList"%>
<%@page import="com.lgdxs.entity.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>게시글 목록</title>
</head>
<body>
	<div class="container">
		<h2>Spring MVC 01</h2>
		<div class="panel panel-warning">
			<div class="panel-heading">Board List Page</div>
			<div class="panel-body">
				<%
					Board board = (Board)request.getAttribute("board");
				%>
				<table class="table table-bordered table-hover">
					<tr>
						<td>제목</td>
						<td><%= board.getTitle() %></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><%= board.getContents().replaceAll("\n","<br>")%></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><%= board.getWriter() %></td>
					</tr>
					<tr>
						<td colspan="2" align="right">
							<a href="boardList.do"><button type="button" class="btn btn-info">목록</button></a>
							<!-- <a href="boardDelete.do?idx=<%=board.getIdx() %>"><button type="reset" class="btn btn-danger">삭제</button></a> -->
							<a href="boardDelete.do/?idx=<%=board.getIdx() %>"><button type="reset" class="btn btn-danger">삭제</button></a>
							<a href="boardUpdate.do/?idx=<%=board.getIdx() %>"><button type="submit" class="btn btn-warning">수정</button></a>
						</td>
					</tr>
				</table>
				
								         
			</div>
			<!-- 보통 footer에는 기업, 웹사이트의 정보가 들어감 -->
			<div class="panel-footer">LG DX - 민현정</div>
		</div>
	</div>
</body>
</html>