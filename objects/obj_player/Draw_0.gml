var xx = 10;
var yy = 10;
var width = xx + 300;
var height = 30;

draw_self();

draw_set_color(c_black);
draw_rectangle(xx, yy, width, height, true);

var result = (velocidade / max_velocidade) * 298;

if(result > 0)
{
	draw_set_color(c_blue);
	draw_rectangle(xx + 1, yy + 1, xx + 1 + result, height - 1, false);
}

draw_set_color(c_white);
draw_set_font(fnt_ggizi);

draw_text(room_width - 180, 10, "Pontos: " + string(pontos));
draw_text(room_width - 180, 40, "Chances: " + string(chances));