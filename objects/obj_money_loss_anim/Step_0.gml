/// obj_money_loss_anim : Step
drift_y -= 0.3;  

// Fade out 
var total_frames = sprite_get_number(sprite_index);
if (image_index >= total_frames - 3)
{
    anim_alpha -= 0.08;
}


if (image_index >= total_frames - 1)
{
    instance_destroy();
}