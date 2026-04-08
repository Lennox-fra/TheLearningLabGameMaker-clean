var sx = x;
var sy = y;
var button_w = 300;
var button_h = 80;
var play_x = sx + 400;
var play_y = sy + 325;
play_rect = [
    play_x - button_w/2,
    play_y - button_h/2,
    play_x + button_w/2,
    play_y + button_h/2
];

if (mouse_check_button_pressed(mb_left))
{
    if (point_in_rectangle(mouse_x, mouse_y,
        play_rect[0], play_rect[1],
        play_rect[2], play_rect[3]))
    {
        show_debug_message("PLAY CLICKED");
        image_speed = 1;
        alarm[0] = 60;
    }
}