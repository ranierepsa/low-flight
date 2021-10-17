cam_speed = 0.1;

view_enabled = true;
view_visible[0] = true;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 200;
view_hport[0] = 300;

view_camera[0] = camera_create_view(
	0, room_height - view_hport[0], 
	view_wport[0], view_hport[0], 
	0, noone, -1, -1, -1, -1
);

window_set_rectangle(
	display_get_width()/2 - view_wport[0]*1.5, 
	display_get_height()/2 - view_hport[0]*1.5, 
	view_wport[0]*3, view_hport[0]*3
);

surface_resize(application_surface, view_wport[0]*3, view_hport[0]*3);

