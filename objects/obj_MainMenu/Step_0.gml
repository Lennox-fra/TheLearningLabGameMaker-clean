if (transitioning)
{
    loading_frame += 1;
    if (loading_frame >= sprite_get_number(spr_loading))
    {
        room_goto(target_room);
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
    var clicked = buttons[hovered].name;

    switch (clicked)
    {
        case "start":
            transitioning = true;
            loading_frame = 0;
            target_room = rm_age_choice;
            break;

        case "settings":
            break;

        case "credits":
            transitioning = true;
            loading_frame = 0;
            target_room = rm_credits;
            break;

        case "quit":
            game_end();
            break;
    }
}