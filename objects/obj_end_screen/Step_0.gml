bg_frame += bg_speed;
if (bg_frame >= sprite_get_number(spr_background)) bg_frame = 0;

if (!name_entered)
{
    if (keyboard_check_pressed(vk_backspace) && string_length(player_name) > 0)
    {
        player_name = string_copy(player_name, 1, string_length(player_name) - 1);
    }

    if (keyboard_check_pressed(vk_anykey))
    {
        var k = keyboard_lastchar;
        if (string_length(player_name) < max_name_length && string_length(k) > 0)
        {
            var code = ord(k);
            if ((code >= 65 && code <= 90) || (code >= 97 && code <= 122) || (code >= 48 && code <= 57) || code == 32)
            {
                player_name += k;
            }
        }
        keyboard_lastchar = "";
    }

    if (keyboard_check_pressed(vk_enter) && string_length(player_name) > 0)
    {
        name_entered = true;

        array_push(leaderboard, { name: player_name, score: final_score });
        array_sort(leaderboard, function(a, b) { return b.score - a.score; });

        while (array_length(leaderboard) > 10)
        {
            array_pop(leaderboard);
        }

        var f = file_text_open_write("leaderboard.txt");
        for (var i = 0; i < array_length(leaderboard); i++)
        {
            file_text_write_string(f, leaderboard[i].name + "|" + string(leaderboard[i].score));
            file_text_writeln(f);
        }
        file_text_close(f);
    }
}
else
{
    if (keyboard_check_pressed(vk_enter))
    {
        game_restart();
    }
}