spd = 2;
lado = 1
hspd = 0
virando = false

curve_t = 0;
curve_playing = false;
curve_dur = 20;
slime_curve_channel = animcurve_get_channel(ac_slime_turn, 0);

function boing_slime_start() {
    curve_t = 0;
    curve_playing = true;
}

function boing_slime_update() {
    if (curve_playing)
    {
        curve_t += 1;

        var t = curve_t / curve_dur;
        if (t > 1) t = 1;

        var v = animcurve_channel_evaluate(slime_curve_channel, t);

        image_xscale = 1 + v * 0.25;
        image_yscale = 1 - v * 0.25;

        if (t >= 1)
        {
            curve_playing = false;
            image_xscale = 1;
            image_yscale = 1;
        }
    }
}
boing_slime_update();