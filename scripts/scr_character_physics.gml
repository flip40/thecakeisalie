// Local variables
character = argument[0];
hinput = argument[1];
vinput = argument[2];

// Increase gravity
if (vsp < 10) vsp += grav;

// Apply motion to inputs
///hsp += hinput * character.haccel;
//if (abs(character.hsp) >= character.movespeed) hsp = hinput * character.movespeed;
//hsp = hinput * character.movespeed;
if (hinput != 0) hsp += hinput * character.haccel;
else {
    hdir = sign(hsp);
    if (hdir > 0) hsp -= character.haccel;
    else hsp += character.haccel;
    if (hdir != sign(hsp)) hsp = 0;
}
if (abs(hsp) > character.movespeed) hsp = hinput * character.movespeed;
if (vinput) vsp = -character.jumpspeed;

// Horizontal Collision
if (place_meeting(x + hsp, y, obj_collidable_parent)) {
    while (!place_meeting(x + sign(hsp), y, obj_collidable_parent)) {
        x += sign(hsp);
    }
    hsp = 0;
}
character.x += hsp;

// Vertical Collision
if (place_meeting(x, y + vsp, obj_collidable_parent)) {
    while (!place_meeting(x, y + sign(vsp), obj_collidable_parent)) {
        y += sign(vsp);
    }
    vsp = 0;
}
character.y += vsp;
