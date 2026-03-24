if ( !hit ) {
	x += dir * spd;
	
	if ( particleCounter > 0 ) {
		particleCounter--;
	
	} else {
		var _xx = bbox_left;
		if ( dir == -1 ) _xx = bbox_right;
	
		instance_create_depth( _xx, y + irandom_range( -4, 2 ), depth, obj_Particle );
	
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