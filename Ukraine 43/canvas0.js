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

    img = document.getElementById("img300");
    ctx.drawImage(img,95,11);
    img = document.getElementById("img400");
    ctx.drawImage(img,1776,1062);
}
