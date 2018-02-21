///scr_card_selection

if (mouse_check_button_pressed(mb_left)){
    if (instance_position(mouse_x, mouse_y, obj_card)){
        scr_get_top_card();
    }
}
if (mouse_check_button(mb_left)){
    with (card_selected){
        if (played == false){
            x = mouse_x;
            y = mouse_y;
            depth= -room_height;
        }
    }
}
else if (mouse_check_button_released(mb_left)){
    if (card_selected != noone){
        scr_play_card();
        with (card_selected) {
            if (start_y == 91 && played == true){
                global.hand[1] = noone;
                scr_draw(1);
            }
            else if (start_y == 264 && played == true){
                global.hand[2] = noone;
                scr_draw(1);
            }
            else if (start_y == 438 && played == true){
                global.hand[3] = noone;
                scr_draw(1);
            }
        }
        instance_destroy(card_selected);
        card_selected = noone;
    }
}
