draw_set_font(fnt_main);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_sprite(spr_money_box, 0, 40, 40);
coin_frame += coin_speed;
if (coin_frame >= sprite_get_number(spr_coin_anim)) coin_frame = 0;
draw_sprite_ext(spr_coin_anim, floor(coin_frame), 175, 155, 0.06, 0.06, 0, c_white, 1);
draw_text_transformed(
    270,
    185,
    string(obj_Game.money),
    0.5, 0.5, 0
);
draw_set_halign(fa_left);
draw_set_valign(fa_top);