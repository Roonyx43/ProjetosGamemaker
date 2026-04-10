if (global.pause){
	return
}

speed = vel

if (y <= 5){
	direction *= -1
}

if (y >= 470){
	direction *= -1
}

reset_round()