<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
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
                customData: { language: "en" },
                socketUrl: "http://localhost:5005", //rasa core
                // add other props here
              },
              null
            );
          }),
          t.insertBefore(e, t.firstChild);
      })();
      </script>

</body>
</html> 