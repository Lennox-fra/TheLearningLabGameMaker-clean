var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

draw_sprite_ext(spr_background, floor(bg_frame), 0, 0, gui_w / sprite_get_width(spr_background), gui_h / sprite_get_height(spr_background), 0, c_white, 1);

draw_sprite(spr_credits, 0, 0, 0);

draw_set_font(fnt_main);
draw_set_color(make_color_rgb(170, 170, 180));
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_text_transformed(gui_w / 2, gui_h - 40, "Click anywhere or press ESC to go back", 0.5, 0.5, 0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (transitioning)
{
    draw_set_alpha(0.9);
    draw_set_color(c_black);
    draw_rectangle(0, 0, gui_w, gui_h, false);
    draw_set_alpha(1);

    var lw = sprite_get_width(spr_loading);
    var lh = sprite_get_height(spr_loading);
    draw_sprite(spr_loading, floor(loading_frame), gui_w / 2 - lw / 2, gui_h / 2 - lh / 2);
}