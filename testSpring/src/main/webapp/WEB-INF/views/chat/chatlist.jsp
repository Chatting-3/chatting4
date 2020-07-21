<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Poor+Story&family=Single+Day&display=swap" rel="stylesheet">
<style>
	td{
		font-family: 'Single Day', cursive;
		font-size:30px;
	}	

	.table > thead > tr > th {
      text-align: center;
    }
	.table > tbody > tr > td {
      text-align: center;
    }
</style>
<meta charset="UTF-8">
<title>chatList</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet"> 
</head>
<body>

	<div class="container">
		<h1>채팅방 리스트</h1>
			<button type="submit" onclick="location.href='crinsertView.do'">채팅방 생성</button>
			<br><br>
		<table class="table table-striped table-bordered table-hover">
		<thead>
		<tr>
			<th width="10%">번호</th>
			<th width="90%">방이름</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="list" items="${list }">
			<tr>
				<td align="center">${list.chatroom_no}</td>
				<td align="left">
					<c:url var="chatroom" value="chatroomjoin.do">
						<c:param name="chatroomnumber" value="${list.chatroom_no}"/>
						<c:param name="chatroomname" value="${list.chatroomname }"/>
					</c:url>
				<a href="${chatroom }" style="color:black">${list.chatroomname} </a>
				</td>
			</tr>
			</c:forEach>
			</tbody>
	</table>
</div>

</body>
</html>