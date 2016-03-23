// Local Variables
character = argument[0];
hinput = argument[1];

// Flip Sprite
if (hinput != 0) character.image_xscale = sign(hinput);
