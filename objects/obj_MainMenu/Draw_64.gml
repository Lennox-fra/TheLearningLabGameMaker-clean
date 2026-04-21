draw_sprite(spr_menu, 0, 0, 0);

if (hovered != -1 && !transitioning)
{
    var b = buttons[hovered];
    var btn_center_y = (b.y1 + b.y2) / 2;
    var y_offset = btn_center_y - 603;
    draw_sprite(spr_select, (current_time / 30) mod sprite_get_number(spr_select), 0, y_offset);
}

if (transitioning)
{
    draw_set_alpha(0.9);
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1);

    var lw = sprite_get_width(spr_loading);
    var lh = sprite_get_height(spr_loading);
    draw_sprite(spr_loading, floor(loading_frame), display_get_gui_width() / 2 - lw / 2, display_get_gui_height() / 2 - lh / 2);
}