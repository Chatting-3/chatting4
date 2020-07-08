<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
	<meta charset="UTF-8"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- <script src="lib/sockjs.min.js"></script> -->
	<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
</head>
<body>
	<form id="chatForm">
		<input type="text" id="message"/>
		<button>send</button>
	</form>
	<div id="chat"></div>
	<script>
		$(document).ready(function(){
			$("#chatForm").submit(function(event){
				event.preventDefault();
				console.log("연결 종료");
				sock.send($("#message").val());
				$("#message").val('').focus();
			});
		});
		
		var sock = new SockJS("<c:url value="/echo"/>");
		sock.onmessage = function(e){
			console.log("onmessage");
			$("#chat").append(e.data + "<br/>");
		}
		
		sock.onclose = function(){
			console.log("연결 종료");
			$("#chat").append("연결 종료");
		}
		
	</script>
</body>
</html>