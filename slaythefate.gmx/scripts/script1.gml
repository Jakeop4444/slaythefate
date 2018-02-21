///scr_draw(argument0);

var num = argument0;

for (i = 0; i<num; i++){
    if (ds_list_size(deck)>0){
        var card_draw = ds_list_find_value(deck, 0);
        if (hand[1] == noone){
            hand[1] = instance_create(155, 81, obj_card);
            hand[1].sprite_index = card_draw;
            with (hand[1]) {scr_assign();}
        }
        else if (hand[2] == noone){
            hand[2] = instance_create(155, 244, obj_card);
            hand[2].sprite_index = card_draw;
            with (hand[2]) {scr_assign();}
        }
        else if (hand[3] == noone){
            hand[3] = instance_create(155, 404, obj_card);
            hand[3].sprite_index = card_draw;
            with (hand[3]) {scr_assign();}
        }
        ds_list_delete(deck, 0);
    }
    else {break;}
}
