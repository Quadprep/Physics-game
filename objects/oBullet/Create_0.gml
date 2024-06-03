force = 10;
xDist = point_distance(x,0,mouse_x,0);
yDist = point_distance(0,y,0,mouse_y);
xForce = xDist/yDist;
yForce = yDist/xDist;
if(mouse_x <= x){
	xForce = xForce*-1;
}	
if(mouse_y >= y){
	yForce = yForce*-1;
}

phy_speed_x += force*xForce;
phy_speed_y += -1*force*yForce;

