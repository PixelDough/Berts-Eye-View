/// @param collide

var collide = argument0;
with other {
	xColl = place_meeting(x+(vx),y,obj_collide);
	if xColl vx = 0;
	//switch to idle
	if abs(vx) < 0.1 {
		vx = 0;
	}
	
	//vertical movements
	//gravity
	vy += grav;
	//landing on a platform
	with obj_platform {
		if other.bbox_bottom <= bbox_top {
			solid = true;
		} else {
			solid = false;
		}
	}
	yColl = !place_free(x,y+(vy));
	grounded = false
	if collide {
		if yColl {
			while place_free(x,y+sign(vy)) {
				y+=sign(vy);
			}
			vy = 0;
			grounded = true;
		}
		
		//loop
		if y-16 > room_height {
			room_restart();
		}
	}
	
	//limit fall speed
	vy = min(vy, vy_max);
	
	//apply velocity
	x += vx;
	y += vy;
}