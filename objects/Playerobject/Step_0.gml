/// @description Insert description here
// You can write your code in this editor


//pImput
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

if (key_left) || (key_right) || (key_jump)
{
	
}

//cMovement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

//if (place_meeting(x, y+1, Wallobject)) && (key_jump)
//{
//	grv = 0.05;
//	vsp = -0.5;	
//}
//hCollision
if (place_meeting(x + hsp, y, oWall))
{
	while (!place_meeting(x + sign(hsp), y, oWall))
	{
	//x = x + sign(hsp);
	phy_speed_x += sign(hsp);
	}
	hsp = 0;
}

//x = x + hsp;
phy_speed_x += hsp

//vCollision
if (place_meeting(x, y + vsp, oWall))
{
	while (!place_meeting(x, y + sign(vsp), oWall))
	{
	//y = y + sign(vsp);
phy_speed_y += sign(vsp);
	}
	vsp = 0;
}

//y = y + vsp;
phy_speed_y += vsp
//Animation
//if (!place_meeting(x, y + 1, Wallobject)){
//	sprite_index = SplayerA;
//	image_speed = 0;
//	if (sign(vsp) > 0) image_index = 1; else image_index = 0;  
	
//}
//else
//{
//image_speed = 1;
//if (hsp == 0)
//{
//sprite_index = Player;	
//}
//else
//{
//sprite_index = SplayerR;	
//}
//}

//if (hsp != 0) image_xscale = sign(hsp);





//hsp = phy_speed_x
if (place_meeting(x, y+1, Wallobject)) grv = 0;
































