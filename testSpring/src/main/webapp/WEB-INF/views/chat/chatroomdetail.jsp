<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
	    #container {
	    	margin-left:430px;
            width: 400px;
            height: 400px;
            border: 1px solid black;
            background: ivory;
        }
        #chat {
            height: 90%;
            word-break:break-all;
            overflow-y: scroll;
        }
        #chatForm {
            height: 10%;
            border-top: 1px solid black;
            text-align: center;
        }
        #message {
            width: 80%;
            height: 32px;
            border-radius: 8px;
        }
        #sendBtn {
            width: 16%;
            height: 34px;
            border-radius: 50px;
            background: black;
            color: white;
        }

	
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- <script src="lib/sockjs.min.js"></script> -->
	<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
</head>
<body>
<br><br>
<h1 align="center">${loginUser.nickname }님 ${cr.chatroomname }방에 오신것을 환영합니다!</h1>
<br>
<h3> </h3>
	
<div id="container">
	<div id="chat">
		<div id="chatdata">
			<input type="hidden" value="${loginUser.id }" id="userid">
			<input type="hidden" value="${loginUser.nickname }" id="nickname">
			<input type="hidden" value="${cr.chatroom_no }" id="chatroom_no">
			<input type="hidden" value="${cr.chatroomname } " id="chatroomname">
		</div>
	</div>
		<form id="chatForm">
			<input type="text" id="message" >
			<button id="sendBtn" >send</button>
		</form>
		<br>
		<button onclick="location.href='outchatroom.do'"  >방 나가기</button>
</div>
<div id="chatRoomUserList">
	
</div>
	
	<br><br><br><br><br><br>
	<script type="text/javascript">
	//소켓 연결
	let sock = new SockJS("<c:url value="/echoroom"/>");
	
	//메세지전송
	sock.onmessage = onMessage;
	
	//연결 끊음
	sock.onclose = onClose;
	

	$(document).ready(function(){
		$("#chatForm").submit(function(event){
			event.preventDefault();
			sendMessage();
			console.log('send message...');
			$("#message").val('').focus();
		});
	});
	
	
	function sendMessage(){
		var msgData = {
				user_nickname : $("#nickname").val(),
				chatroom_no : $("#chatroom_no").val(),
				msg : $("#message").val()
		};
		var jsonData = JSON.stringify(msgData);//JSON.stringify란 자바스크립트의 값을 JSON 문자열로 변환한다. 
		sock.send(jsonData);
	}
	
	function onMessage(evt){
		var data = evt.data;
		var sessionid = null;
		var message = null;
		var chatroom = null;
		
		console.log("연결됐을시" + data);
		var nickname = $("#nickname").val();
		
		if(data == nickname){
			var printHTML = "<div>";
			printHTML += "<div>";
			printHTML += "<strong>"+data+"</strong>";
			printHTML += "</div>";
			printHTML += "</div>";
			
			$("#chat").append(printHTML);
			return;
		}
		
		
		//여기보다가 end
		var strArray = data.split("|");
		
		for(var i=0; i<strArray.length;i++){
			console.log("str["+i+"]" + strArray[i]);
		}
		var currentuser_session = $("#nickname").val();
		var currentchatroom = $("#chatroom_no").val();
		console.log("current_session_nickname : " + currentuser_session);
		
		//1. 채팅방번호  2.세션아이디 3.메세지내용
		chatroom = strArray[0];
		sessionid = strArray[1];
		message = strArray[2];
		console.log("chatroom :" + chatroom);
		console.log("currentchatroom" + currentchatroom);
		if(chatroom == currentchatroom){
			if(sessionid == currentuser_session){
				var printHTML = "<div>";
				printHTML += "<div>";
				printHTML += "<strong>["+sessionid +"] -> "+message+"</strong>";
				printHTML += "</div>";
				printHTML += "</div>";
			
				$("#chatdata").append(printHTML);
			}else{
				var printHTML = "<div>";
				printHTML += "<div>";
				printHTML += "<strong>["+sessionid+"] -> "+message+"</strong>";
				printHTML += "</div>";
				printHTML += "</div>";
				
				$("#chatdata").append(printHTML);
				
			}
		
		}else{
			console.log("오류 ");
		}
		
	}
	
	function onClose(evt){
		$("#data").append("연결 끊김");
	}  
	</script>
</body>
</html>