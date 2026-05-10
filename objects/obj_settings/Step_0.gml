if (keyboard_check_pressed(vk_up))
{
    selected--;
    if (selected < 0) selected = num_settings - 1;
}
if (keyboard_check_pressed(vk_down))
{
    selected++;
    if (selected >= num_settings) selected = 0;
}

var step = 0.05;

if (selected == 0)
{
    if (keyboard_check_pressed(vk_right)) global.vol_master = min(1.0, global.vol_master + step);
    if (keyboard_check_pressed(vk_left))  global.vol_master = max(0.0, global.vol_master - step);
    audio_group_set_gain(audiogroup_default, global.vol_master, 0);
}
if (selected == 1)
{
    if (keyboard_check_pressed(vk_right)) global.vol_music = min(1.0, global.vol_music + step);
    if (keyboard_check_pressed(vk_left))  global.vol_music = max(0.0, global.vol_music - step);
    audio_sound_gain(snd_mainMusic, global.vol_music * global.vol_master, 0);
}
if (selected == 2)
{
    if (keyboard_check_pressed(vk_right)) global.vol_sfx = min(1.0, global.vol_sfx + step);
    if (keyboard_check_pressed(vk_left))  global.vol_sfx = max(0.0, global.vol_sfx - step);
}
if (selected == 3)
{
    if (keyboard_check_pressed(vk_right)) global.text_speed = min(1.0, global.text_speed + step);
    if (keyboard_check_pressed(vk_left))  global.text_speed = max(0.1, global.text_speed - step);
}
if (selected == 4)
{
    if (keyboard_check_pressed(vk_enter))
    {
        global.fullscreen = !global.fullscreen;
        window_set_fullscreen(global.fullscreen);
    }
}
if (selected == 5)
{
    if (keyboard_check_pressed(vk_enter))
    {
        room_goto(rm_main_menu);
    }
}

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var src_size = 1024;
var bg_x = (display_get_gui_width() - src_size) / 2;
var bg_y = (display_get_gui_height() - src_size) / 2;
var back_x = bg_x + 101;
var back_y = bg_y + 932;
var back_w = 108;
var back_h = 26;

if (mouse_check_button_pressed(mb_left))
{
    if (point_in_rectangle(mx, my, back_x, back_y, back_x + back_w, back_y + back_h))
    {
        room_goto(rm_main_menu);
    }
}

if (keyboard_check_pressed(vk_escape))
{
    room_goto(rm_main_menu);
}