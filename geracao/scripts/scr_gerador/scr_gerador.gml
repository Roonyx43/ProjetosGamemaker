
#macro SIZE 64

//Quantidade de colunas e linhas
#macro GRID_W 20
#macro GRID_H 16

//Posição inicial na grid

#macro GRID_X 10
#macro GRID_y 8

//Criando uma lista de tipos de salas
enum TIPO_SALA {
	vazio,
	normal,
	inicio,
	boss,
	tesouro
}

//Função para criar a minha grid

function criar_grid(){
	var _grid = [0,0]
	
	for (var i = 0; i < GRID_W; i++){
		
		for (var j = 0; j < GRID_H; j++){
			_grid[i, j] = TIPO_SALA.vazio;
		}
	}
	
	var _grid_com_salas = criar_salas(_grid)
	
	return _grid_com_salas
}

//Função para criar as salas do mapa
function criar_salas(_grid){
	
	//Definindo a sala inicial.
	var _x = GRID_X
	var _y = GRID_y
	
	//Avisando que essa posição tem a sala inicial
	_grid[_x, _y] = TIPO_SALA.inicio
	
	//Devolvendo a grid modificada com as salas
	
	return _grid
	
}


function desenhar_grid(_grid){
	for (var i = 0; i < GRID_W; i++){
		//draw_line(i * SIZE, 0, i * SIZE, GRID_H * SIZE)
	}
	
	for (var j = 0; j < GRID_H; j++){
		//draw_line(0, j * SIZE, GRID_W * SIZE, j * SIZE)
	}
	
	//Desenhando as salas
	
	for (var i = 0; i < GRID_W; i++){
		for (var j = 0; j < GRID_H; j++){
			//Salvando a sala atual
			var _sala_atual = _grid[i, j]
			
			var _x1 = i * SIZE
			var _y1 = j * SIZE
			var _x2 = _x1 + SIZE
			var _y2 = _y1 + SIZE
			
			if (_sala_atual != TIPO_SALA.vazio){
				
				
				draw_rectangle(_x1, _y1, _x2, _y2, 0)
			}
		}
	}
}