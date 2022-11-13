var c = document.querySelector('canvas');
c.width = window.innerWidth;
c.height = window.innerHeight;
var ctx = c.getContext("2d");

var img = document.getElementById("map0");
ctx.drawImage(img, -400, -420);
