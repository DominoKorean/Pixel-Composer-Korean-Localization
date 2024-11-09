// Mouse click event for button object
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
    install_ko();
    sprite_index = spr_button_pushed;
    image_speed = 1; // Play animation at normal speed
}

// Animation end event (for the button object)
if (sprite_index == spr_button_pushed && image_index >= image_number - 1) {
    sprite_index = spr_button;
    image_index = 0; // Reset animation frame
}
