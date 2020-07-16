<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html>
<head> 
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet"> 
	
		<style> 
			body { background: #f8f8f8; padding: 60px 0; } 
			#login-form > div { margin: 15px 0; } 
		</style> 
	
	<title>Home</title>
	
</head>


	<body>
	<c:if test="${empty sessionScope.loginUser}">
		<div class="LoginArea" align="center">
      
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
                     <!-- 로그아웃까지 완료하고 나서 하자 -->
                     <a href="#">아이디/비밀번호 찾기</a>
                  </td>
                  
               </tr>
            </table>
         </form>
      </div>
	</c:if>
	
	<c:if test="${!empty sessionScope.loginUser}">
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

