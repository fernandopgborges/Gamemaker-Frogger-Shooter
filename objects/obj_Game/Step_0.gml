var _foco = obj_Player;
var rate = 0.1;

var cam_w = camera_get_view_width(view_camera[0]);
var cam_h = camera_get_view_height(view_camera[0]);

// O alvo deve ser a posição do jogador MENOS a metade da tela
var alvo_x = _foco.x - (cam_w / 2);
var alvo_y = _foco.y - (cam_h / 2);

var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

var novo_x = lerp(cam_x, alvo_x, rate);
var novo_y = lerp(cam_y, alvo_y, rate);

novo_x = clamp(novo_x, 0, room_width - cam_w );
novo_y = clamp(novo_y, 0, room_height - cam_h );

camera_set_view_pos( view_camera[0], novo_x, novo_y);