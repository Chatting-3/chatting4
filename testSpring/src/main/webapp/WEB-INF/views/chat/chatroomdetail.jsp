<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Poor+Story&display=swap" rel="stylesheet">
<style>
		#mymsg {
			border-top-left-radius: 5px;
			border-top-right-radius: 5px;
			border-bottom-right-radius: 5px;
			border-bottom-left-radius: 5px;
			position: relative;
			background: #ffff00;
			border: 2px solid #ffff00;
		}
		#mymsg:after, #mymsg:before {
			left: 100%;
			top: 50%;
			border: solid transparent;
			content: " ";
			height: 0;
			width: 0;
			position: absolute;
			pointer-events: none;
		}
		
		#mymsg:after {
			border-color: rgba(255, 255, 0, 0);
			border-left-color: #ffff00;
			border-width: 5px;
			margin-top: -5px;
		}
		#mymsg:before {
			border-color: rgba(255, 255, 0, 0);
			border-left-color: #ffff00;
			border-width: 7px;
			margin-top: -7px;
		}
		.interval{
			margin-top:10px;
			margin-right:10px;
		}
		.intervalgreet{
			margin-top:10px;
			margin-bottom:10px;
		}
		
		
		#othermsg {
			border-top-left-radius: 5px;
			border-top-right-radius: 5px;
			border-bottom-right-radius: 5px;
			border-bottom-left-radius: 5px;
			position: relative;
			background: #ffffff;
			border: 2px solid #ffffff;
		}
		#othermsg:after, #othermsg:before {
			right: 100%;
			top: 50%;
			border: solid transparent;
			content: " ";
			height: 0;
			width: 0;
			position: absolute;
			pointer-events: none;
		}
		
		#othermsg:after {
			border-color: rgba(255, 255, 255, 0);
			border-right-color: #ffffff;
			border-width: 5px;
			margin-top: -5px;
		}
		#othermsg:before {
			border-color: rgba(255, 255, 255, 0);
			border-right-color: #ffffff;
			border-width: 8px;
			margin-top: -8px;
		}

	  p{
        font-family: 'Black And White Picture', sans-serif;
      }
      p.a{
      font-size: 50px;
      	font-weight:400;
      }
      strong{
		font-family: 'Poor Story', cursive;
      }
      strong.a{
      	font-size : 18px;
      }
      strong.b{
      	font-size : 28px;
      }


		.container {
		    overflow-y: scroll;
		    overflow-x:hidden;
		    word-break:break-all;
		    height: 90%;
		  }
		  .container::-webkit-scrollbar {
		    width: 10px;
		  }
		  .container::-webkit-scrollbar-thumb {
		    background-color: #2f3542;
		    border-radius: 10px;
		    background-clip: padding-box;
		    border: 2px solid transparent;
		  }
		  .container::-webkit-scrollbar-track {
		    background-color: grey;
		    border-radius: 10px;
		    box-shadow: inset 0px 0px 5px white;
		  }
		  
  		#chatRoomUserList{
  			width: 100px;
            height: 400px;
            border: 2px solid black;
            background: white;
  		}
	    #container {
	    	
            width: 400px;
            height: 400px;
            border: 2px solid black;
            background: ivory;
        }
        #chat {
            height: 90%;
            word-break:break-all;
            overflow-y: scroll;
            background-image: url("${pageContext.request.contextPath}/resources/img/b.jpg");
            background-size: cover;
            background-repeat: no-repeat;
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
		
		
		
		#enterdiv {
			margin-left:20px;
			border-top-left-radius: 20px;
			border-top-right-radius: 20px;
			border-bottom-right-radius: 20px;
			border-bottom-left-radius: 20px;
			position: relative;
			background: #caeaff;
			border: 5px solid #caeaff;
		}
		#enterdiv:after, #enterdiv:before {
			bottom: 100%;
			left: 50%;
			border: solid transparent;
			content: " ";
			height: 0;
			width: 0;
			position: absolute;
			pointer-events: none;
		}
		
		#enterdiv:after {
			border-color: rgba(202, 234, 255, 0);
			border-bottom-color: #caeaff;
			border-width: NaNpx;
			margin-left: -NaNpx;
		}
		#enterdiv:before {
			border-color: rgba(202, 234, 255, 0);
			border-bottom-color: #caeaff;
			border-width: NaNpx;
			margin-left: -NaNpx;
		}
		
		
		
.hidden {
  display:none;
  visibility:hidden;
}

/* 버튼으로 사용할 라벨 디자인 */
.button {
  font-size:19px;
  font-weight:600;
  vertical-align:middle;
  cursor:pointer;
}

/* 모달 윈도우 디자인 */
.box_modal {
  position:absolute;
  display:block;
  width:517px;
  height:410px;
  top:20%;
  left:30%;
  margin-top:-75px;
  margin-left:-150px;
  overflow:hidden;
  /* 아래 부분은 애니메이션 효과를 위한 부분 */
  visibility: collapse;
  opacity: 0.6;
  filter: alpha(opacity=60);
  -webkit-transition: all .2s ease;
  transition: all .2s ease;
  -webkit-transform: scale(0, 0);
  -ms-transform: scale(0, 0);
  transform: scale(0, 0);
}
.box_modal:hover {
  opacity: 1;
  filter: alpha(opacity=100);
}

/* 닫기 버튼으로 사용할 라벨 */
.closer {
  position:absolute;
  width:30px;
  height:30px;
  top:3px;
  right:3px;
  background:#eee;
  border-left:1px solid #386980;
  border-bottom:1px solid #386980;
  text-align:center;
  line-height:26px;
  font-size:16x;
  cursor:pointer;
}
.text {
  display:inline-block;
}
.text h3 {
  font-size:19px;
  margin:0;
}
.text p {
  font-size:13px;
}

/* 모달 윈도우가 팝업되는 코어 소스 */
input#modal[type=checkbox]:checked ~ .box_modal {
  visibility: visible;
  -webkit-transform: scale(1, 1);
  -ms-transform: scale(1, 1);
  transform: scale(1, 1);
}
</style>


<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<!-- <script src="lib/sockjs.min.js"></script> -->
	<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
</head>
<body>
<br><br>
<p class="a" align="center">${loginUser.nickname }님 ${cr.chatroomname }방에 오신것을 환영합니다!</p>
<br>
<h3> </h3>
<div class="wrap">
  <label for="modal" class="button">채팅방 열기</label>
</div>


<input type="checkbox" id="modal" class="hidden">
<div class="box_modal">
  <label for="modal" class="closer"><strong><b>X</b></strong></label>
  <div class="text">
    <table>
<tr>
<td>
<div id="chatRoomUserList">

</div>
</td>
<td>
<div id="container" >
	<div id="chat" class="container">
		<div id="chatdata">
			<input type="hidden" value="${loginUser.id }" id="userid">
			<input type="hidden" value="${loginUser.nickname }" id="nickname">
			<input type="hidden" value="${cr.chatroom_no }" id="chatroom_no">
			<input type="hidden" value="${cr.chatroomname } " id="chatroomname">
		</div>
	</div>
		<form id="chatForm">
			<input type="text" id="message" autocomplete=off >
			<button id="sendBtn" >send</button>
		</form>
		
</div>
</td>

</tr>
</table>
	
  </div>
</div>
<br>
		<button onclick="location.href='outchatroom.do'"  >방 나가기</button>

	<script>
	$(function() {
		$( ".box_modal" ).draggable();
	});
	</script>
	<br><br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br><br>
	<script type="text/javascript">
	//소켓 연결
	let sock = new SockJS("<c:url value="/echoroom"/>");
	
	   //소켓연결
	   sock.onopen =onOpen;

	
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
	/* --------------------------------------------------------------------------------------------------------------- */
	   function onOpen(){
		   
		   
		      var msgData ={
		            user_nickname : $("#nickname").val(),
		            chatroom_no : $("#chatroom_no").val()
		      }
		      var jsonData = JSON.stringify(msgData);
		      sock.send(jsonData);
		   }

	   /* --------------------------------------------------------------------------------------------------------------- */
	function sendMessage(){
		var msgData = {
				user_nickname : $("#nickname").val(),
				chatroom_no : $("#chatroom_no").val(),
				msg : $("#message").val()
		};
		var jsonData = JSON.stringify(msgData);//JSON.stringify란 자바스크립트의 값을 JSON 문자열로 변환한다. 
		sock.send(jsonData);
	}
	
	/* --------------------------------------------------------------------------------------------------------------- */
	function onMessage(evt){
		var data = evt.data;
		var sessionid = null;
		var message = null;
		var chatroom = null;
		
		
		/* var nickname = $("#nickname").val(); */
		
		console.log("데이타 : " + data);
		
		
		
		/* if(chatroom == currentchatroom){
			if(nickname == data){
				var printHTML = "<div>";
				printHTML += "<div>";
				printHTML += "<strong>"+nickname+"</strong>";
				printHTML += "</div>";
				printHTML += "</div>";
				
				$("#chatRoomUserList").append(printHTML);
			}else if(nickname ^= data){
				var printHTML = "<div>";
				printHTML += "<div>";
				printHTML += "<strong>"+data+"</strong>";
				printHTML += "</div>";
				printHTML += "</div>";
				
				$("#chatRoomUserList").append(printHTML);
			}
		}  */
		
		
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
		console.log("message : " + message);
		
		if(message == "null"){
			userEnter();
			var printHTML = "<div>";
			printHTML += "<div class='intervalgreet'>";
			printHTML += "<strong class='a' id='enterdiv'>&nbsp;[ "+sessionid +" ]님께서 입장하셨습니다   "+"&nbsp;</strong>";
			printHTML += "</div>";
			printHTML += "</div>";
		
			$("#chat").append(printHTML);
			return 0;
		}
		
		if(message == "믜댜퇴장듀틔"){
			userEnter();
			var printHTML = "<div>";
			printHTML += "<div class='interval'>";
			printHTML += "<strong class='a'>[ "+sessionid +" ]님께서 퇴장하셨습니다   "+"</strong>";
			printHTML += "</div>";
			printHTML += "</div>";
		
			$("#chat").append(printHTML);
			return 0;
		}
		
		 if(chatroom == currentchatroom){
			if(sessionid == currentuser_session){
				var printHTML = "<div>";
				printHTML += "<div class='interval'>";
				printHTML += "<strong class='a' style='float:right;' id='mymsg'>&nbsp;"+message+"&nbsp;</strong>";
				printHTML += "</div>";
				printHTML += "</div>";
				printHTML += "<br clear='both'>";
				$("#chat").append(printHTML);
				$("#chat").scrollTop($("#chat")[0].scrollHeight);
			}else{
				var printHTML = "<div>";
				printHTML += "<div class='interval'>";
				printHTML += "&nbsp;&nbsp;<strong class='a' style='float:left;' id='othermsg'>&nbsp;"+sessionid+" :   "+message+"&nbsp;&nbsp;</strong>";
				printHTML += "</div>";
				printHTML += "</div>";
				printHTML += "<br clear='both'>";
				$("#chat").append(printHTML);
				$("#chat").scrollTop($("#chat")[0].scrollHeight);
			} 
		
		}else{
			console.log("오류 ");
		}
		
	}
	/* --------------------------------------------------------------------------------------------------------------- */
	function onClose(evt){
		$("#data").append("연결 끊김");
		
		var msgData = {
				user_nickname : $("#nickname").val(),
				chatroom_no : $("#chatroom_no").val(),
				msg : "퇴장"
		};
		
		console.log(evt.data);
		var jsonData = JSON.stringify(msgData);
		sock.send(jsonData);
	}  
	
	/* --------------------------------------------------------------------------------------------------------------- */
	function userEnter(){
		
		console.log("오나?");
		var roomnumber = $("#chatroom_no").val();
		
		
		$.ajax({
			url:"enteruserlist.do",
			data:{roomnumber:roomnumber},
			success:function(data){
				$userlist = $("#chatRoomUserList");
				$userlist.html("");
				
				
				for(var i in data.list){
					var $div = $("<div>");
					var $nickname = $("<strong class='b'>").text(data.list[i].nickname);
					
					
					$div.append($nickname);
					$userlist.append($div);
				}
			},
			error:function(request, status, errorData){
                alert("error code: " + request.status + "\n"
                      +"message: " + request.responseText
                      +"error: " + errorData);
           }  
		});
		
	/* 	$.ajax({
			url:"entergreet.do",
			data:{roomnumber:roomnumber},
			success:function(data){
				$entergreet = $("#chat");
				
				
				for(var i in data.greet){
					var $span = $("<span>");
					var $greet = $("<strong>").text(data.greet[i].nickname + "님께서 입장하셨습니다");
					
					
					$span.append($greet);
					$entergreet.append($span);
				}
			},
			error:function(request, status, errorData){
                alert("error code: " + request.status + "\n"
                      +"message: " + request.responseText
                      +"error: " + errorData);
           }  
		}); */
	}
	
	
	
	
	
	</script>
</body>
</html>

