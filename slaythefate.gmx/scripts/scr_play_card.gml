///scr_play_card();

if (card_selected.played == false){
    if (point_distance(card_selected.x, card_selected.y, obj_enemy.x, obj_enemy.y) <= 50){
        //apply status or card ability
        global.player_health += 10;
        card_selected.played = true;
    } else{
        card_selected.x = card_selected.start_x;
        card_selected.y = card_selected.start_y;
        card_selected = noone;
    }
}
