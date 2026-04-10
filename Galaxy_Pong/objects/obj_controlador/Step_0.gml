if (global.pause && global.iniciador = true) {
    global.contador -= delta_time / 1000000;
}

if (!global.pause){
	global.timer += delta_time / 1000000
}

if (global.contador <= 0) {
	global.contador = 3
	global.pause = false
	global.iniciador = false
}
