switch (mpos) {
    // Start
    case 0: {
        room_goto(rm_char_select);
    }
    break;
    
    // Quit
    case 1: {
        game_end();
    }
    break;
    
    default: break;
}

