// Local variables
character = argument[0];
hinput = argument[1];
vinput = argument[2];

// Increase gravity
if (vsp < 10) vsp += grav;

// Apply motion to inputs
// If moving past max speed (knockback effects) then act as if no input (deccelerate)
if (abs(hsp) > character.movespeed) {
    hinput = 0;
    show_debug_message("moving too fast!");
}
// Else if input is not 0, accelerate in the appropriate direction
if (hinput != 0) {
    hsp += hinput * character.haccel;
    // Cap at max speed
    if (abs(hsp) > character.movespeed) hsp = hinput * character.movespeed;
}
// If no input then deccellerate
else if (hsp != 0) {
    hdir = sign(hsp);
    hsp -= sign(hsp) * character.haccel;
    if (hdir > 0) {
//        hsp -= character.haccel;
        show_debug_message("slowing left");
    }
    else {
//        hsp += character.haccel;
        show_debug_message("slowing right");
    }
    if (hdir != sign(hsp)) {
        hsp = 0;
        show_debug_message("stopping");
    }
    if (abs(hsp) > character.movespeed) show_debug_message(string(id) + " error!");
    show_debug_message(string(hsp));
}
if (vinput) vsp = -character.jumpspeed; // Gravity

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
