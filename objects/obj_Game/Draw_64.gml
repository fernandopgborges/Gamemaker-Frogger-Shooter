draw_set_halign( fa_left );
draw_text_scribble( 32, 64, "[wave][scale, 3][spr_Coins] " + string(global.Coins) + "/" + string( totalCoins ) )

for ( var i = 0; i < global.HP; i++ ) {
	draw_sprite_ext( spr_Player, 0, 32 + 48 * i, 32, 2, 2, 0, -1, 1 );
}
