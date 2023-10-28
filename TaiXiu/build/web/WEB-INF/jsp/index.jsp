<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Trò Chơi Tài Xỉu</title>
    <link
      href="${pageContext.request.contextPath}/src/style/styles.css"
      rel="stylesheet"
      type="text/css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous" />
    <style></style>
  </head>
  <body>
     <img class="free gif" src="${pageContext.request.contextPath}/src/misc/money.gif" alt="sticker">
     <img class="free gif r" src="${pageContext.request.contextPath}/src/misc/money.gif" alt="sticker">
     <img class="free gif l" src="${pageContext.request.contextPath}/src/misc/money.gif" alt="sticker">
     <img class="free gif r m" src="${pageContext.request.contextPath}/src/misc/money.gif" alt="sticker">
     <img class="free gif l m" src="${pageContext.request.contextPath}/src/misc/money.gif" alt="sticker">
    <section>
      <div class="box">
        <h1>Trò Chơi Tài Xỉu</h1>
        <p style="color: #00fb80; font-size: 200%;">Dù thắng hay thua, công an bắt => lên phường!!!</p>
        <form action="gameplay" method="POST">
          <input type="submit" value="Chơi" style="color: #ffffb6;">
        </form>
      </div>
      <div>
        <h2 style="color: #0dffb2;">
          Game chỉ mang tính chất giải trí, nếu có nghiện cũng không sao!!!
        </h2>
      </div>
    </section>
    
  </body>
  <footer>
      <h5>Made by @Chinhwind</h5>
   </footer>
</html>
