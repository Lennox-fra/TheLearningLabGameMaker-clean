bg_frame += bg_speed;
if (bg_frame >= sprite_get_number(spr_background)) bg_frame = 0;

if (transitioning)
{
    loading_frame += 0.3;
    if (loading_frame >= sprite_get_number(spr_loading))
    {
        room_goto(rm_main_menu);
    }
    exit;
}

if (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_escape))
{
    transitioning = true;
    loading_frame = 0;
}