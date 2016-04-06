character = argument[0];
knockback = argument[1];

//character.knockback = knockback;
character.vsp = -character.jumpspeed;
character.hsp += knockback;
character.hpdamage += damage;
