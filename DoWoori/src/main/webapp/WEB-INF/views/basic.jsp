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
<title>basic</title>

	<!-- 캘린더 템플릿 -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="resources/fonts/icomoon/style.css">
    <link href='resources/fullcalendar/packages/core/main.css' rel='stylesheet' />
    <link href='resources/fullcalendar/packages/daygrid/main.css' rel='stylesheet' />
    
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/style.css">

   <!-- 기본 -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <link rel="stylesheet" href="resources/vendors/typicons.font/font/typicons.css">
   <link rel="stylesheet" href="resources/vendors/css/vendor.bundle.base.css">
   <link rel="stylesheet" href="resources/vendors/select2/select2.min.css">
   <link rel="stylesheet" href="resources/vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
   <link rel="stylesheet" href="resources/css/vertical-layout-light/style.css">
   <link rel="shortcut icon" href="resources/images/favicon.png" />
<meta charset="UTF-8">
</head>

<body>
    <div class="container-scroller">
      <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
          <a class="navbar-brand brand-logo" href="${cpath}/basic.do"><img src="resources/images/logob.png" alt="logo"/></a>
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
                <p class="mb-0 font-weight-normal float-left dropdown-header">메세지</p>
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
            <li class="nav-item dropdown  d-flex">
              <a class="nav-link count-indicator dropdown-toggle d-flex align-items-center justify-content-center" id="notificationDropdown" href="#" data-toggle="dropdown">
                <i class="typcn typcn-bell mr-0"></i>
                <span class="count bg-danger">2</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                <p class="mb-0 font-weight-normal float-left dropdown-header">알림</p>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-success">
                      <i class="typcn typcn-info-large mx-0"></i>
                    </div>
                  </div>
                  <div class="preview-item-content">
                    <h6 class="preview-subject font-weight-normal">Application Error</h6>
                    <p class="font-weight-light small-text mb-0">
                      Just now
                    </p>
                  </div>
                </a>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-warning">
                      <i class="typcn typcn-cog mx-0"></i>
                    </div>
                  </div>
                  <div class="preview-item-content">
                    <h6 class="preview-subject font-weight-normal">Settings</h6>
                    <p class="font-weight-light small-text mb-0">
                      Private message
                    </p>
                  </div>
                </a>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-info">
                      <i class="typcn typcn-user-outline mx-0"></i>
                    </div>
                  </div>
                  <div class="preview-item-content">
                    <h6 class="preview-subject font-weight-normal">New user registration</h6>
                    <p class="font-weight-light small-text mb-0">
                      2 days ago
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
                <a class="dropdown-item" onclick="CheckSession()">
                <i class="typcn typcn-power text-primary"></i>
                로그아웃
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
                <img src="resources/images/faces/face29.png" alt="image">
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
                <input type="text" class="form-control" placeholder="Type to search..." aria-label="search" aria-describedby="search">
                <div class="input-group-append">
                  <span class="input-group-text" id="search">
                    <i class="typcn typcn-zoom"></i>
                  </span>
                </div>
              </div>
            </div>
            <p class="sidebar-menu-title">Menu</p>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${cpath}/basic.do">
              <i class="typcn typcn-device-desktop menu-icon"></i>
              <span class="menu-title">마이페이지</span>
            </a>
          </li>
  
          <li class="nav-item">
            <a class="nav-link" href="${cpath}/document.do?userId=${uvo.id}&deptNum=${uvo.deptNum}">
              <i class="typcn typcn-film menu-icon"></i>
              <span class="menu-title">기안문 제출 현황</span>
            </a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="${cpath}/company.do">
              <i class="typcn typcn-chart-pie-outline menu-icon"></i>
              <span class="menu-title">회사 정보</span>
            </a>
          </li>
          <c:if test="${uvo.position eq '팀장'}">
	          <li class="nav-item">
	            <a class="nav-link" href="${cpath}/approve.do">
	              <i class="typcn typcn-th-small-outline menu-icon"></i>
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
              <div class="col-lg-12 d-flex grid-margin stretch-card">
             
              </div>
            </div>
            <div class="row">
              <div class="col-lg-4 d-flex grid-margin stretch-card">
                <div class="content">
					<div id='calendar'></div>
                </div>
              </div>
              <div class="col-lg-8 d-flex grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-flex flex-wrap justify-content-between">
                      <h4 class="card-title mb-3">기안문 제출 현황</h4>
                    </div>
                    <div class="table-responsive">
                      <table class="table">
                        <tbody>
                          <tr>
                            <td>
                              <div class="d-flex">
                                <img class="img-sm rounded-circle mb-md-0 mr-2" src="resources/images/faces/face30.png" alt="profile image">
                                <div>
                                  <div> Company</div>
                                  <div class="font-weight-bold mt-1">volkswagen</div>
                                </div>
                              </div>
                            </td>
                            <td>
                              Budget
                              <div class="font-weight-bold  mt-1">$2322 </div>
                            </td>
                            <td>
                              Status
                              <div class="font-weight-bold text-success  mt-1">88% </div>
                            </td>
                            <td>
                              Deadline
                              <div class="font-weight-bold  mt-1">07 Nov 2019</div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="d-flex">
                                <img class="img-sm rounded-circle mb-md-0 mr-2" src="resources/images/faces/face31.png" alt="profile image">
                                <div>
                                  <div> Company</div>
                                  <div class="font-weight-bold  mt-1">Land Rover</div>
                                </div>
                              </div>
                            </td>
                            <td>
                              Budget
                              <div class="font-weight-bold  mt-1">$12022  </div>
                            </td>
                            <td>
                              Status
                              <div class="font-weight-bold text-success  mt-1">70% </div>
                            </td>
                            <td>
                              Deadline
                              <div class="font-weight-bold  mt-1">08 Nov 2019</div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="d-flex">
                                <img class="img-sm rounded-circle mb-md-0 mr-2" src="resources/images/faces/face32.png" alt="profile image">
                                <div>
                                  <div> Company</div>
                                  <div class="font-weight-bold  mt-1">Bentley </div>
                                </div>
                              </div>
                            </td>
                            <td>
                              Budget
                              <div class="font-weight-bold  mt-1">$8,725</div>
                            </td>
                            <td>
                              Status
                              <div class="font-weight-bold text-success  mt-1">87% </div>
                            </td>
                            <td>
                              Deadline
                              <div class="font-weight-bold  mt-1">11 Jun 2019</div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="d-flex">
                                <img class="img-sm rounded-circle mb-md-0 mr-2" src="resources/images/faces/face33.png" alt="profile image">
                                <div>
                                  <div> Company</div>
                                  <div class="font-weight-bold  mt-1">Morgan </div>
                                </div>
                              </div>
                            </td>
                            <td>
                              Budget
                              <div class="font-weight-bold  mt-1">$5,220 </div>
                            </td>
                            <td>
                              Status
                              <div class="font-weight-bold text-success  mt-1">65% </div>
                            </td>
                            <td>
                              Deadline
                              <div class="font-weight-bold  mt-1">26 Oct 2019</div>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <div class="d-flex">
                                <img class="img-sm rounded-circle mb-md-0 mr-2" src="resources/images/faces/face34.png" alt="profile image">
                                <div>
                                  <div> Company</div>
                                  <div class="font-weight-bold  mt-1">volkswagen</div>
                                </div>
                              </div>
                            </td>
                            <td>
                              Budget
                              <div class="font-weight-bold  mt-1">$2322 </div>
                            </td>
                            <td>
                              Status
                              <div class="font-weight-bold text-success mt-1">88% </div>
                            </td>
                            <td>
                              Deadline
                              <div class="font-weight-bold  mt-1">07 Nov 2019</div>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
          <footer class="footer">
         
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <script src="resources/vendors/js/vendor.bundle.base.js"></script>
    <script src="resources/js/off-canvas.js"></script>
    <script src="resources/js/hoverable-collapse.js"></script>
    <script src="resources/js/template.js"></script>
    <script src="resources/js/settings.js"></script>
    <script src="resources/js/todolist.js"></script>
    <script src="resources/vendors/progressbar.js/progressbar.min.js"></script>
    <script src="resources/vendors/chart.js/Chart.min.js"></script>
    <script src="resources/js/dashboard.js"></script>

    <!-- 캘린더 스크립트 -->
    <script src="resources/js/popper.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>

    <script src='resources/fullcalendar/packages/core/main.js'></script>
    <script src='resources/fullcalendar/packages/interaction/main.js'></script>
    <script src='resources/fullcalendar/packages/daygrid/main.js'></script>

    <script>
    
    function CheckSession(){
    	if(sessionStorage.getItem("loginKey") == null){
    		window.location.replace("${cpath}/")
    	}
    }
    
      document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid' ],
      defaultDate: '2022-08-12',
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
        {
          title: '미팅',
          start: '2022-08-15'
        },
        {
          title: '출장',
          start: '2022-08-24',
          end: '2022-08-25'
        },
        {
          title: '마감일',
          url: 'http://google.com/',
          start: '2022-08-26'
        }
      ]
    });

    calendar.render();
  });
      
      console.log("${uvo.name}")

    	</script>

    <script src="resources/js/main.js"></script>

</body>
</html>