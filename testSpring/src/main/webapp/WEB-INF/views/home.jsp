<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html>
<head> 
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet"> 
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<style> 
			/* body { background: #f8f8f8; padding: 60px 0; }  */
			
			#login-form > div {
			 margin: 15px 0;
			  } 
			
			body{
                margin:0;
                padding:0;
                font-family:sans-serif;
            }
            .loginbox{
                width:320px;
                height:420px;
                background: #000;
                color:#fff;
                top:50%;
                left:50%;
                position:absolute;
                transform:translate(-50%, -50%);
                box-sizing: border-box;
                padding:70px 30px;
            }
            .avatar{
                width: 100px;
                height: 100px;
                border-radius: 50%;
                position:absolute;
                top:-50px;
                left: calc(50% - 50px);
            }
            h1{
                margin:0;
                padding:0 0 20px;
                text-align: center;
                font-size: 22px;
            }
            .loginbox p{
                margin:0;
                padding:0;
                font-weight:bold;
            }
            .loginbox input{
                width: 100%;
                margin-bottom: 20px;
            }
            .loginbox input[type="text"], input[type="password"]{
                border:none;
                border-bottom: 1px solid #fff;
                background: transparent;
                outline: none;
                height: 40px;
                color: #fff;
                font-size: 16px;
            }
            .loginbox input[type="submit"]{
                border: none;
                outline:none;
                height: 40px;
                background: #2ac1bc;
                color:#fff;
                font-size: 24px;
                border-radius: 20px;
                font-weight: bold;
            }
            .loginbox input[type="submit"]:hover{
                cursor: pointer;
                background: #ffc107;
                color:#000;
            }
            .loginbox a{
                text-decoration: none;
                font-size: 12px;
                line-height: 20px;
                color: darkgrey;
            }
			
			
		</style> 
	
	<title>Home</title>
	        
	
	
</head>


	<body>
	<c:if test="${empty sessionScope.loginUser}">
		<!-- <div class="LoginArea" align="center">
      
         <form action="login.do" method="post">
            <table id="loginTable" style="text-align:center">
               <tr>
                  <td>아이디</td>
                  <td><input type="text" class="btn btn-outline-dark" name="id"></td>
                  <td rowspan="2">
                     <button type="submit" class="btn btn-success" id="loginBtn">로그인</button>
                  </td>
               </tr>
               <tr>
                  <td>비밀번호</td>
                  <td><input type="password" class="btn btn-outline-dark" name="pwd"></td>
               </tr>
               <tr>
                  <td colspan="3">
                     <a href="enrollview.do">회원가입</a>
                     로그아웃까지 완료하고 나서 하자
                     <a href="#">아이디/비밀번호 찾기</a>
                  </td>
                  
               </tr>
            </table>
         </form>
      </div> -->
        <div class="loginbox">
            <img src="${pageContext.request.contextPath}/resources/img/a.jpg" class="avatar"> 
            <h1>로그인해라</h1>
          <form action="login.do" method="post">
                <p>아이디</p>
                <input type="text" name="id" placeholder="아이디를 입력하시오">
                <p>비밀번호</p>
                <input type="password" name="pwd" placeholder="비밀번호를 입력하시오">
                <input type="submit" name="" value="로그인">
                <a href="#">아이디/비밀번호 찾기</a><br>
                <a href="#">회원가입</a>
            </form>
        </div>
      
      
	</c:if>
	
	<c:if test="${!empty sessionScope.loginUser}">
	<br><br><br>
		<div class="container" align="center"> 
			<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
				<div class="panel panel-success"> 
					<div class="panel-heading"> 
						<div class="panel-title">환영합니다!</div>
				 	</div> 
				 		<div class="panel-body">
							<form id="login-form" method="post" action="loginProcess.do"> 
								<div>
									<input type="text" name="nickname" class="form-control"   value="${loginUser.nickname }"  readonly>
								</div> 
								<div> 
									<button type="submit" class="form-control btn btn-primary">채팅 입장</button> 
								</div> 
							</form> 
						</div>
					</div>
				</div>
		</div>
		</c:if>
	</body>
</html>

