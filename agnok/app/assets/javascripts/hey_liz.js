
// data orientated because whatever
var snowflakes_x;
var snowflakes_y;
var snowflakes_a;
var snowflakes_dist;
var num_flakes = 0;
var fade = 0;




window.onload = function () {
    // begin animation
    num_flakes = 1000;
    snowflakes_x = new Array(1000);
    snowflakes_y = new Array(1000);
    snowflakes_a = new Array(1000);
    snowflakes_dist = new Array(1000);
    for (var i = 0; i < num_flakes; i++) {
        snowflakes_a[i] = (Math.random() * Math.PI * 2);
        snowflakes_x[i] = (Math.random() * innerWidth);
        snowflakes_y[i] = (Math.random() * (innerHeight + 35));
        snowflakes_dist[i] = 8.5 * (Math.pow(Math.random(),2)) + 1.5;
    }
    requestAnimationFrame(draw);
}



function draw() {
    document.getElementById("canvas").width = innerWidth;
    document.getElementById("canvas").height = innerHeight;

    document.getElementById("cover").style.opacity = 1 - fade;

    var c = document.getElementById("canvas");
    var ctx = c.getContext("2d");
    ctx.clearRect(0,0,ctx.width, ctx.height);
    ctx.fillStyle="rgba(255,255,255,"+fade+")";
    var x;
    var y;
    for (var i = 0; i < num_flakes; i++) {
        ctx.beginPath();
        x = snowflakes_x[i] + (Math.pow(Math.cos(snowflakes_a[i]),2) * 3 * snowflakes_dist[i]);
        y = snowflakes_y[i]+ (Math.pow(Math.sin(snowflakes_a[i]*2),2) * (10 - snowflakes_dist[i]));
        ctx.arc(x, y, snowflakes_dist[i] / 3, 0, 2 * Math.PI, false);
        ctx.fill();
        ctx.closePath();

        if (snowflakes_a[i] > Math.PI * 2) {
            snowflakes_a[i] = 0;
        } else {
            snowflakes_a[i] += .003 * snowflakes_dist[i];
        }

        if (snowflakes_y[i] - 30 > innerHeight) {
            snowflakes_y[i] = Math.random() * (-20) - 30;
        } else {
            snowflakes_y[i] += .05 * snowflakes_dist[i];
        }
    }

    if (fade < 1) {
        fade += .011;
    } else if (fade > 1) {
        fade = 1;
        document.getElementById("cover").style.zIndex = -1;
    }

    requestAnimationFrame(draw);

}
