if ( !hit ) {
	y += dir * spd;
	
	if ( particleCounter > 0 ) {
		particleCounter--;
	
	} else {
		var _yy = bbox_bottom;
		if ( dir == -1 ) _xx = bbox_top;
	
		instance_create_depth( x + ( irandom_range( -4, 4 )), _yy, depth, obj_Particle );
	
		particleCounter = particleTime;
	}
	
	if ( place_meeting( x + dir *spd, y, obj_Obstacle ) || place_meeting( x, y + dir *spd, obj_Obstacle ) ) dir = -dir;
}

if ( image_xscale != baseScale ) {
	image_xscale = lerp( image_xscale, baseScale, 0.2 );	
}

if ( image_yscale != baseScale ) {
	image_yscale = lerp( image_yscale, baseScale, 0.2 );	
}

move_wrap( true, true, 16 );

if ( hp <= 0 ) instance_destroy();