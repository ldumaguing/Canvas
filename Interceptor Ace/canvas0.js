window.onload = function() {
    let c = document.getElementById("Canvas0");
    let ctx = c.getContext("2d");
    let img = document.getElementById("Map0");
    ctx.drawImage(img,0,0);
    foo();
 }

function foo() {
    let c = document.getElementById("Canvas0");
    let ctx = c.getContext("2d");
    let img;

    img = document.getElementById("img30");
    ctx.drawImage(img,10,10);
    img = document.getElementById("img40");
    ctx.drawImage(img,50,50);
}
