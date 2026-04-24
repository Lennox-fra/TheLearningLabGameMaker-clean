player_name = "";
name_entered = false;
max_name_length = 12;

bg_frame = 0;
bg_speed = 0.5;

final_money = global.final_money;
final_time = global.final_time;
end_type = global.end_type;

if (end_type == "complete")
{
    final_score = final_money * ceil(final_time / game_get_speed(gamespeed_fps));
}
else
{
    final_score = final_money;
}

leaderboard = [];
if (file_exists("leaderboard.txt"))
{
    var f = file_text_open_read("leaderboard.txt");
    while (!file_text_eof(f))
    {
        var line = file_text_read_string(f);
        file_text_readln(f);
        if (string_length(line) > 0)
        {
            var parts = string_split(line, "|");
            if (array_length(parts) >= 2)
            {
                array_push(leaderboard, { name: parts[0], score: real(parts[1]) });
            }
        }
    }
    file_text_close(f);
}

keyboard_string = "";