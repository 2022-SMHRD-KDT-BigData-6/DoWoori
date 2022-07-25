<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 프로젝트의 contextpath 값을 동적으로 가져오는 방법  / 모든 페이지에 있어야 함-->
<c:set var = "cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>

<!-- bootstrap 사용하기 위해 필요한 라이브러리 3개 로드 -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
	    <h2>jQuery+ajax활용하기</h2>
		<div class="panel panel-default">
			<div class="panel-heading">Spring MVC02 게시판</div>
			<div class="panel-body">
				<table class = "table table-bordered table-hover">
					<tr class="heading">
						<td>번호</td>
						<td>제목</td>
						<td>작성자</td>
						<td>작성일</td>
						<td>삭제</td>
					</tr>
					
					<tr>
							<td colspan="5">
								<button onclick ="goInsert()" class="btn-success btn btn-sm">글쓰기</button>
							</td>
					</tr>
					</table>
					<div id="insertview" style="display:none">
						<form id="frm">
						  <div class="form-group">
						    <label for="title">제목:</label>
						    <input type="text" class="form-control" name="title" id="title">
						  </div>
						  <div class="form-group">
						    <label for="writer">작성자:</label>
						    <input type="text" class="form-control" name="writer" id="writer">
						  </div>
						  <div class="form-group">
						    <label for="contents">내용:</label>
						    <textarea rows = "10" class="form-control" name="contents" id="contents"></textarea>
						  </div>
						  <button type="button" onclick="boardInsert()" class="btn btn-success btn-sm" >글쓰기</button>
						  <button type="reset" class="btn btn-warning btn-sm close">닫기</button>
						</form>
				   </div>
			</div>
		</div>
	</div>


<script type="text/javascript">
 //1. 해당하는 페이지에 접속하자마자 서버에 데이터를 요청하는 ajax 함수를 실행
 $(document).ready(function(){
	 loadList();		//()까지 써야 호출한 것
 })

 //2. 서버에 요청하는 ajax 함수를 생성
 function loadList(){
	 $.ajax({
		 // 서버 URL 필요
		 url : '${cpath}/boardListAjax.do',
		 //요청 방식
		 type : 'get',
		 //받아올 데이터 타입 지정
		 dataType : 'json',
		 //성공했을 때 실행할 함수
		 success:listView,
		 
		 //실패했을 때 실행할 함수
		 error : function(){
			 alert('실패!');
		 }
	 })
 }
 
 
 
 
  //3. 화면에 보여주는 함수 생성
  function listView(data){
	  //내가 화면에 출력해줄 tr 태그들의 모음
	  console.log(data);
	  var blist = "";
	  
	  //for-each 문을 사용하는 방법
	  // $.each (어떤 데이터를 가지고 반복, 어떤 함수로 처리해줄건지)
	  $.each(data, function(index, board){
		  //function(인덱스번호, )
		  blist += "<tr class='innerContent'>"
		  blist += "<td>"+board.idx+"</td>"
		  //href안에 javascript 코드 실행되게 작성
		  blist += "<td><a href='javascript:viewContent("+board.idx+")'>"+board.title+"</a></td>"
		  blist += "<td>"+board.writer+"</td>"
		  blist += "<td>"+board.indate+"</td>"
		  blist += "<td><button onclick='boardDelete("+board.idx+")' class='btn-sm btn-danger btn'>삭제</button></td>"
		  blist += "</tr>"
		  
		  
		  //제목 눌렀을 때 펼쳐지는 부분
		  blist += "<tr class='innerContent' id='vc"+board.idx+"' style='display:none'>" //각 게시글마다 idx 부여
		  blist += "<td colspan = '5'>"
		  blist += "<textarea rows='5' name='con"+board.idx+"' class='form-control'>"+board.contents+"</textarea>"
		  blist += "<br>"
		  blist += "<button onclick='boardUpdate("+board.idx+")' class = 'btn-primary btn btn-sm'>수정</button>"
		  blist += "&nbsp<button class = 'btn-warning btn btn-sm'>닫기</button>"
		  blist += "</td>"
		  blist += "</tr>"
	  })
	  
	  //heading이라는 클래스명 가진 tr태그 다음에 blist 추가하기
	  $('.innerContent').remove();
	  $('.heading').after(blist);
  }

  
  
  function goInsert(){
	  if($('#insertview').css('display') == 'none'){
		 //$('#insertview').css('display', 'block')
		 $('#insertview').slideDown();
	  }else{
		  $('#insertview').css('display', 'none')
			 $('#insertview').slideUp();
	  }
  }
  
  
  

  

    function boardInsert(){
	  	var formdata = $('#frm').serialize(); 
	    // 직렬화 : form 태그 안에 있는 input, textarea 등의 name값이 달려있는 태그들의 값을 가져와서 직렬화하는 함수
	    //확인 console.log(formdata)
	    
 		 $.ajax({
			 url : '${cpath}/boardInsert.do',
			 data : formdata,
			 type : 'post',
			 
			 //성공하면 loadList 함수 수행
			 success:loadList,
			 
			 error : function(){
				 alert('실패!');
			 }
		 }) 
		 
		 
		 // 초기화 버튼을 한 번 클릭
		 $('.close').trigger('click');
	  	
	  	//insertview div 태그를 다시 닫아주기
	  	 $('#insertview').slideUp(); //slideUp, Down은 div 태그에만 해당
		 
		 
	 }
    
    
    

    function boardDelete(idx){
   	 $.ajax({
		 url : '${cpath}/boardDelete.do',
		 data: {'idx':idx},
		 type : 'get', //들고갈 데이터 없으므로 get
		 
		 success:loadList,
		 
		 //실패했을 때 실행할 함수
		 error : function(){
			 alert('실패!');
		 }
	 })
    }
    
    
    function viewContent(idx){
    	if($('#vc'+idx).css('display') == 'none'){
    		$('#vc'+idx).css('display', 'table-row')
    	}else{
    		$('#vc'+idx).css('display', 'none')
    	}
    }
    
    
    
    function boardUpdate(idx){
    	//그냥 ID만 부여해서 가져오면 하나만 들고와짐
    	
    	//컨텐츠는 클릭했을 때 값을 꺼내오게 만듦
 	  	
    	//$('') 태그 선택자!!!
    	
    	//방식 1 : 이미 게시글이 구분되어 있으므로 자손선택자로 선택해서 가져오기
    	//방식 2 : var con = 달러('textarea[name="con'+idx+'"]').val(); 
    	var contents= $('#vc'+idx+' textarea').val();

    	//그냥 textarea라고 이름을 주면 게시글 수만큼 많기 때문에 구분이 불가 -> 각각의 게시물에 name을 부여할 수 있도록 뒤에 idx 붙여서 이름 주기
    	
    	
	  	console.log(idx) //위에서 board.idx로 넣은 값 가져옴
	  	
       	 $.ajax({
    		 url : '${cpath}/boardUpdateAjax.do',
    		 data: {'idx':idx, 'contents':contents},
    		 type : 'get', //들고갈 데이터 없으므로 get
    		 
    		 success:loadList,
    		 
    		 //실패했을 때 실행할 함수
    		 error : function(){
    			 alert('실패!');
    		 }
    	 }) 
    }
</script>

</body>
</html>