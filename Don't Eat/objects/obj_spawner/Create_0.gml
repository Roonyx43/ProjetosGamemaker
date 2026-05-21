randomise()

timer_spawn = 120;

alarm[0] = timer_spawn

enum Frutas {
    Banana,
    Cereja,
    Maca
}

function gerarFruta(){
    
    var _posicao = irandom_range(48,592)
    
    var fruta_selecionada = choose(Frutas.Banana, Frutas.Cereja, Frutas.Maca)
    var _fruta = instance_create_layer(_posicao, -20, "Instances", obj_fruta)
    _fruta.speed = 2;
    _fruta.direction = 270
    _fruta.image_index = fruta_selecionada
    _fruta.image_speed = 0
}