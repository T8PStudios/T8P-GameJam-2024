var _xinput = keyboard_check(vk_right) - keyboard_check(vk_left);

var _yinput = keyboard_check(vk_down) - keyboard_check(vk_up);

move_and_collide(_xinput * character_speed, _yinput * character_speed, obj_wall);

