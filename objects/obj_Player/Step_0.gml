var g = instance_find(obj_Game, 0);
depth = -bbox_bottom;
var cam = view_camera[0];
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

var target_x = x - (cam_w / 2);
var target_y = y - (cam_h / 2);

target_x = clamp(target_x, 0, room_width - cam_w);
target_y = clamp(target_y, 0, room_height - cam_h);

camera_set_view_pos(cam, target_x, target_y);

if (g != noone && g.state == "idle") {
	

    var h = keyboard_check(vk_right) - keyboard_check(vk_left);
    var v = keyboard_check(vk_down) - keyboard_check(vk_up);

    


	move_and_collide(h * move_speed, v * move_speed, obj_ParentWalls);
	x = clamp(x, 0, room_width);
	y = clamp(y, 0, room_height);
	
}

