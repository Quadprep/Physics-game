/// @description Insert description here
// You can write your code in this editor
x = oPlayer.x;
y = oPlayer.y;


image_angle = point_direction(x, y, mouse_x, mouse_y);

// this is the thing that decreases the firing delay
firingdelay = firingdelay - 1;
recoil = max(0, recoil - 1)
// This is the part that fires the bullet
if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	recoil = 4;
	firingdelay = 5;
	with (instance_create_layer(x, y, "Bullets", oBullet))
	{
		speed = 25;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
	}
}	 

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
	
}
else
{
	image_yscale = 1;
}

if (place_meeting(x, y + oPlayer.vsp, oWall))
{
	oPlayer.vsp=0;
}
















































