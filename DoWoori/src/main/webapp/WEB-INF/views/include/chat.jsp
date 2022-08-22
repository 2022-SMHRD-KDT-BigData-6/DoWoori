<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/vertical-layout-light/style.css">
    <title>Document</title>
    <!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<style>
	.rw-conversation-container .rw-header{background-color: #5ece95; font-family: 'Noto Sans KR', sans-serif;}
	.rw-conversation-container .rw-messages-container .rw-message .rw-client{color:#ffffff; background-color: #5ece95; font-family: 'Noto Sans KR', sans-serif;}
	.rw-launcher{background-color: #5ece95; font-family: 'Noto Sans KR', sans-serif;}
	.rw-conversation-container .rw-reply{background-color: #5ece95; border: 1px solid #5ece95; font-family: 'Noto Sans KR', sans-serif;}
	.rw-markdown{color:#000000; font-family: 'Noto Sans KR', sans-serif;}
	.rw-title rw-with-avatar{font-family: 'Noto Sans KR', sans-serif;}
	.rw-header rw-with-subtitle{font-family: 'Noto Sans KR', sans-serif;}
	.rw-message rw-with-avatar{font-family: 'Noto Sans KR', sans-serif;}
</style>
		              
		              

		               

  <script type="text/javascript">
    
    !(function () {
        let e = document.createElement("script"),
          t = document.head || document.getElementsByTagName("head")[0];
        (e.src =
          "https://cdn.jsdelivr.net/npm/rasa-webchat@1.x.x/lib/index.js"),
          // Replace 1.x.x with the version that you want
          (e.async = !0),
          (e.onload = () => {
              window.WebChat.default(
              {
            	  
                initPayload: '/greet',
                customData: { language: "ko" },
                socketUrl: "http://localhost:5005", //rasa core
                // add other props here
                title: 'Dowoori',
                subtitle:'도우리가 도와드립니다!',
                profileAvatar: "resources/images/bot.png",
                openLauncherImage: "resources/images/bot.png",
                closeImage: "resources/images/down.png",
                showMessageDate: true,
                inputTextFieldHint: "이곳에 작성하세요.",

                
              },
              null
            );
          }),
          t.insertBefore(e, t.firstChild);
      })();
    
    
    

    
    

      </script>
</body>
</html>