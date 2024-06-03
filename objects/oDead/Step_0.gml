if (done == 0)
{
	vsp = vsp + grv;

	//hCollision
	if (place_meeting(x + hsp, y, Wallobject))
	{
		while (!place_meeting(x + sign(hsp), y, Wallobject))
		{
		x = x + sign(hsp);	
		}
		hsp = 0;
	}

	x = x + hsp;

	//vCollision
	if (place_meeting(x, y + vsp, Wallobject))
	{
		if (vsp > 0)
		{
		done = 1;
		image_index = 1;
		}
		while (!place_meeting(x, y + sign(vsp), Wallobject))
		{
		y = y + sign(vsp);	
		}
		vsp = 0;
	}

	y = y + vsp;
}