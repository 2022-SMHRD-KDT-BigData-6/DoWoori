<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 프로젝트의 contextpath 값을 동적으로 가져오는 방법  / 모든 페이지에 있어야 함-->
<c:set var = "cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>CelestialUI Admin</title>
  <!-- base:css -->
  <link rel="stylesheet" href="resources/vendors/typicons.font/font/typicons.css">
  <link rel="stylesheet" href="resources/vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="resources/css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="resources/images/favicon.png" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0 logincolor" style="background-image: url(resources/images/loginbg.jpg); background-position: 50% -25px;">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-center py-5 px-4 px-sm-5">
              <h1>Login</h1>
              <h4>이곳은 직원 전용 페이지입니다.</h4>
              <h5>Only for Employee</h5>
              
              
              <form class="pt-3" action="${cpath}/login.do" id="frm" method="post">
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" name="id" placeholder="아이디">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-lg" name="pw" placeholder="비밀번호">
                </div>
                <div class="mt-3">
                  <button type="submit" id="login" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">로그인</button>
                </div>
                <div class="text-center mt-4 font-weight-light">
                   <a href="${cpath}/join.do" class="text-primary">회원가입</a>
                </div>
              </form>

            
            
            
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- base:js -->
  <script src="resources/vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="resources/js/off-canvas.js"></script>
  <script src="resources/js/hoverable-collapse.js"></script>
  <script src="resources/js/template.js"></script>
  <script src="resources/js/settings.js"></script>
  <script src="resources/js/todolist.js"></script>
  <!-- endinject -->
  
<script type="text/javascript">
  
	$('button#login').on('click', function() {

		 var formdata = $('#frm').serialize(); 
		 
		$.ajax({
			url : '${cpath}/login.do',
			type : 'post',
			data :formdata,
			success:function(data){
	
				if(data == 'loginFail'){
					alert('로그인 실패')
					window.location.replace('${cpath}/')
				}else{
					window.location.replace('${cpath}/basic.do')
				}
			},
			error:function(){
				alert('에러')
			}
		});
	});
  
  
  
  </script>
</body>
</html>