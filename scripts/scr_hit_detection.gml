if (other.id != creator.id && other.team != creator.team) {
    // check if already hit entity
    for (i = 0; i < hitcount; i++) {
        if (other.id == hitarray[i]) exit;
    }
    other.hp -= damage;
    other.hpdamage += damage;
    other.vsp = -other.jumpspeed;
    other.hsp += knockback;
    hitarray[hitcount++] = other.id;
}
