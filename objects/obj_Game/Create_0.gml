randomize();
audio_play_sound(snd_music, 0, true);
display_set_gui_size(1920, 1080);
gpu_set_texfilter(false);
surface_resize(application_surface, 1920, 1080);
state = "idle";
money = 150;
current_text = "";
options = [];
selected_option = 0;
current_scenario = -1;
current_node = 0;
portrait_sprites = [spr_char_red, spr_char_blue];
current_portrait = -1;
scenarios = scr_setup_scenarios();
selected_age_group = variable_global_exists("selected_age_group") ? global.selected_age_group : "13-17";
var regular_pool = [];
var red_herring_pool = [];
for (var i = 0; i < array_length(scenarios); i++)
{
    if (scenarios[i].age_group == selected_age_group)
    {
        if (scenarios[i].red_herring)
            array_push(red_herring_pool, i);
        else
            array_push(regular_pool, i);
    }
}
available_scenarios = [];
var num_red = min(2, array_length(red_herring_pool));
for (var i = 0; i < num_red; i++)
{
    var pick = irandom(array_length(red_herring_pool) - 1);
    array_push(available_scenarios, red_herring_pool[pick]);
    array_delete(red_herring_pool, pick, 1);
}
var num_regular = min(3, array_length(regular_pool));
for (var i = 0; i < num_regular; i++)
{
    var pick = irandom(array_length(regular_pool) - 1);
    array_push(available_scenarios, regular_pool[pick]);
    array_delete(regular_pool, pick, 1);
}
timer_active = false;
timer_max = 30 * game_get_speed(gamespeed_fps);
timer_current = 0;
timer_frame = 0;
game_timer = 5 * 60 * game_get_speed(gamespeed_fps);
game_over = false;
end_type = "";
coin_frame = 0;
flash_active = false;
flash_sprite = -1;
flash_frame = 0;

function start_random_scenario()
{
    if (array_length(available_scenarios) <= 0)
    {
        game_over = true;
        timer_active = false;
        global.end_type = "complete";
        global.final_money = money;
        global.final_time = game_timer;
        audio_stop_all();
        room_goto(rm_end_screen);
        return;
    }
    var pick = irandom(array_length(available_scenarios) - 1);
    current_scenario = available_scenarios[pick];
    array_delete(available_scenarios, pick, 1);
    current_node = 0;
    var node = scenarios[current_scenario].nodes[current_node];
    current_text = node.text;
    options = node.options;
    selected_option = 0;
    current_portrait = choose(portrait_sprites[0], portrait_sprites[1]);
    state = "scenario";
    timer_active = true;
    timer_current = 0;
    timer_frame = 0;
}