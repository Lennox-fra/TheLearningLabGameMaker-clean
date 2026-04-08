/// obj_money_loss_anim : Draw GUI
draw_set_alpha(anim_alpha);
draw_sprite_ext(
    sprite_index,
    image_index,
    x,
    y + drift_y,
    3, 3,          
    0,             
    c_white,
    anim_alpha
);
draw_set_alpha(1);