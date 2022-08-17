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
<title>approve</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="resources/vendors/typicons.font/font/typicons.css">
  <link rel="stylesheet" href="resources/vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="resources/css/vertical-layout-light/style.css">
  <link rel="shortcut icon" href="resources/images/favicon.png" />
</head>
<body>
 <div class="container-scroller">
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
            <div class="col-lg-12 grid-margin stretch-card">
  
            </div>
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">결재 대기 현황</h4>
                  <div class="table-responsive pt-3">
                    <table class="table table-bordered text-center">
                        <tr class="lists">
                          <th>유형</th>
                          <th>시작일자</th>
                          <th>종료일자</th>      
                          <th>진행구분</th>   
                          <th>제출일자</th>          
                          <th></th>         
                        </tr>   
        
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
  <script type="text/javascript">
	  function CheckSession(){
	  	if(sessionStorage.getItem("loginKey") == null){
	  		window.location.replace("${cpath}/logout.do")
	  	}
	  }
	  
	     $(document).ready(function(){
	         loadUser('${uvo.deptNum}');
	     })

	     
	     function loadContents(adminId){
	        $.ajax({
	           url : '${cpath}/approveAjax.do',
	           data : {'adminId':adminId},
	           type : 'get',
	           dataType : 'json',
	           success:contentView,           
	           error : function(){
	              alert('실패!');
	           }
	        })
	     }
	     
	     function loadUser(deptNum){
	        $.ajax({
	           url : '${cpath}/userAjax.do',
	           data : {'deptNum':deptNum},
	           type : 'get',
	           dataType : 'json',
	           success: writerView,           
	           error : function(){
	              alert('실패!');
	           }
	        })
	     }
	     
	     var dicContent={};
	     var dicWriter = {};
	     var name = "";
	     
         var userName = "";

  	     function writerView(data){
  	    	 dicWriter = data;
	         loadContents('${uvo.id}');
	      }
  	     
	     

	     function contentView(data){
	        var flist = "";

	        $.each(data, function(index, con){

	           if(con.utime !== null){
	              var time = con.utime;
	           }else{
	              var time = "종일";
	           }
        	   
	           $.each(dicWriter, function(ind, w){
		           	if(w.id === con.userId){
		           		userName = w.name;
		          	 }
       	  		})
	           
		 
	           flist += "<tr>"
	           flist += "<td id = 'info'>"+con.docuType+"</td>"
	               flist += "<td>"+con.startDate+"</td>"
	               flist += "<td>"+con.endDate+"</td>"
	               
	           	   if(con.division === '승인'){
	              	  flist += "<td class='app'>"+con.division+"</td>"
	              	  
	                }else if(con.division === '신청'){
	              	  flist += "<td class='appli'>"+con.division+"</td>"
	              	  
	                }else if(con.division === '반려'){
	              	  flist += "<td class='refuse'>"+con.division+"</td>"
	                }
	               
	               flist += "<td>"+con.indate+"</td>"
	           flist += "<td><button class='btn btn-success' onclick='docuContent("+con.formNum+")'>상세보기</button></td></tr>"

	              
	           //버튼 누르면 펼쳐지는 부분
	           
	           
	           flist += "<tr class='innerContent text-left' id='vc"+con.formNum+"' style='display:none'>"
	           flist += "<td colspan = '7'>"
	               //제출자명
	               flist += "&nbsp&nbsp&nbsp<label for='admin'><h4>제출자 : </h4></label>&nbsp&nbsp&nbsp&nbsp"
	               flist += "<input type='text' value='"+userName+"' disabled size='2' class='text-center'><br><br>"
	             
	               //시간구분
	               flist += "&nbsp<label for='admin'><h4>시간구분 : </h4></label>&nbsp&nbsp"
	                    /* 텍스트에 맞춰지면 좋겠당 */
	                flist += "<input type='text' value='"+time+"' disabled size='2' class='text-center'><br><br>"
	               
	               //사유
	               flist += "&nbsp<label for='comment'><h4>사유 : </h4></label>"
	                 flist += "<textarea readonly id='comment' rows='7' name='con"+con.formNum+"' class='form-control'>"+con.reason+"</textarea>"
	                 flist += "<br>" 
	                
	                 
	                 //승인, 반려버튼
	                 if(con.division === '신청'){
		                 flist += "&nbsp<button type='button' class = 'btn-info btn btn-sm' onclick='apprForm("+con.formNum+")' >✔    승인</button>"
		                 flist += "&nbsp<button type='button' class = 'btn-danger btn btn-sm' onclick='compForm("+con.formNum+")'>✖  반려</button>"
	                 }
	              //닫기버튼
	                 flist += "&nbsp<button type='button' class = 'btn-light btn btn-sm' onclick='docuContent("+con.formNum+")' style='float: right;'>닫기</button>"
	              flist += "</td>"
	           flist += "</tr>" 
		        
	        })
	        
	      $('.lists').after(flist);

	     }
	     

	     function docuContent(formNum){
	        if($('#vc'+formNum).css('display') == 'none'){
	           $('#vc'+formNum).css('display', 'table-row')

	        }else{
	           $('#vc'+formNum).css('display', 'none')
	        }
	        
	     }
	     
	     // 한 번 새로고침 하는 함수
		 function loadOnce()
		 {
		  window.location.reload();
		 }
	     
	     //help : DB에 잘 반영되었는데 실패 뜨는 문제
	     function apprForm(formNum){
		        $.ajax({
			           url : '${cpath}/apprForm.do',
			           data : {'formNum':formNum},
			           type : 'get',
			           dataType : 'text',
			           success: function(){
			        	   alert('승인처리 완료');
			        	   loadOnce();
			           },           
			           error : function(){
			              alert('실패!');
			           }
			        })
	     }
	     
	     function compForm(formNum){
		        $.ajax({
			           url : '${cpath}/compForm.do',
			           data : {'formNum':formNum},
			           type : 'get',
			           dataType : 'text',
			           success: function(){
			        	   alert('반려처리 완료');
			        	   loadOnce();
			           },           
			           error : function(){
			              alert('실패!');
			           }
			        })
	     }
  
  </script>

</body>
</html>