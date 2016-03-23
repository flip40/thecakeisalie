// Attack
character = argument[0];
ainput = argument[1];

if (ainput && !character.attacking) {
    character.attacking = true;
    image_speed = .2;
    sprite_index = spr_weiss_stab1;
    image_index = 0;
}

if(character.attacking) {
    // attack on second frame
    if (image_index >= 1 && attacked = false) {
        damage = instance_create(character.x + (character.facingdir * 35), character.y, obj_basic_hitbox);
        damage.creator = id;
        attacked = true;
    }
}
