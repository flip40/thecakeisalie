/// Draw Menu
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_menu);
draw_set_color(c_white);

y_offset = 64;

draw_text(x, y - y_offset * 2, "Game Over!");
draw_text(x, y - y_offset, "Press Esc to return to the menu");
