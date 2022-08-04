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
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo">
                <img src="resources/images/logo.svg" alt="logo">
              </div>
              <h4>안녕하세요!</h4>
              <h6 class="font-weight-light">로그인을 해주세요.</h6>
              
              
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
  
 <!--  <script type="text/javascript">
  
	$('button#login').on('click', function() {
		let id = $('input[name=id]').val();
		let pw = $('input[name=pw]').val();
		$.ajax({
			url : '${cpath}/login.do',
			type : 'POST',
			data : {
				'id' : id,
				'pw' : pw,
			},
			dataType : 'text',
			success : function(login) {
				if (!login) {
					alert('아이디 또는 비밀번호를 잘못 입력했습니다. 입력하신 내용을 다시 확인해주세요.')
				} else {
					location.replace('basic.do');
				}
			},
			error : function() {
				alert('연결 실패')
			}
		});
	});
  
  
  
  </script> -->
</body>
</html>