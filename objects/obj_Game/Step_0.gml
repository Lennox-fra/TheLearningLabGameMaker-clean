coin_frame += 0.1;

if (flash_active)
{
    flash_frame++;
    if (flash_frame >= sprite_get_number(flash_sprite))
    {
        flash_active = false;
        flash_frame = 0;
    }
}

if (!game_over && (state == "idle" || state == "scenario"))
{
    game_timer--;
    if (game_timer <= 0)
    {
        game_timer = 0;
        game_over = true;
        timer_active = false;
        global.end_type = "timeout";
        global.final_money = money;
        global.final_time = 0;
        audio_stop_all();
        room_goto(rm_end_screen);
    }
    if (array_length(available_scenarios) <= 0 && state == "idle")
    {
        game_over = true;
        timer_active = false;
        global.end_type = "complete";
        global.final_money = money;
        global.final_time = game_timer;
        audio_stop_all();
        room_goto(rm_end_screen);
    }
}
if (state == "scenario")
{
    var scenario = scenarios[current_scenario];
    var node = scenario.nodes[current_node];
    if (timer_active)
    {
        timer_current++;
        timer_frame++;
        if (timer_current >= timer_max)
        {
            timer_active = false;
            money += -250;
            audio_play_sound(snd_money_loss, 1, false);
            flash_active = true;
            flash_sprite = spr_screen_flash_red;
            flash_frame = 0;
            current_text = "Time ran out! You lose £250.";
            options = [];
            state = "end";
        }
    }
    if (keyboard_check_pressed(vk_up))
    {
        selected_option--;
        if (selected_option < 0)
            selected_option = array_length(node.options) - 1;
    }
    if (keyboard_check_pressed(vk_down))
    {
        selected_option++;
        if (selected_option >= array_length(node.options))
            selected_option = 0;
    }
    if (keyboard_check_pressed(vk_enter))
    {
        var next_node = node.next[selected_option];
        var money_change = node.money[selected_option];
        money += money_change;
        if (money_change < 0)
        {
            audio_play_sound(snd_money_loss, 1, false);
            flash_active = true;
            flash_sprite = spr_screen_flash_red;
            flash_frame = 0;
        }
        else if (money_change > 0)
        {
            audio_play_sound(snd_money_gain, 1, false);
            flash_active = true;
            flash_sprite = spr_screen_flash_green;
            flash_frame = 0;
        }
        if (next_node == -1)
        {
            timer_active = false;
            current_text = node.end_text[selected_option];
            options = [];
            state = "end";
        }
        else
        {
            timer_current = 0;
            timer_frame = 0;
            current_node = next_node;
            var new_node = scenario.nodes[current_node];
            current_text = new_node.text;
            options = new_node.options;
            selected_option = 0;
        }
    }
}
else if (state == "end")
{
    timer_active = false;
    if (keyboard_check_pressed(vk_enter))
    {
        state = "idle";
        current_text = "";
        options = [];
        current_scenario = -1;
        current_portrait = -1;
    }
}
else if (state == "game_over")
{
    if (keyboard_check_pressed(vk_enter))
    {
        game_restart();
    }
}