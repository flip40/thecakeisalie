// Local variables
character = argument[0];
hinput = argument[1];
vinput = argument[2];

if (hinput != 0) facingdir = sign(hinput);

// Increase gravity
if (vsp < 10) vsp += grav;

if (knockback == 0) {
    // Apply motion to inputs
    if (hinput != 0) hsp += hinput * character.haccel;
    else {
        hdir = sign(hsp);
        if (hdir > 0) hsp -= character.haccel;
        else hsp += character.haccel;
        if (hdir != sign(hsp)) hsp = 0;
    }
    if (abs(hsp) > character.movespeed) hsp = hinput * character.movespeed;
    if (vinput) vsp = -character.jumpspeed;
}
else {
    kdir = sign(character.knockback);
    if (kdir > 0) {
        character.knockback -= character.haccel;
        hsp -= character.haccel;
    }
    else {
        character.knockback += character.haccel;
        hsp += character.haccel;
    }
    if (kdir != sign(hsp)) {
        character.knockback = 0;
        hsp = 0;
    }
}
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
