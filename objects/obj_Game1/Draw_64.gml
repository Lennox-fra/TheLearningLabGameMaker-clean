draw_set_font(fnt_main);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
var scale = 0.5;
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// Game timer display
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

// Stop Think Fraud logo - top centre
if (state != "game_over")
{
    draw_sprite_ext(spr_Logo, 0, gui_w / 2 - (1920 * 0.15) / 2, 20, 0.15, 0.15, 0, c_white, 1);
}

if (state == "scenario" || state == "end")
{
    // Darken background
    draw_set_alpha(0.85);
    draw_set_color(c_black);
    draw_rectangle(0, 0, gui_w, gui_h, false);
    draw_set_alpha(1);
    draw_set_color(c_white);

    // Scenario timer clock - bigger
    if (state == "scenario" && timer_active)
    {
        var total_frames = sprite_get_number(spr_scenarioTimer);
        var frame = floor((timer_current / timer_max) * (total_frames - 1));
        frame = clamp(frame, 0, total_frames - 1);
        draw_sprite_ext(spr_scenarioTimer, frame, gui_w - 300, 20, 0.25, 0.25, 0, c_white, 1);
    }

    // Panel
    var panel_x1 = 100;
    var panel_y1 = 280;
    var panel_x2 = gui_w - 100;
    var panel_y2 = gui_h - 40;

    // Panel shadow
    draw_set_alpha(0.3);
    draw_set_color(c_black);
    draw_rectangle(panel_x1 + 6, panel_y1 + 6, panel_x2 + 6, panel_y2 + 6, false);
    draw_set_alpha(1);

    // Panel body
    draw_set_color(make_color_rgb(30, 30, 35));
    draw_rectangle(panel_x1, panel_y1, panel_x2, panel_y2, false);

    // Panel border
    draw_set_color(make_color_rgb(80, 80, 90));
    draw_rectangle(panel_x1, panel_y1, panel_x2, panel_y2, true);

    // Portrait
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

    // Scenario text
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

    // Divider line
    draw_set_color(make_color_rgb(60, 60, 70));
    draw_line_width(panel_x1 + 30, divider_y, panel_x2 - 30, divider_y, 2);

    // Options
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

    // End screen prompt
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

// Game over screen
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