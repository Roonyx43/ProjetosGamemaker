image_xscale += 0.1
image_yscale = image_xscale

image_alpha = lerp(image_alpha, 0, 0.2)

if (image_alpha < 0.01) {
	instance_destroy()
}

hspeed = -1 -global.level
vspeed = -2