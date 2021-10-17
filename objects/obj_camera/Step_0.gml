var _viewX = camera_get_view_x(view_camera[0]);
var _viewY = camera_get_view_y(view_camera[0]);

if (_viewY > 0)
{
	camera_set_view_pos(view_camera[0], _viewX, _viewY - cam_speed);
}