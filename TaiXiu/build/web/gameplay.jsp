<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
    <title>Game Tài Xỉu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="./src/style/styles1.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div id="muteButton">
        <button>Mute</button>
    </div>
    <div class="free">
        <img class="sticker" src="src/misc/sticker.jpg" alt="sticker">
    </div>
    <div>
        <img class="free gif" src="src/misc/money.gif" alt="sticker">
        <img class="free sticker3" src="src/misc/sticker3.jpg" alt="sticker">
        <img class="free sticker2" src="src/misc/sticker2.jpg" alt="sticker">
    </div>
    <h1>Game Tài Xỉu</h1>
    <section id="dice">
        <img id="dice1" src="./src/misc/dice${dice1}.png" alt="Dice 1"/>
        <img id="dice2" src="./src/misc/dice${dice2}.png" alt="Dice 2"/>
    </section>
    <section id="gameplay">
    
    <form action="./gameplay" method="POST">
        <div>
            <h2>Thông tin người chơi</h2>
            <input type="hidden" name="capital" value="${capital}">
            <p class="money">Vốn: <span id="capital">${capital}</span> $</p>
            <p class="money">Số tiền cược: <input class="bet-input" type="number" name="betAmount" min="0" step="1" max="${capital}"  required>$</p>
        </div>
        <div>
            <h2>Thử vận may của bạn</h2>
            <p>Chọn tài hay xỉu:</p>
            <section>
      <div>
            <input type="radio" id="tai-btn" name="choice" value="xiu" required/>
            <label for="tai-btn">
                <h2>Xỉu</h2>
            </label>
      </div>
      <div>
            <input type="radio" id="xiu-btn" name="choice" value="tai" required/>
            <label for="xiu-btn">
                <h2>Tài</h2>
            </label>
      </div>
 
    </section>
            <input type="hidden" name="action" value="none">
            <button id="cuoc" class="decor" type="submit" >
                <p style="color: #4aff5b;">Cược</p>
            </button>
        </div>
    </form>
    <div>
        <h2>Kết quả</h2>
        <p>Bạn chọn: <span id="choice">${choice}</span></p>
        <p>Số xúc sắc: <span id="dices">${sum}</span></p>
        <p>Kết quả: <span id="result">${result}</span></p>
    </div>
    </section>
    <div>
            <form action="./gameplay" method="POST" >
                <input type="hidden" name="action" value="restart">
                <button type="submit" id="restart">
                    <p>Chơi lại</p>
                </button>
            </form>
    </div>
    <section id="ls">
        <table border="1">
    <tr>
        <th>Xúc xắc 1</th>
        <th>Xúc xắc 2</th>
        <th>Kết quả</th>
        <th>Bạn chọn</th>
        <th>Lỗ / Lãi </th>
    </tr>
            <c:forEach items="${history}" var="item">
                <tr>
                    <td><img class="dice" src="./src/misc/dice${item.dice1}.png" alt="Dice 1"/></td>
                    <td><img class="dice" src="./src/misc/dice${item.dice2}.png" alt="Dice 2"/></td>
                    <td>${item.result}</td>
                    <td>${item.choice}</td>
                    <td style="color: ${item.result == item.choice ? 'green' : 'red'};">${item.money}</td>
                </tr>
            </c:forEach>
        </table>
    </section>
    <script src="./src/java/index.js"></script>
</body>
<footer>
      <h5>Made by @Chinhwind</h5>
</footer>
</html>