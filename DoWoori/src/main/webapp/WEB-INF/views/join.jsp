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
              
              <h4>회원가입</h4>
              <h6 class="font-weight-light"></h6>
             
             
              <form class="pt-3" method="post" action="${cpath}/join.do" id="frm">
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" name="id" placeholder="사원ID">
                </div>
                
                <div class="form-group">
                  <input type="password" class="form-control form-control-lg" name="pw" placeholder="비밀번호">
                </div>
                
                
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" name="name" placeholder="이름">
                </div>
                
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" name="userNum" placeholder="사원번호">
                </div>
                
                <div class="form-group">
                  <select class="form-control form-control-lg" name="deptNum">
                    <option>부서 선택</option>
                    <option value="101">인사관리부</option>
                    <option value="102">고객관리부</option>
                    <option value="103">경영지원부</option>
                  </select>
                </div>
                
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" name="spot" placeholder="직위">
                </div>
                
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" name="position" placeholder="직책">
                </div>
                
                
                <div class="mt-3">
                   <button type="button" id="join" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">가입하기</button>
                </div>
                
                
                <div class="text-center mt-4 font-weight-light">
                  이미 아이디가 있으신가요? <a href="${cpath}/login.do" class="text-primary">로그인</a>
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
  		$('button#join').on('click', function(){
  		  	var formdata = $('#frm').serialize(); 
  			
  			$.ajax({
  				url : '${cpath}/join.do',
  				type: 'post',
  				data: formdata,

  				
  				success: function(){
  						alert('회원가입 성공! 로그인 해주세요');
						location.replace('login.do');
  					
  				},
  				error : function(){
  					alert('id가 중복되었거나 입력형식이 잘못되었습니다. 다시 입력해주세요');
					$("#frm")[0].reset();
  				}
  				
  				
  				
  			});
  			
  		});
  	
  	</script>
  
</body>
</html>