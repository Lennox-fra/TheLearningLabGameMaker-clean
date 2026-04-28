draw_set_font(fnt_main);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
var scale = 0.5;
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

if (state != "game_over")
{
    var hud_x = 30;
    var hud_y = 30;
    var box_width = 380;
    var box_height = 200;
    var coin_size = 150;

    var _box_scale_x = box_width / sprite_get_width(spr_money_box);
    var _box_scale_y = box_height / sprite_get_height(spr_money_box);
    draw_sprite_ext(
        spr_money_box, 0,
        hud_x, hud_y,
        _box_scale_x, _box_scale_y,
        0, c_white, 1
    );

    var _coin_scale = coin_size / sprite_get_width(spr_coin_anim);
    var _coin_draw_w = sprite_get_width(spr_coin_anim) * _coin_scale;
    var _coin_draw_h = sprite_get_height(spr_coin_anim) * _coin_scale;
    var _coin_x = hud_x + (box_width * 0.40) - (_coin_draw_w / 2);
    var _coin_y = hud_y + (box_height / 2) - (_coin_draw_h / 2);
    draw_sprite_ext(
        spr_coin_anim, coin_frame,
        _coin_x, _coin_y,
        _coin_scale, _coin_scale,
        0, c_white, 1
    );

    draw_set_font(fnt_main);
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_text_transformed(
        hud_x + (box_width * 0.45),
        hud_y + (box_height / 2) + 8,
        string(money),
        0.6, 0.6,
        0
    );

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}

if (state != "game_over")
{
    var seconds_left = ceil(game_timer / game_get_speed(gamespeed_fps));
    var mins = seconds_left div 60;
    var secs = seconds_left mod 60;
    var time_string = string(mins) + ":" + (secs < 10 ? "0" : "") + string(secs);

    draw_set_halign(fa_right);
    draw_set_valign(fa_top);

    if (seconds_left <= 30)
    {
        draw_set_color(make_color_rgb(255, 80, 80));
    }
    else
    {
        draw_set_color(c_white);
    }

    draw_text_transformed(
        gui_w - 40,
        40,
        time_string,
        0.7, 0.7,
        0
    );

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
}

if (state != "game_over")
{
    draw_sprite_ext(spr_Logo, 0, gui_w / 2 - (1920 * 0.15) / 2, 20, 0.15, 0.15, 0, c_white, 1);
}

if (state == "scenario" || state == "end")
{
    draw_set_alpha(0.85);
    draw_set_color(c_black);
    draw_rectangle(0, 0, gui_w, gui_h, false);
    draw_set_alpha(1);
    draw_set_color(c_white);

    if (state == "scenario" && timer_active)
    {
        var total_frames = sprite_get_number(spr_scenarioTimer);
        var frame = floor((timer_current / timer_max) * (total_frames - 1));
        frame = clamp(frame, 0, total_frames - 1);
        draw_sprite_ext(spr_scenarioTimer, frame, gui_w - 300, 20, 0.25, 0.25, 0, c_white, 1);
    }

    var panel_x1 = 100;
    var panel_y1 = 280;
    var panel_x2 = gui_w - 100;
    var panel_y2 = gui_h - 40;

    draw_set_alpha(0.3);
    draw_set_color(c_black);
    draw_rectangle(panel_x1 + 6, panel_y1 + 6, panel_x2 + 6, panel_y2 + 6, false);
    draw_set_alpha(1);

    draw_set_color(make_color_rgb(30, 30, 35));
    draw_rectangle(panel_x1, panel_y1, panel_x2, panel_y2, false);

    draw_set_color(make_color_rgb(80, 80, 90));
    draw_rectangle(panel_x1, panel_y1, panel_x2, panel_y2, true);

    var portrait_size = 160;
    var portrait_x = panel_x1 + 30;
    var portrait_y = panel_y1 + 20;

    if (current_portrait != -1)
    {
        draw_set_color(make_color_rgb(45, 45, 50));
        draw_rectangle(portrait_x - 10, portrait_y - 10, portrait_x + portrait_size + 10, portrait_y + portrait_size + 10, false);
        draw_set_color(make_color_rgb(100, 100, 110));
        draw_rectangle(portrait_x - 10, portrait_y - 10, portrait_x + portrait_size + 10, portrait_y + portrait_size + 10, true);

        var pw = sprite_get_width(current_portrait);
        var ph = sprite_get_height(current_portrait);
        var pscale = min(portrait_size / pw, portrait_size / ph);
        draw_sprite_ext(
            current_portrait, 0,
            portrait_x + portrait_size / 2 - (pw * pscale) / 2,
            portrait_y + portrait_size / 2 - (ph * pscale) / 2,
            pscale, pscale, 0, c_white, 1
        );
    }

    var content_x = portrait_x + portrait_size + 40;
    var content_y = panel_y1 + 30;
    var content_width = (panel_x2 - 60 - content_x) * 2;

    draw_set_color(make_color_rgb(220, 220, 225));
    draw_text_ext_transformed(
        content_x,
        content_y,
        current_text,
        64,
        content_width,
        scale, scale,
        0
    );

    var text_bottom = content_y + string_height_ext(current_text, 64, content_width) * scale + 20;
    var divider_y = max(text_bottom, portrait_y + portrait_size + 40);

    draw_set_color(make_color_rgb(60, 60, 70));
    draw_line_width(panel_x1 + 30, divider_y, panel_x2 - 30, divider_y, 2);

    if (state == "scenario")
    {
        var option_start_y = divider_y + 25;
        for (var i = 0; i < array_length(options); i++)
        {
            var oy = option_start_y + i * 70;

            if (i == selected_option)
            {
                draw_set_alpha(0.15);
                draw_set_color(c_white);
                draw_rectangle(panel_x1 + 20, oy - 8, panel_x2 - 30, oy + 40, false);
                draw_set_alpha(1);

                draw_set_color(make_color_rgb(255, 220, 100));
                draw_text_transformed(
                    panel_x1 + 40,
                    oy,
                    "> " + options[i],
                    scale, scale,
                    0
                );
            }
            else
            {
                draw_set_color(make_color_rgb(170, 170, 180));
                draw_text_transformed(
                    panel_x1 + 70,
                    oy,
                    options[i],
                    scale, scale,
                    0
                );
            }
        }
    }

    if (state == "end")
    {
        var prompt_y = panel_y2 - 60;
        draw_set_halign(fa_center);
        draw_set_color(make_color_rgb(170, 170, 180));
        draw_text_transformed(
            gui_w / 2,
            prompt_y,
            "Press ENTER to continue",
            scale, scale,
            0
        );
        draw_set_halign(fa_left);
    }
}

if (state == "game_over")
{
    draw_set_alpha(0.9);
    draw_set_color(c_black);
    draw_rectangle(0, 0, gui_w, gui_h, false);
    draw_set_alpha(1);

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    if (money <= 0)
    {
        draw_set_color(make_color_rgb(255, 80, 80));
        draw_text_transformed(
            gui_w / 2,
            gui_h / 2 - 100,
            "YOU RAN OUT OF MONEY!",
            1, 1,
            0
        );
    }
    else
    {
        draw_set_color(make_color_rgb(255, 80, 80));
        draw_text_transformed(
            gui_w / 2,
            gui_h / 2 - 100,
            "TIME'S UP!",
            1, 1,
            0
        );
    }

    draw_set_color(c_white);
    draw_text_transformed(
        gui_w / 2,
        gui_h / 2 + 20,
        "Final Money: £" + string(money),
        0.6, 0.6,
        0
    );

    draw_set_color(make_color_rgb(170, 170, 180));
    draw_text_transformed(
        gui_w / 2,
        gui_h / 2 + 120,
        "Press ENTER to restart",
        0.5, 0.5,
        0
    );

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}

if (flash_active)
{
    draw_sprite(flash_sprite, flash_frame, 0, 0);
}