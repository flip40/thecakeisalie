character = argument[0];
knockback = argument[1];

character.knockback = knockback;
character.vsp = -character.jumpspeed;
if (character.object_index != player1 && character.object_index != player2) {
    character.hp -= 1;
    if (character.hp <= 0) with (character) instance_destroy();
}
