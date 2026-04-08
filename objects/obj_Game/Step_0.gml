// Game timer - only ticks when idle (paused during scenarios)
if (!game_over && state == "idle")
{
    game_timer--;
    if (game_timer <= 0)
    {
        game_timer = 0;
        game_over = true;
        state = "game_over";
    }
}

if (state == "scenario")
{
    var scenario = scenarios[current_scenario];
    var node = scenario.nodes[current_node];

    // Scenario timer countdown
    if (timer_active)
    {
        timer_current++;
        timer_frame++;

        if (timer_current >= timer_max)
        {
            timer_active = false;
            money += -250;
            audio_play_sound(snd_money_loss, 1, false);

            var anim = instance_create_depth(250, 280, -1000, obj_money_loss_anim);
            anim.sprite_index = spr_minus250;
            anim.image_index = 0;

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
            var anim_sprite = -1;
            switch (money_change)
            {
                case -150: anim_sprite = spr_minus150; break;
                case -250: anim_sprite = spr_minus250; break;
                case -500: anim_sprite = spr_minus500; break;
            }
            if (anim_sprite != -1)
            {
                var anim = instance_create_depth(250, 280, -1000, obj_money_loss_anim);
                anim.sprite_index = anim_sprite;
                anim.image_index = 0;
            }
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
    // Press enter to restart or quit
    if (keyboard_check_pressed(vk_enter))
    {
        game_restart();
    }
}