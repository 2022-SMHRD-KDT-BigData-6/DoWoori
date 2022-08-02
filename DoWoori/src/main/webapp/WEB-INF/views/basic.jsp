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
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="resources/css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="resources/images/favicon.png" />
<title>index</title>

</head>
<body>

    <div class="container-scroller">
      <!-- partial:partials/_navbar.html -->
      <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
          <a class="navbar-brand brand-logo" href="${cpath}/"><img src="resources/images/logo.svg" alt="logo"/></a>
          <a class="navbar-brand brand-logo-mini" href="${cpath}/"><img src="resources/images/logo-mini.svg" alt="logo"/></a>
          <button class="navbar-toggler navbar-toggler align-self-center d-none d-lg-flex" type="button" data-toggle="minimize">
            <span class="typcn typcn-th-menu"></span>
          </button>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">

          <ul class="navbar-nav navbar-nav-right">
            <li class="nav-item d-none d-lg-flex  mr-2">
              <a class="nav-link" href="#">
                Help
              </a>
            </li>
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
            <li class="nav-item dropdown  d-flex">
              <a class="nav-link count-indicator dropdown-toggle d-flex align-items-center justify-content-center" id="notificationDropdown" href="#" data-toggle="dropdown">
                <i class="typcn typcn-bell mr-0"></i>
                <span class="count bg-danger">2</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                <p class="mb-0 font-weight-normal float-left dropdown-header">Notifications</p>
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
                <span class="nav-profile-name">김연이</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                <a class="dropdown-item">
                <i class="typcn typcn-cog text-primary"></i>
                설정
                </a>
                <a class="dropdown-item">
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
        <!-- partial:partials/_settings-panel.html -->
        <div class="theme-setting-wrapper">

          <div id="theme-settings" class="settings-panel">
            <i class="settings-close typcn typcn-delete-outline"></i>
            <p class="settings-heading">SIDEBAR SKINS</p>
            <div class="sidebar-bg-options" id="sidebar-light-theme">
              <div class="img-ss rounded-circle bg-light border mr-3"></div>
              Light
            </div>
            <div class="sidebar-bg-options selected" id="sidebar-dark-theme">
              <div class="img-ss rounded-circle bg-dark border mr-3"></div>
              Dark
            </div>
            <p class="settings-heading mt-2">HEADER SKINS</p>
            <div class="color-tiles mx-0 px-4">
              <div class="tiles success"></div>
              <div class="tiles warning"></div>
              <div class="tiles danger"></div>
              <div class="tiles primary"></div>
              <div class="tiles info"></div>
              <div class="tiles dark"></div>
              <div class="tiles default border"></div>
            </div>
          </div>
        </div>
        <!-- partial -->
        <!-- partial:partials/_sidebar.html -->
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
                  김연이
                </p>
                <p class="sidebar-designation">
                  사원
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
            <a class="nav-link" href="${cpath}/">
              <i class="typcn typcn-device-desktop menu-icon"></i>
              <span class="menu-title">마이페이지<span class="badge badge-primary ml-3">New</span></span>
            </a>
          </li>
  
          <li class="nav-item">
            <a class="nav-link" href="${cpath}/document.do">
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
          
          <li class="nav-item">
            <a class="nav-link" href="${cpath}/approve.do">
              <i class="typcn typcn-th-small-outline menu-icon"></i>
              <span class="menu-title">결재 대기 현황</span>
            </a>
          </li>
         
         
         
         <!-- 추후 로그인은 첫페이지에!!! -->
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <i class="typcn typcn-user-add-outline menu-icon"></i>
              <span class="menu-title">로그인</span>
             
            </a>
            <div class="collapse" id="auth">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="resources/pages/samples/login.html"> Login </a></li>
                <li class="nav-item"> <a class="nav-link" href="resources/pages/samples/register.html"> Register </a></li>
              </ul>
            </div>
          </li>     
        </ul>
       
      </nav>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">

            <div class="row">
              <div class="col-lg-12 d-flex grid-margin stretch-card">
             
              </div>
            </div>
            <div class="row">
              <div class="col-lg-4 d-flex grid-margin stretch-card">
                <div class="card">

                </div>
              </div>
              <div class="col-lg-8 d-flex grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-flex flex-wrap justify-content-between">
                      <h4 class="card-title mb-3">Project status</h4>
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
                            <td>
                              <button type="button" class="btn btn-sm btn-secondary">edit actions</button>
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
                            <td>
                              <button type="button" class="btn btn-sm btn-secondary">edit actions</button>
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
                            <td>
                              <button type="button" class="btn btn-sm btn-secondary">edit actions</button>
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
                            <td>
                              <button type="button" class="btn btn-sm btn-secondary">edit actions</button>
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
                            <td>
                              <button type="button" class="btn btn-sm btn-secondary">edit actions</button>
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
    <!-- container-scroller -->
    <!-- base:js -->
    <script src="resources/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page-->
    <!-- End plugin js for this page-->
    <!-- inject:js -->
    <script src="resources/js/off-canvas.js"></script>
    <script src="resources/js/hoverable-collapse.js"></script>
    <script src="resources/js/template.js"></script>
    <script src="resources/js/settings.js"></script>
    <script src="resources/js/todolist.js"></script>
    <!-- endinject -->
    <!-- plugin js for this page -->
    <script src="resources/vendors/progressbar.js/progressbar.min.js"></script>
    <script src="resources/vendors/chart.js/Chart.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- Custom js for this page-->
    <script src="resources/js/dashboard.js"></script>
    <!-- End custom js for this page-->



</body>
</html>