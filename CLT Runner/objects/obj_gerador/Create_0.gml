alarm[0] = 60
alarm[1] = 120

function criarColetavel(){
    randomise()
    var _cdr = irandom_range(60, 240)
    var lado = choose("right", "left")
    if (lado == "right"){
        var _inimigo = instance_create_layer(332, -30, "Instances", obj_coletavel)
        _inimigo.sprite_index = choose(spr_batata, spr_chocolate, spr_hamburg)
        _inimigo.image_xscale = -1.7
        _inimigo.image_yscale = 1.7
    } else if (lado == "left"){
        var _inimigo = instance_create_layer(28, -30, "Instances", obj_coletavel)
        _inimigo.sprite_index = choose(spr_batata, spr_chocolate, spr_hamburg)
        _inimigo.image_xscale = 1.7
        _inimigo.image_yscale = 1.7
    }
    alarm[0] = _cdr
}

function criarInimigo(){
    randomise()
    var _cdr = irandom_range(180, 300)
    var lado = choose("right", "left")
    if (lado == "right"){
        var _inimigo = instance_create_layer(332, -30, "Instances", obj_inimigo)
        _inimigo.image_xscale = -1.7
        _inimigo.image_yscale = 1.7
    } else if (lado == "left"){
        var _inimigo = instance_create_layer(28, -30, "Instances", obj_inimigo)
        _inimigo.image_xscale = 1.7
        _inimigo.image_yscale = 1.7
    }
    alarm[1] = _cdr
}