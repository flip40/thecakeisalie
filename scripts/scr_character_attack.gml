// Attack
character = argument[0];
ainput = argument[1];

if (ainput && !character.attacking) {
    character.attacking = true;
    image_speed = .2;
    sprite_index = character.sprite_attack;
    image_index = 0;
}

if(character.attacking) {
    switch (sprite_index) {
    case spr_weiss_stab1: {
        // attack on second frame
        if (image_index >= 1 && attacked = false) {
            damage = instance_create(character.x + (character.facingdir * 35), character.y, obj_basic_hitbox);
            damage.creator = character;
            attacked = true;
        }
    }
    break;
    case spr_yang_punch_turkey: {
        // attack on first frame
        if (image_index >= 0 && attacked = false) {
            damage = instance_create(character.x + (character.facingdir * 35), character.y, obj_basic_hitbox);
            damage.creator = id;
            attacked = true;
        }
    }
    break;
    case spr_blake_slash_bread: {
        // attack on first frame
        if (image_index >= 0 && attacked = false) {
            damage = instance_create(character.x + (character.facingdir * 35), character.y, obj_basic_hitbox);
            damage.creator = id;
            attacked = true;
        }
    }
    break;
    }
}
