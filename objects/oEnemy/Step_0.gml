hsp = walksp;
vsp = vsp + grv;
//hCollision

//if (place_meeting(x + phy_speed_x, y, Wallobject))
//{
//	while (!place_meeting(x + sign(hsp), y, Wallobject))
//	{
//	phy_speed_x += sign(hsp);	
//	}
//	show_debug_message("Colided")
//	hsp = hsp*-1;
//	phy_speed_x=phy_speed_x *-1;
//}

//x = x + hsp;
phy_speed_x += hsp;
//vCollision
//if (place_meeting(x, y + vsp, Wallobject))
//{
//	while (!place_meeting(x, y + sign(vsp), Wallobject))
//	{
//	phy_speed_y+= sign(vsp);	
//	}
//	vsp = 0;
//}

//y = y + vsp;


//phy_speed_y  += vsp;

//Animation
if (!place_meeting(x, y + 1, Wallobject)){
	sprite_index = sEnemyA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;  
	
}
else
{
image_speed = 1;
if (hsp == 0)
{
sprite_index = sEnemy;	
}
else
{
sprite_index = sEnemyR;	
}
}

if (hsp != 0) image_xscale = sign(hsp);