if (!audio_is_playing(snd_mainMusic))
{
    audio_play_sound(snd_mainMusic, 0, true);
}

bg_frame = 0;
bg_speed = 0.5;
transitioning = false;
loading_frame = 0;