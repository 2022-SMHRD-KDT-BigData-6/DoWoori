<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 프로젝트의 contextpath 값을 동적으로 가져오는 방법  / 모든 페이지에 있어야 함-->
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!-- 프로젝트 내 다른 파일을 한 페이지에 뜨도록 포함시키는 방법, ""안에는 파일경로! -->
<%@include file="../views/include/chat.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>company</title>
<!-- Required meta tags -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="resources/vendors/typicons.font/font/typicons.css">
<link rel="stylesheet"
	href="resources/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="resources/css/vertical-layout-light/style.css">
<link rel="shortcut icon" href="resources/images/favicon.png" />
<meta charset="UTF-8">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
<!-- 조직도  -->
   <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {packages:["orgchart"]});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Name');
        data.addColumn('string', 'Manager');
        data.addColumn('string', 'ToolTip');

        // For each orgchart box, provide the name, manager, and tooltip to show.
           data.addRows([
          [{'v':'대표이사', 'f':'대표이사<div style="color:black;">ceo</div>'},
           '', '연락처 : 062-***-****'],
           
          [{'v':'인사관리부', 'f':'인사관리부'},
           '대표이사', '연락처 : 062-***-****'],
          ['김진경<div style="color:gray; font-size:13px">직위 : 부장</div><div style="color:gray; font-size:13px">직책 : 팀장</div>', '인사관리부', '연락처 : 062-***-****'],
          ['김채윤<div style="color:gray; font-size:13px">직위 : 사원</div><div style="color:gray; font-size:13px">직책 : 팀원</div>', '김진경<div style="color:gray; font-size:13px">직위 : 부장</div><div style="color:gray; font-size:13px">직책 : 팀장</div>', '연락처 : 062-***-****'],
          
          [{'v':'고객관리부', 'f':'고객관리부'},
           '대표이사', '연락처 : 062-***-****'],
          ['황은지<div style="color:gray; font-size:13px">직위 : 과장</div><div style="color:gray; font-size:13px">직책 : 팀장</div>', '고객관리부', '연락처 : 062-***-****'],
          ['김준성<div style="color:gray; font-size:13px">직위 : 사원</div><div style="color:gray; font-size:13px">직책 : 팀원</div>', '황은지<div style="color:gray; font-size:13px">직위 : 과장</div><div style="color:gray; font-size:13px">직책 : 팀장</div>', '연락처 : 062-***-****'],
          ['김연이<div style="color:gray; font-size:13px">직위 : 사원</div><div style="color:gray; font-size:13px">직책 : 팀원</div>', '황은지<div style="color:gray; font-size:13px">직위 : 과장</div><div style="color:gray; font-size:13px">직책 : 팀장</div>', '연락처 : 062-***-****'],
      
          [{'v':'경영지원부', 'f':'경영지원부'},
           '대표이사', '연락처 : 062-***-****'],
          ['김용남<div style="color:gray; font-size:13px">직위 : 부장</div><div style="color:gray; font-size:13px">직책 : 팀장</div>', '경영지원부', '연락처 : 062-***-****'],
          ['황나윤<div style="color:gray; font-size:13px">직위 : 사원</div><div style="color:gray; font-size:13px">직책 : 팀원</div>', '김용남<div style="color:gray; font-size:13px">직위 : 부장</div><div style="color:gray; font-size:13px">직책 : 팀장</div>', '연락처 : 062-***-****'],
          ['류민호<div style="color:gray; font-size:13px">직위 : 사원</div><div style="color:gray; font-size:13px">직책 : 팀원</div>', '김용남<div style="color:gray; font-size:13px">직위 : 부장</div><div style="color:gray; font-size:13px">직책 : 팀장</div>', '연락처 : 062-***-****'],
        ]);

        // Create the chart.
        var chart = new google.visualization.OrgChart(document.getElementById('chart_div'));
        // Draw the chart, setting the allowHtml option to true for the tooltips.
        chart.draw(data, {'allowHtml':true});
      }
   </script>
</head>

<body>
    <div class="container-scroller">
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
          <a class="navbar-brand brand-logo" href="${cpath}/basic.do"><img src="resources/images/logob.png" alt="logo"/></a>
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
            <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle  pl-0 pr-0" href="#" data-toggle="dropdown" id="profileDropdown">
                <i class="typcn typcn-user-outline mr-0"></i>
                <span class="nav-profile-name">${uvo.name}</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                <a class="dropdown-item" onclick="CheckSession(); localStorage.clear()">
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
			<!-- partial:resources/partials/_settings-panel.html -->
			<nav class="sidebar sidebar-offcanvas" id="sidebar">
				<ul class="nav">
					<li class="nav-item">
						<div class="d-flex sidebar-profile">
							<div class="sidebar-profile-image">
								<img src="resources/images/faces/face21.jpg" alt="image">
								<span class="sidebar-status-indicator"></span>
							</div>
							<div class="sidebar-profile-name">
								<p class="sidebar-name">${uvo.name}</p>
								<p class="sidebar-designation">${uvo.spot}</p>
							</div>
						</div>
						<div class="nav-search">
							<div class="input-group">
								<input type="text" class="form-control"
									placeholder="Google 검색" aria-label="search"
									aria-describedby="search">
								<div class="input-group-append">
									<span class="input-group-text" id="search"> <i
										class="typcn typcn-zoom"></i>
									</span>
								</div>
							</div>
						</div>
						<p class="sidebar-menu-title">Menu</p>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="${cpath}/basic.do"> <i
							class="typcn typcn-device-desktop menu-icon"></i> <span
							class="menu-title">마이페이지</span>
					</a></li>


					<li class="nav-item"><a class="nav-link"
						href="${cpath}/company.do"> <i
							class="typcn typcn-chart-pie-outline menu-icon"></i> <span
							class="menu-title">회사 정보</span>
					</a></li>

					<li class="nav-item"><a class="nav-link"
						href="${cpath}/document.do?userId=${uvo.id}&deptNum=${uvo.deptNum}">
							<i class="typcn typcn-pen menu-icon"></i> <span
							class="menu-title">기안문 제출 현황</span>
					</a></li>

					<c:if test="${uvo.position eq '팀장'}">
						<li class="nav-item"><a class="nav-link"
							href="${cpath}/approve.do"> <i
								class="typcn typcn-clipboard menu-icon"></i> <span
								class="menu-title">결재 대기 현황</span>
						</a></li>
					</c:if>
				</ul>

			</nav>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper main">
					<div class="row">
						<div class="col-lg-6 grid-margin stretch-card"></div>
					</div>

					<div class="row">
						<div class="col-lg-8 grid-margin grid-margin-lg-0 stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="d-flex flex-wrap justify-content-between">
										<h4 class="card-title mb-3">회사 조직도</h4>
									</div>
									<div class="table-responsive">
											<tbody>
												<tr>
													<td>
														<div class="chart-box">
    														<div id="chart_div"></div>
														</div>
													</td>
												</tr>
											</tbody>
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-4 grid-margin grid-margin-lg-0 stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="d-flex flex-wrap justify-content-between">
										<h4 class="card-title mb-3">복지 정보</h4>
									</div>
									<div class="table-responsive">
										<table class="table">
											<tbody>
												<tr>
													<td>
														<div class="d-flex">
															<div>
																▪ 자율 출퇴근제(8~11시 사이 자율출근, 시간 자유롭게 선택 가능)<br> ▪ 자율 자택
																근무제(향후 변동 될 수 있음)<br> ▪ 자유로운 휴가 사용(연차/반차)<br>
																▪ 점심식대(1만원/인) 및 저녁식대(야근시)를 제공<br> ▪ 다양한 종류의 간식과 음료를
																상시/무한 제공<br> ▪ 최신 장비 지급 + 3년 경과 시 개인 소유로 전환 가능<br>
															</div>
														</div>
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
			</div>
		</div>
	</div>
	<script src="resources/vendors/js/vendor.bundle.base.js"></script>
	<script src="resources/js/off-canvas.js"></script>
	<script src="resources/js/hoverable-collapse.js"></script>
	<script src="resources/js/template.js"></script>
	<script src="resources/js/settings.js"></script>
	<script src="resources/js/todolist.js"></script>
	<script src="resources/vendors/chart.js/Chart.min.js"></script>
	<script src="resources/js/chart.js"></script>
	<script type="text/javascript">
		function CheckSession() {
			if (sessionStorage.getItem("loginKey") == null) {
				window.location.replace("${cpath}/logout.do")
			}
		}
	</script>
	
	<!-- 조직도 -->
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <div id="chart_div"></div>

</body>
</html>