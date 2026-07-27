
if (!instance_exists(alvo)) exit;

var _x1 = alvo.x
var _y1 = alvo.y

var _dir = point_direction(_x1, _y1, mouse_x, mouse_y)

var _dist = (point_distance(_x1, _y1, mouse_x, mouse_y) / 2) 

_dist = clamp(_dist, -100, 150)

var _x2 = _x1 + lengthdir_x(_dist, _dir)
var _y2 = _y1 + lengthdir_y(_dist / 2, _dir)

x = lerp(x,_x2, .15)
y = lerp(y,_y2, .15)