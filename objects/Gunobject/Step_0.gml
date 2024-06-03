var dir = -1*point_direction(x, y, mouse_x, mouse_y);
phy_angular_velocity = angle_difference(dir, phy_rotation)*6;

firingdelay = firingdelay - 1;
recoil = max(0, recoil - 1)
// This is the part that fires the bullet
if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	recoil = 4;
	firingdelay = 5;
	with (instance_create_layer(x, y, "Bullets", oBullet))
	{
		 direction = other.phy_rotation + random_range(-3, 3);
		phy_rotation = direction;
		
	}
}	 