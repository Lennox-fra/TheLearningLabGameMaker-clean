draw_set_font(fnt_main);

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var bg_sprite = global.fullscreen ? spr_checkbox_on : spr_checkbox_off;
var src_size  = 1024;
var bg_x      = (gui_w - src_size) / 2;
var bg_y      = (gui_h - src_size) / 2;

draw_sprite(bg_sprite, 0, bg_x, bg_y);

var slider_coords = [
    [559, 108, 916, 106],
    [553, 262, 910, 262],
    [543, 395, 901, 395],
    [543, 526, 900, 526]
];

var values = [global.vol_master, global.vol_music, global.vol_sfx, global.text_speed];

for (var i = 0; i < 4; i++)
{
    var lx = bg_x + slider_coords[i][0];
    var ly = bg_y + slider_coords[i][1];
    var rx = bg_x + slider_coords[i][2];
    var ry = bg_y + slider_coords[i][3];

    var hx = lerp(lx, rx, values[i]);
    var hy = lerp(ly, ry, values[i]);

    var handle_size = 14;

    draw_set_color(c_white);
    draw_circle(hx, hy, handle_size, false);
    draw_set_color(c_black);
    draw_circle(hx, hy, handle_size - 3, false);

    if (i == selected)
    {
        draw_set_color(make_color_rgb(255, 220, 100));
        draw_circle(hx, hy, handle_size + 4, true);
    }
}

if (selected == 4)
{
    var box_x = bg_x + 600;
    var box_y = bg_y + 645;
    var box_w = 631 - 600;
    var box_h = 677 - 645;

    draw_set_color(make_color_rgb(255, 220, 100));
    draw_rectangle(box_x - 6, box_y - 6, box_x + box_w + 6, box_y + box_h + 6, true);
}

var back_x_screen = bg_x + 101;
var back_y_screen = bg_y + 932;
var back_w_screen = 209 - 101;
var back_h_screen = 958 - 932;
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var back_hovered = point_in_rectangle(mx, my, back_x_screen, back_y_screen, back_x_screen + back_w_screen, back_y_screen + back_h_screen);

if (back_hovered || selected == 5)
{
    draw_set_color(make_color_rgb(255, 220, 100));
    draw_rectangle(back_x_screen - 10, back_y_screen - 10, back_x_screen + back_w_screen + 10, back_y_screen + back_h_screen + 10, true);
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);