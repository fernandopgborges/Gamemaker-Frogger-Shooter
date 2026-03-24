if ( image_xscale != baseScale ) {
	image_xscale = lerp( image_xscale, baseScale, 0.2 );	
}

if ( image_yscale != baseScale ) {
	image_yscale = lerp( image_yscale, baseScale, 0.2 );	
}

if ( hp <= 0 ) instance_destroy();