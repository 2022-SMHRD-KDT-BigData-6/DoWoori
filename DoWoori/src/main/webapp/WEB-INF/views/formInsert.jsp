<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 프로젝트의 contextpath 값을 동적으로 가져오는 방법  / 모든 페이지에 있어야 함-->
<c:set var = "cpath" value="${pageContext.request.contextPath}"/>

<!-- 프로젝트 내 다른 파일을 한 페이지에 뜨도록 포함시키는 방법, ""안에는 파일경로! -->
<%@include file="../views/include/chat.jsp" %>
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
  <link rel="stylesheet" href="resources/vendors/select2/select2.min.css">
  <link rel="stylesheet" href="resources/vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="resources/css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="resources/images/favicon.png" />
<meta charset="UTF-8">
<title>document</title>
</head>
<body>
  <div class="container-scroller">
    <!-- partial:resources/partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
          <a class="navbar-brand brand-logo" href="${cpath}/basic.do"><img src="resources/images/logo.svg" alt="logo"/></a>
          <a class="navbar-brand brand-logo-mini" href="${cpath}/basic.do"><img src="resources/images/logo-mini.svg" alt="logo"/></a>
          <button class="navbar-toggler navbar-toggler align-self-center d-none d-lg-flex" type="button" data-toggle="minimize">
            <span class="typcn typcn-th-menu"></span>
          </button>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">

          <ul class="navbar-nav navbar-nav-right">
            <li class="nav-item dropdown d-flex">
              <a class="nav-link count-indicator dropdown-toggle d-flex justify-content-center align-items-center" id="messageDropdown" href="#" data-toggle="dropdown">
                <i class="typcn typcn-message-typing"></i>
                <span class="count bg-success">2</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
                <p class="mb-0 font-weight-normal float-left dropdown-header">Messages</p>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <img src="resources/images/faces/face4.jpg" alt="image" class="profile-pic">
                  </div>
                  <div class="preview-item-content flex-grow">
                    <h6 class="preview-subject ellipsis font-weight-normal">David Grey
                    </h6>
                    <p class="font-weight-light small-text mb-0">
                      The meeting is cancelled
                    </p>
                  </div>
                </a>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <img src="resources/images/faces/face2.jpg" alt="image" class="profile-pic">
                  </div>
                  <div class="preview-item-content flex-grow">
                    <h6 class="preview-subject ellipsis font-weight-normal">Tim Cook
                    </h6>
                    <p class="font-weight-light small-text mb-0">
                      New product launch
                    </p>
                  </div>
                </a>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <img src="resources/images/faces/face3.jpg" alt="image" class="profile-pic">
                  </div>
                  <div class="preview-item-content flex-grow">
                    <h6 class="preview-subject ellipsis font-weight-normal"> Johnson
                    </h6>
                    <p class="font-weight-light small-text mb-0">
                      Upcoming board meeting
                    </p>
                  </div>
                </a>
              </div>
            </li>
            <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle  pl-0 pr-0" href="#" data-toggle="dropdown" id="profileDropdown">
                <i class="typcn typcn-user-outline mr-0"></i>
                <span class="nav-profile-name">${uvo.name}</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">

							<a class="dropdown-item" onclick="CheckSession(); localStorage.clear()"> <i
								class="typcn typcn-power text-primary" ></i> 로그아웃
							</a>
              </div>
            </li>
          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="typcn typcn-th-menu"></span>
          </button>
        </div>
      </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <div class="d-flex sidebar-profile">
              <div class="sidebar-profile-image">
                <img src="resources/images/faces/face21.jpg" alt="image">
                <span class="sidebar-status-indicator"></span>
              </div>
              <div class="sidebar-profile-name">
                <p class="sidebar-name">
                	${uvo.name}
                </p>
                <p class="sidebar-designation">
                	${uvo.spot}
                </p>
              </div>
            </div>
            <div class="nav-search">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Google 검색" aria-label="search" aria-describedby="search">
                <div class="input-group-append">
                  <span class="input-group-text" id="search">
                    <i class="typcn typcn-zoom"></i>
                  </span>
                </div>
              </div>
            </div>
            <p class="sidebar-menu-title">menu</p>
          </li>
         <li class="nav-item">
            <a class="nav-link" href="${cpath}/basic.do">
              <i class="typcn typcn-device-desktop menu-icon"></i>
              <span class="menu-title">마이페이지</span>
            </a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="${cpath}/company.do">
              <i class="typcn typcn-chart-pie-outline menu-icon"></i>
              <span class="menu-title">회사 정보</span>
            </a>
          </li>  
  
          <li class="nav-item">
            <a class="nav-link" href="${cpath}/document.do?userId=${uvo.id}&deptNum=${uvo.deptNum}">
              <i class="typcn typcn-pen menu-icon"></i>
              <span class="menu-title">기안문 제출 현황</span>
            </a>
          </li>
          
          <c:if test="${uvo.position eq '팀장'}">
	          <li class="nav-item">
	            <a class="nav-link" href="${cpath}/approve.do">
	              <i class="typcn typcn-clipboard menu-icon"></i>
	              <span class="menu-title">결재 대기 현황</span>
	            </a>
	          </li>    
         </c:if>


        </ul>

      </nav>
      
      <!-- partial -->
      <div class="main-panel">        
        <div class="content-wrapper main">
          <div class="row">
    

<!--  -->
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">기안문 제출</h4>
                  <div class="table-responsive pt-3">

					<!-- 기안문 유형 select, userId 자동입력, 시작일/종료일 달력으로 받기,
					시간구분 select (반차일때만!), 사유, 결재자id 자동으로 받기 -->
					
                   <form class="form-horizontal" action="${cpath}/formInsert.do" method="post">
		               <div class="form-group">
		                  <label class="control-label col-sm-2" for="docuType">기안문 유형:</label>
		                  <div class="col-sm-10">
		                      <select class="form-control form-control-lg" id="docuType"  name="docuType">
			                    <option>유형 선택</option>
			                    <option value="연차">연차</option>
			                    <option value="반차">반차</option>
			                    <option value="휴직서">휴직서</option>
			                    <option value="사직서">사직서</option>
			                  </select>
		                  </div>
		               </div>
		               <div class="form-group">
		                  <div class="col-sm-10">
		                     <input type="hidden" class="form-control" id="userId" name="userId" value="${uvo.id}">
		                  </div>
		               </div>
		               <div class="form-group">
		                  <label class="control-label col-sm-2" for="startDate">시작일:</label>
		                  <div class="col-sm-10">
		                     <input type="date" class="form-control" id="startDate" name="startDate">
		                  </div>
		               </div>
		               <div class="form-group">
		                  <label class="control-label col-sm-2" for="endDate">종료일:</label>
		                  <div class="col-sm-10">
		                     <input type="date" class="form-control" id="endDate" name="endDate">
		                  </div>
		               </div>
		               
		               <!--  -->
		               <div class="form-group">
		                  <label class="control-label col-sm-2" for="utime">시간구분(반차):</label>
		                  <div class="col-sm-10">
		                     <select class="form-control form-control-lg" id="utime"  name="utime">
			                    <option value="오전">오전</option>
			                    <option value="오후">오후</option>
			                    <option value="종일">종일</option>
			                  </select>
		                  </div>
		               </div>
		               <!--  -->
		    
		               <div class="form-group">
		                  <label class="control-label col-sm-2" for="reason">사유:</label>
		                  <div class="col-sm-10"> 
		                     <textarea rows="10" class="form-control" id="reason" name="reason"></textarea>		                     
		                  </div>
		               </div>
		               
		               <!-- 결재자 ID 가져오는 방법? -->
		              <div class="form-group"  style="display:none">
		                  <div class="col-sm-10"> 
			                  <c:if test="${uvo.deptNum == '101'}">
			                   	<input type="hidden" class="form-control" id="adminId" name="adminId" value='master1'>
			                  </c:if>
			                  <c:if test="${uvo.deptNum == '102'}">
			                   	<input type="hidden" class="form-control" id="adminId" name="adminId" value='master2'>
			                  </c:if>
			                  <c:if test="${uvo.deptNum == '103'}">
			                   	<input type="hidden" class="form-control" id="adminId" name="adminId" value='master3'>
			                  </c:if>		                    		                     
		                  </div>
		               </div>
		               
		               <div class="form-group">
		                  <div class="col-sm-offset-2 col-sm-10">
		                     <button type="submit" class="btn btn-default btn-primary btn-sm">제출</button>
		                  </div>
		               </div>
		            </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- partial -->
      </div>
      <!-- main-panel ends -->
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
  <!-- plugin js for this page -->
  <script src="resources/vendors/typeahead.js/typeahead.bundle.min.js"></script>
  <script src="resources/vendors/select2/select2.min.js"></script>
  <!-- End plugin js for this page -->
  <!-- Custom js for this page-->
  <script src="resources/js/file-upload.js"></script>
  <script src="resources/js/typeahead.js"></script>
  <script src="resources/js/select2.js"></script>
  <!-- End custom js for this page-->
  <script type="text/javascript">
	  function CheckSession(){
	  	if(sessionStorage.getItem("loginKey") == null){
	  		window.location.replace("${cpath}/logout.do")
	  	}
	  }
	  
	  

  </script>
</body>
</html>