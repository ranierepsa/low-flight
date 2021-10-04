image_index = 4;
image_speed = 0;
speed = 0;

x = room_width/2;
y = room_height - sprite_height;

global.ship_speed = 5;
fire_rate = 10;
fire_rate_counter = 0;

half_sprite_width = sprite_width/2;
quarter_sprite_height = sprite_height/4;

top_bound = quarter_sprite_height;
bottom_bound = room_height - quarter_sprite_height;
left_bound = half_sprite_width;
right_bound = room_width - half_sprite_width;