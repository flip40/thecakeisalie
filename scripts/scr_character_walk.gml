character = argument[0];
hinput = argument[1];

if (!character.attacking && !character.walking && hinput != 0) {
    character.walking = true;
    image_speed = .2;
    sprite_index = character.sprite_walk;
    image_index = 0;
}
