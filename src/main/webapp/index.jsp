<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>⚡ CHAOS MODE ⚡</title>

<style>
    body {
        margin: 0;
        background: black;
        overflow: hidden;
        font-family: monospace;
        color: #00ffea;
    }

    h1 {
        position: absolute;
        top: 40%;
        width: 100%;
        text-align: center;
        font-size: 50px;
        animation: glitch 0.5s infinite;
    }

    @keyframes glitch {
        0% { text-shadow: 5px 0 red, -5px 0 blue; }
        25% { text-shadow: -5px 0 red, 5px 0 blue; }
        50% { text-shadow: 5px 5px red, -5px -5px blue; }
        75% { text-shadow: -5px -5px red, 5px 5px blue; }
        100% { text-shadow: 5px 0 red, -5px 0 blue; }
    }

    .circle {
        position: absolute;
        border-radius: 50%;
        background: rgba(0,255,255,0.2);
        animation: float 5s infinite linear;
    }

    @keyframes float {
        from { transform: translateY(100vh); }
        to { transform: translateY(-10vh); }
    }

    button {
        position: absolute;
        bottom: 20px;
        left: 50%;
        transform: translateX(-50%);
        padding: 15px 30px;
        background: black;
        border: 2px solid cyan;
        color: cyan;
        font-size: 20px;
        cursor: pointer;
    }
</style>
</head>

<body>

<h1 id="text">SYSTEM BREACHING...</h1>

<button onclick="goCrazy()">CLICK IF YOU DARE</button>

<script>
    // Floating circles generator
    for (let i = 0; i < 50; i++) {
        let c = document.createElement("div");
        c.className = "circle";
        let size = Math.random() * 50;
        c.style.width = size + "px";
        c.style.height = size + "px";
        c.style.left = Math.random() * window.innerWidth + "px";
        c.style.animationDuration = (Math.random() * 5 + 2) + "s";
        document.body.appendChild(c);
    }

    function goCrazy() {
        document.body.style.background = "red";

        setInterval(() => {
            document.body.style.background =
                "#" + Math.floor(Math.random()*16777215).toString(16);
        }, 100);

        let text = document.getElementById("text");

        setInterval(() => {
            text.innerText = Math.random().toString(36).substring(2, 12);
        }, 200);

        alert("⚠️ YOU ACTIVATED CHAOS MODE ⚠️");
    }
</script>

</body>
</html>
