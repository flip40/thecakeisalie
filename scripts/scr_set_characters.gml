// set player 1
switch (p1char) {
    // Weiss
    case 0: {
        global.p1idle = spr_weiss_swordfish;
        global.p1attack = spr_weiss_stab1;
        global.p1walk = spr_weiss_walk_swordfish;
    }
    break;
    
    // Yang
    case 1: {
        global.p1idle = spr_yang_turkey;
        global.p1attack = spr_yang_punch_turkey;
        global.p1walk = spr_yang_walk_turkey;    
    }
    break;
    
    // Blake
    case 2: {
        global.p1idle = spr_blake_bread;
        global.p1attack = spr_blake_slash;
        global.p1walk = spr_blake_walk_bread;    
    }
    break;
}

// set player 2
switch (p2char) {
    // Weiss
    case 0: {
        global.p2idle = spr_weiss_swordfish;
        global.p2attack = spr_weiss_stab1;
        global.p2walk = spr_weiss_walk_swordfish;
    }
    break;
    
    // Yang
    case 1: {
        global.p2idle = spr_yang_turkey;
        global.p2attack = spr_yang_punch_turkey;
        global.p2walk = spr_yang_walk_turkey;    
    }
    break;
    
    // Blake
    case 2: {
        global.p2idle = spr_blake_bread;
        global.p2attack = spr_blake_slash;
        global.p2walk = spr_blake_walk_bread;    
    }
    break;
}
