var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

draw_sprite_ext(spr_background, floor(bg_frame), 0, 0, gui_w / sprite_get_width(spr_background), gui_h / sprite_get_height(spr_background), 0, c_white, 1);

draw_set_font(fnt_main);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (end_type == "complete")
{
    draw_set_color(make_color_rgb(100, 255, 150));
    draw_text_transformed(gui_w / 2, 140, "WELL DONE!", 1.2, 1.2, 0);
    draw_set_color(c_white);
    draw_text_transformed(gui_w / 2, 240, "You made it through all the scenarios!", 0.6, 0.6, 0);
}
else
{
    draw_set_color(make_color_rgb(255, 80, 80));
    draw_text_transformed(gui_w / 2, 140, "TIME'S UP!", 1.2, 1.2, 0);
    draw_set_color(c_white);
    draw_text_transformed(gui_w / 2, 240, "You ran out of time.", 0.6, 0.6, 0);
}

draw_set_color(make_color_rgb(255, 220, 100));
draw_text_transformed(gui_w / 2, 340, "Your Score: " + string(final_score), 0.8, 0.8, 0);

if (!name_entered)
{
    draw_set_color(c_white);
    draw_text_transformed(gui_w / 2, 440, "Enter your name:", 0.5, 0.5, 0);

    var box_w = 500;
    var box_h = 80;
    var box_x = gui_w / 2 - box_w / 2;
    var box_y = 490;

    draw_set_color(make_color_rgb(40, 40, 50));
    draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, false);
    draw_set_color(make_color_rgb(140, 90, 255));
    draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, true);

    var display_name = player_name;
    if ((current_time / 500) mod 2 < 1) display_name += "_";

    draw_set_color(c_white);
    draw_text_transformed(gui_w / 2, box_y + box_h / 2, display_name, 0.6, 0.6, 0);

    draw_set_color(make_color_rgb(170, 170, 180));
    draw_text_transformed(gui_w / 2, 610, "Press ENTER to submit", 0.5, 0.5, 0);
}
else
{
    draw_set_color(c_white);
    draw_text_transformed(gui_w / 2, 440, "LEADERBOARD", 0.7, 0.7, 0);

    var list_x = gui_w / 2;
    var list_y = 520;
    var row_h = 45;

    draw_set_halign(fa_left);
    for (var i = 0; i < array_length(leaderboard); i++)
    {
        var entry = leaderboard[i];
        var row_y = list_y + i * row_h;

        if (entry.name == player_name && entry.score == final_score)
        {
            draw_set_color(make_color_rgb(255, 220, 100));
        }
        else
        {
            draw_set_color(make_color_rgb(200, 200, 210));
        }

        draw_text_transformed(list_x - 250, row_y, string(i + 1) + ". " + entry.name, 0.5, 0.5, 0);
        draw_set_halign(fa_right);
        draw_text_transformed(list_x + 250, row_y, string(entry.score), 0.5, 0.5, 0);
        draw_set_halign(fa_left);
    }

    draw_set_halign(fa_center);
    draw_set_color(make_color_rgb(170, 170, 180));
    draw_text_transformed(gui_w / 2, gui_h - 80, "Press ENTER to play again", 0.5, 0.5, 0);
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);