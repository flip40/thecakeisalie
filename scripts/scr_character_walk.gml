character = argument[0];
hinput = argument[1];

if (!character.attacking && hinput != 0) {
    image_speed = .2;
    sprite_index = character.sprite_idle;
    image_index = 0;
}
