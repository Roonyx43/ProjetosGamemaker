_left = keyboard_check(vk_left)
_right = keyboard_check(vk_right)

hspd = (_right - _left) * spd

move_and_collide(hspd, 0, obj_colisor)



if (!virando)
{
    if (hspd > 0 && lado == -1)
    {
        sprite_index = spr_slime_idle_tr_right
        image_index = 0
        virando = true
        lado = 1
		 boing_slime_start();
    }
    else if (hspd < 0 && lado == 1)
    {
        sprite_index = spr_slime_idle_tr_left
        image_index = 0
        virando = true
        lado = -1
		 boing_slime_start();
    }
}

boing_slime_update();