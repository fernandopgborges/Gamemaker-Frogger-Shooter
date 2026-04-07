var keyLeft = keyboard_check( ord("A" ) );
var keyRight = keyboard_check( ord("D" ) );

var keyUp = keyboard_check( ord("W" ) );
var keyDown = keyboard_check( ord("S" ) );

var increment = 32;

if ( keyRight && ( x + increment < room_width ) && !move ) {
	image_angle = 270;
	targetX += increment;
	move = true;
}

if ( keyLeft && ( x - increment > 0 ) && !move  ) {
	image_angle = 90;
	targetX -= increment;
	move = true;
}

if ( keyDown && ( y + increment < room_height ) && !move  ) {
	image_angle = 180;
	targetY += increment;
	move = true;
}

if ( keyUp && ( y - increment > 0 ) && !move  ) {
	image_angle = 0;
	targetY -= increment;
	move = true;
}

if ( move && place_meeting( targetX, targetY, obj_Obstacle ) ) {
	move = false;
	targetX = x;
	targetY = y;
}

if ( move && !flagMove ) {
	flagMove = true;
	
	xscale = 1.5;
	yscale = 0.5;
}

if ( x != targetX ) {
	x = lerp( x, targetX, spd )	
}

if ( y != targetY ) {
	y = lerp( y, targetY, spd )	
}

var dist = point_distance( x, y, targetX, targetY );

if ( dist < spd && move ) {
	show_debug_message( "cheguei ao fim" )
	
	x = targetX;
	y = targetY;
	
	move = false;
	flagMove = false;
}

var lerpSpd = spd/2;

if ( xscale != baseScale ) {
	xscale = lerp( xscale, baseScale, lerpSpd );	
}

if ( yscale != baseScale ) {
	yscale = lerp( yscale, baseScale, lerpSpd );	
}

if ( !move && dist < spd ) {
	var arrowRight = keyboard_check( vk_right );
	var arrowLeft = keyboard_check( vk_left );	
	var arrowUp = keyboard_check( vk_up );	
	var arrowDown = keyboard_check( vk_down );	
	
	var dir = -1;
	var _shoot = false;
	
	if ( arrowRight ) {
		dir = 0;
		_shoot = true;
	}
	if ( arrowLeft ) {
		dir = 180;
		_shoot = true;
	}
	if ( arrowUp ) {
		dir = 90;
		_shoot = true;
	}
	if ( arrowDown ) {
		dir = 270;
		_shoot = true;
	}
	
	if ( _shoot && !shooting ) {
		image_angle = dir - 90;
		shooting = true;
		xscale = 1.25;
		yscale = 0.75;
		
		var bullet = instance_create_depth( x, y, depth, obj_Bullet );
		bullet.direction = dir;
		bullet.speed = 1;
		bullet.image_angle = image_angle;
		alarm[1] = 30;
	}
}