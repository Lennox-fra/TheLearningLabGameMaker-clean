bg_frame += bg_speed;
if (bg_frame >= sprite_get_number(spr_background)) bg_frame = 0;

if (transitioning)
{
    loading_frame += 0.3;
    if (loading_frame >= sprite_get_number(spr_loading))
    {
        audio_stop_all();
        global.selected_age_group = selected_age;
        room_goto(rm_test);
    }
    exit;
}

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

hovered = -1;
for (var i = 0; i < array_length(buttons); i++)
{
    var b = buttons[i];
    if (point_in_rectangle(mx, my, b.x1, b.y1, b.x2, b.y2))
    {
        hovered = i;
        break;
    }
}

if (hovered != -1 && mouse_check_button_pressed(mb_left))
{
    selected_age = buttons[hovered].age;
    transitioning = true;
    loading_frame = 0;
}