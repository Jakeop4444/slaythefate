///scr_generate_deck();

for (i = 1; i <= 6; i++){
    var random_card = irandom_range(1,2);
    
    if (random_card == 1) {ds_list_add(global.deck, spr_card1);}
    if (random_card == 2) {ds_list_add(global.deck, spr_card2);}
    
}
ds_list_shuffle(global.deck);
