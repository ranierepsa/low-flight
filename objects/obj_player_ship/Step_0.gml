// Movement
speed = global.ship_speed;

if (keyboard_check(vk_left) and keyboard_check(vk_up))
{
	direction = 135;
}
else if (keyboard_check(vk_left) and keyboard_check(vk_down))
{
	direction = 225;
}
else if (keyboard_check(vk_right) and keyboard_check(vk_up))
{
	direction = 45;
}
else if (keyboard_check(vk_right) and keyboard_check(vk_down))
{
	direction = 315;
}
else if (keyboard_check(vk_left))
{
	direction = 180;
}
else if (keyboard_check(vk_right))
{
	direction = 0;
}
else if (keyboard_check(vk_up))
{
	direction = 90;
}
else if (keyboard_check(vk_down))
{
	direction = 270;
}
else
{
	speed = 0;
	direction = 0;
}

// Fire
fire_rate_counter++;
if (keyboard_check(vk_space) and fire_rate_counter >= fire_rate)
{
	fire_rate_counter = 0;
	instance_create_layer(x, y, "Instances", obj_bullet);	
}

// Constrain ship into camera bounds
var _cameraViewY = camera_get_view_y(view_camera[0]);
var _cameraViewWidth = camera_get_view_height(view_camera[0]);
top_bound = _cameraViewY + quarter_sprite_height;
bottom_bound = _cameraViewY + _cameraViewWidth - quarter_sprite_height;
x = clamp(x, left_bound, right_bound);
y = clamp(y, top_bound, bottom_bound);
