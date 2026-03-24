speed += 0.05;

var amount = 0.001;

var incX = amount;
var incY = -amount;

if ( direction == 270 || direction == 90 ) {
	incX = -amount;
	incY = amount;
} 

image_xscale += incX;
image_yscale += incY;

