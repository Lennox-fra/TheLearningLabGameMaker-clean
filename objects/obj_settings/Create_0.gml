window_set_size(1920, 1080);
if (!audio_is_playing(snd_mainMusic))
{
    audio_play_sound(snd_mainMusic, 0, true);
}

display_set_gui_size(1920, 1080);

if (!variable_global_exists("vol_master")) global.vol_master = 1.0;
if (!variable_global_exists("vol_music"))  global.vol_music  = 1.0;
if (!variable_global_exists("vol_sfx"))    global.vol_sfx    = 1.0;
if (!variable_global_exists("text_speed")) global.text_speed = 0.5;
if (!variable_global_exists("fullscreen")) global.fullscreen = false;

selected     = 0;
num_settings = 6;