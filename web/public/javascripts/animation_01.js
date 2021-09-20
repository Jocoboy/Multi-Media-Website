window.onload = function () {

    var oC = document.getElementById("c1");

    var oGc = oC.getContext("2d");

    setArr = [];

    setInterval(function () {

        oGc.clearRect(0, 0, oC.width, oC.height);;

        for (var i = 0; i < setArr.length; i++) {

            setArr[i].sY += 0.02;

            setArr[i].x += setArr[i].sX;

            setArr[i].y += setArr[i].sY;

            setArr[i].r += 0.01;

            if (setArr[i].y >= oC.height - setArr[i].r) {

                setArr[i].y = oC.height - setArr[i].r;

                setArr[i].sY = -1;

                setArr[i].sY *= 0.9;

                setArr[i].sX *= 0.9;

                if (Math.abs(setArr[i].sX) <= 0.1) {

                    setArr.splice(i, 1);

                }

            }

        }

        for (var i = 0; i < setArr.length; i++) {

            oGc.beginPath();

            oGc.fillStyle = 'rgba(' + setArr[i].c1 + ',' + setArr[i].c2 + ',' + setArr[i].c3 + ',' + setArr[i].c4 + ')';

            oGc.moveTo(setArr[i].x, setArr[i].y);

            oGc.arc(setArr[i].x, setArr[i].y, setArr[i].r, 0, 360 * Math.PI / 180, false);

            oGc.closePath();

            oGc.fill();

        }

    }, 1000 / 60)

    setInterval(function () {

        var x = oC.width / 2;

        var y = oC.height - 20;

        var c1 = Math.floor(Math.random() * 255);

        var c2 = Math.floor(Math.random() * 255);

        var c3 = Math.floor(Math.random() * 255);

        var c4 = 1;

        var r = 10;

        var sX = Math.random() * 10 - 6;

        var sY = -(Math.random() * 6 + 1);

        setArr.push({

            x: x,

            y: y,

            r: r,

            c1: c1,

            c2: c2,

            c3: c3,

            c4: c4,

            sX: sX,

            sY: sY

        })

    }, 100)

}