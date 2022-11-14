window.onload = function() {
    let c = document.getElementById("Canvas0");
    let ctx = c.getContext("2d");
    let img = document.getElementById("Map0");
    ctx.drawImage(img,0,0);
    foo(c, ctx, img);
 }

function foo(c, ctx, img) {
    img = document.getElementById("img30");
    ctx.drawImage(img,293,141);
    img = document.getElementById("img40");
    ctx.drawImage(img, 293 + (4896/29), 141 + (3665/38));
}
