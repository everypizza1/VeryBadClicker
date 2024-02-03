draw_set_colour($FF000000 & $ffffff);
draw_set_alpha($FF000000 / $ff);

draw_set_font(Font1);

draw_text(x + 250, y + 20, string(global.points));

draw_text(x + 250, y + 400, string("Version 0.0.2"));