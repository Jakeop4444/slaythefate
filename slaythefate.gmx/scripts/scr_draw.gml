///scr_draw(argument0);

var num = argument0;

for (i = 0; i<num; i++){
    if (ds_list_size(global.deck)>0){
        var card_draw = ds_list_find_value(global.deck, 0);
        if (global.hand[1] == noone){
            global.hand[1] = instance_create(157, 91, obj_card);
            global.hand[1].sprite_index = card_draw;
            //with (global.hand[1]) {scr_assign();}
        }
        else if (global.hand[2] == noone){
            global.hand[2] = instance_create(157, 264, obj_card);
            global.hand[2].sprite_index = card_draw;
            //with (global.hand[2]) {scr_assign();}
        }
        else if (global.hand[3] == noone){
            global.hand[3] = instance_create(157, 438, obj_card);
            global.hand[3].sprite_index = card_draw;
            //with (global.hand[3]) {scr_assign();}
        }
        ds_list_delete(global.deck, 0);
    }
    else {break;}
}
