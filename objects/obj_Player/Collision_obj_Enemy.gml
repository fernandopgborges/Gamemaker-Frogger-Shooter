global.HP--;

if ( global.HP <= 0 ) {
	game_restart();	
}else {
	room_restart();	
}
