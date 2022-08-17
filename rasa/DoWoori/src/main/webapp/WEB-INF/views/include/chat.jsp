<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<style>
	.rw-conversation-container .rw-header{background-color: #6188e2; font-family: 'Noto Sans KR', sans-serif;}
	.rw-conversation-container .rw-messages-container .rw-message .rw-client{background-color: #6188e2; font-family: 'Noto Sans KR', sans-serif;}
	.rw-launcher{background-color: #6188e2; font-family: 'Noto Sans KR', sans-serif;}
	.rw-conversation-container .rw-reply{background-color: #6188e2; border: 1px solid #6188e2; font-family: 'Noto Sans KR', sans-serif;}
	.rw-markdown{font-family: 'Noto Sans KR', sans-serif;}
</style>


    <script>!(function () {
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
                title: 'Dowoori Bot',
                subtitle:'도우리가 도와드립니다.',
                profileAvatar: "resources/images/wooribot.png",
                openLauncherImage: "resources/images/wooribot.png",
                closeImage: "resources/images/down.png",
                showMessageDate: true,
                inputTextFieldHint: "이곳에 작성하세요.",
                customMessageDelay:(message) => {
                	let delay = message.length * 10;
                	if(delay > 3 * 1000) delay = 3 * 1000;
                	if(delay < 800) delay = 800;
                	return delay;
                }
                
              },
              null
            );
          }),
          t.insertBefore(e, t.firstChild);
      })();
      </script>
</body>
</html>