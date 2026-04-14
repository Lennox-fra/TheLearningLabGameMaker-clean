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
available_scenarios = [];
for (var i = 0; i < array_length(scenarios); i++)
{
    array_push(available_scenarios, i);
}
// Scenario timer
timer_active = false;
timer_max = 30 * game_get_speed(gamespeed_fps);
timer_current = 0;
timer_frame = 0;
// Game timer (5 minutes)
game_timer = 5 * 60 * game_get_speed(gamespeed_fps);
game_over = false;
function start_random_scenario()
{
    if (array_length(available_scenarios) <= 0)
    {
        state = "idle";
        current_text = "All scenarios completed.";
        options = [];
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