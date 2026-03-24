image_angle += dir * spd;

image_xscale += 0.02;
image_yscale += 0.02;

image_alpha -= 0.02;

x += dir *spd/2;

y -= spd;

if ( image_alpha <= 0 ) instance_destroy();