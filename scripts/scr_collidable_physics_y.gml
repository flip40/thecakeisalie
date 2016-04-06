if (vsp < 10) vsp += grav;

// Vertical Collision
if (place_meeting(x, y + vsp, obj_collidable_parent)) {
    while (!place_meeting(x, y + sign(vsp), obj_collidable_parent)) {
        y += sign(vsp);
    }
    vsp = 0;
}
else if (place_meeting(x, y + vsp, obj_lifeform)) {
    while (!place_meeting(x, y + sign(vsp), obj_lifeform)) {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;
